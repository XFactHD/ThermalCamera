#include <Arduino.h>

#include <SPI.h>
#include <Adafruit_MLX90640.h>
#include <ST7789_16bit.hpp>

#define INTERPOLATE

int mapFloatToInt(float x, float inMin, float inMax, int outMin, int outMax);
void calculateInterpolation();
void mapColors();
void sendToScreen();

//Color map
const uint16_t camColors[] = {
  0x480F,0x400F,0x400F,0x400F,0x4010,0x3810,0x3810,0x3810,0x3810,0x3010,
  0x3010,0x3010,0x2810,0x2810,0x2810,0x2810,0x2010,0x2010,0x2010,0x1810,
  0x1810,0x1811,0x1811,0x1011,0x1011,0x1011,0x0811,0x0811,0x0811,0x0011,
  0x0011,0x0011,0x0011,0x0011,0x0031,0x0031,0x0051,0x0072,0x0072,0x0092,
  0x00B2,0x00B2,0x00D2,0x00F2,0x00F2,0x0112,0x0132,0x0152,0x0152,0x0172,
  0x0192,0x0192,0x01B2,0x01D2,0x01F3,0x01F3,0x0213,0x0233,0x0253,0x0253,
  0x0273,0x0293,0x02B3,0x02D3,0x02D3,0x02F3,0x0313,0x0333,0x0333,0x0353,
  0x0373,0x0394,0x03B4,0x03D4,0x03D4,0x03F4,0x0414,0x0434,0x0454,0x0474,
  0x0474,0x0494,0x04B4,0x04D4,0x04F4,0x0514,0x0534,0x0534,0x0554,0x0554,
  0x0574,0x0574,0x0573,0x0573,0x0573,0x0572,0x0572,0x0572,0x0571,0x0591,
  0x0591,0x0590,0x0590,0x058F,0x058F,0x058F,0x058E,0x05AE,0x05AE,0x05AD,
  0x05AD,0x05AD,0x05AC,0x05AC,0x05AB,0x05CB,0x05CB,0x05CA,0x05CA,0x05CA,
  0x05C9,0x05C9,0x05C8,0x05E8,0x05E8,0x05E7,0x05E7,0x05E6,0x05E6,0x05E6,
  0x05E5,0x05E5,0x0604,0x0604,0x0604,0x0603,0x0603,0x0602,0x0602,0x0601,
  0x0621,0x0621,0x0620,0x0620,0x0620,0x0620,0x0E20,0x0E20,0x0E40,0x1640,
  0x1640,0x1E40,0x1E40,0x2640,0x2640,0x2E40,0x2E60,0x3660,0x3660,0x3E60,
  0x3E60,0x3E60,0x4660,0x4660,0x4E60,0x4E80,0x5680,0x5680,0x5E80,0x5E80,
  0x6680,0x6680,0x6E80,0x6EA0,0x76A0,0x76A0,0x7EA0,0x7EA0,0x86A0,0x86A0,
  0x8EA0,0x8EC0,0x96C0,0x96C0,0x9EC0,0x9EC0,0xA6C0,0xAEC0,0xAEC0,0xB6E0,
  0xB6E0,0xBEE0,0xBEE0,0xC6E0,0xC6E0,0xCEE0,0xCEE0,0xD6E0,0xD700,0xDF00,
  0xDEE0,0xDEC0,0xDEA0,0xDE80,0xDE80,0xE660,0xE640,0xE620,0xE600,0xE5E0,
  0xE5C0,0xE5A0,0xE580,0xE560,0xE540,0xE520,0xE500,0xE4E0,0xE4C0,0xE4A0,
  0xE480,0xE460,0xEC40,0xEC20,0xEC00,0xEBE0,0xEBC0,0xEBA0,0xEB80,0xEB60,
  0xEB40,0xEB20,0xEB00,0xEAE0,0xEAC0,0xEAA0,0xEA80,0xEA60,0xEA40,0xF220,
  0xF200,0xF1E0,0xF1C0,0xF1A0,0xF180,0xF160,0xF140,0xF100,0xF0E0,0xF0C0,
  0xF0A0,0xF080,0xF060,0xF040,0xF020,0xF800
};

Adafruit_MLX90640 mlx;

ST7789 tft(0, 0, 0, 0, 0, &PORT->Group[PORTB], 0); //TODO: set pins correctly

float mlxFrame[32*24]; //Frame buffer for data from the sensor
float interpFrame[64*48]; //Frame buffer with interpolated data
uint16_t displayFrame[64*48]; //Frame buffer for display

void setup() {
  //Disable QSPI on PB10 and PB11 in case the bootloader enabled it
  PORT->Group[PORTB].PINCFG[10].bit.PMUXEN = 0;
  PORT->Group[PORTB].PINCFG[11].bit.PMUXEN = 0;

  tft.begin(true);
  tft.setRotation(3);
  //TODO: draw empty temp color bar on right

  if(!mlx.begin()) {
    //TODO: print error to screen
    while(1);
  }

  //Configure sensor
  mlx.setMode(MLX90640_CHESS);
  mlx.setResolution(MLX90640_ADC_18BIT);
  mlx.setRefreshRate(MLX90640_8_HZ);
  Wire.setClock(1000000);
}

void loop() {
  if(mlx.getFrame(mlxFrame) != 0) { /*TODO: show error*/ }

  calculateInterpolation();
  mapColors();
  sendToScreen();
}

void calculateInterpolation() {
  #ifdef INTERPOLATE
  //Copy upper left corner and interpolate lower left and upper right corners of the 4 pixel clusters
  for(int x = 0; x < 64; x++) {
    for(int y = 0; y < 48; y++) {
      int mlxIdx = ((y / 2) * 32) + (x / 2);
      int dispIdx = (y * 64) + x;

      if(x % 2 == 0 && y % 2 == 0) {
        interpFrame[dispIdx] = mlxFrame[mlxIdx];
      }
      else if(x % 2 == 1 && y % 2 == 0) {
        interpFrame[dispIdx] = x == 63 ? mlxFrame[mlxIdx] : ((mlxFrame[mlxIdx] + mlxFrame[mlxIdx + 1]) / 2.0F);
      }
      else if(x % 2 == 0 && y % 2 == 1) {
        interpFrame[dispIdx] = y == 47 ? mlxFrame[mlxIdx] : ((mlxFrame[mlxIdx] + mlxFrame[mlxIdx + 32]) / 2.0F);
      }
    }
  }

  //Interpolate lower right corner of the 4 pixel clusters
  for(int x = 1; x < 64; x += 2) {
    for(int y = 1; y < 48; y += 2) {
      int mlxIdx = ((y / 2) * 32) + (x / 2);
      int dispIdx = (y * 64) + x;

      if(x == 63 && y == 47) { interpFrame[dispIdx] = mlxFrame[mlxIdx]; }
      else {
        float left = interpFrame[dispIdx - 1];
        float right = interpFrame[dispIdx + 1];
        float above = interpFrame[dispIdx - 64];
        float below = interpFrame[dispIdx + 64];
        interpFrame[dispIdx] = (left + right + above + below) / 4.0F;
      }
    }
  }
  #else
  for(int x = 0; x < 64; x++) {
    for(int y = 0; y < 48; y++) {
      int mlxIdx = ((y / 2) * 32) + (x / 2);
      int dispIdx = (y * 64) + x;

      interpFrame[dispIdx] = mlxFrame[mlxIdx];
    }
  }
  #endif
}

void mapColors() {
  float minTemp = 300.0;
  float maxTemp = 0.0;

  //Find min and max temps
  for(int x = 0; x < 64; x++) {
    for(int y = 0; y < 48; y++) {
      int idx = (y * 64) + x;

      if(interpFrame[idx] < minTemp)  { minTemp = interpFrame[idx]; }
      if(interpFrame[idx] > maxTemp)  { maxTemp = interpFrame[idx]; }
    }
  }

  //Map temperature values to colors
  for(int x = 0; x < 64; x++) {
    for(int y = 0; y < 48; y++) {
      int idx = (y * 64) + x;

      float temp = interpFrame[idx];
      displayFrame[idx] = mapFloatToInt(temp, minTemp, maxTemp, 0, 255);
    }
  }
}

void sendToScreen() {
  const int width = 256;
  const int height = 192;
  const int multX = width / 64;
  const int multY = height / 48;

  for(int x = 0; x < width; x++) {
    for(int y = 0; y < height; y++) {
      int dispIdx = ((y / multY) * width) + (x / multX);
      
      //TODO: implement with lower level access (setting address window once, etc.)
      tft.drawPixel(x, y, displayFrame[dispIdx]);
    }
  }
}

int mapFloatToInt(float x, float inMin, float inMax, int outMin, int outMax) {
  return (int)((x - inMin) * (float)(outMax - outMin) / (inMax - inMin) + (float)outMin);
}