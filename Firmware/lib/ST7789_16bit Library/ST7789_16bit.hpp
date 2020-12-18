#ifndef ST7789_H
#define ST7789_H

#include <Adafruit_GFX.h>
#ifdef ARDUINO_ARCH_SAMD
#include <Adafruit_ZeroDMA.h>
#endif
#include <Arduino.h>

#define TFT_HEIGHT 320
#define TFT_WIDTH 240

//Commands
#define CMD_SWRESET   0x0001
#define CMD_WAKEUP    0x0011
#define CMD_NORON     0x0013
#define CMD_MADCTL    0x0036
#define CMD_COLMOD    0x003A
#define CMD_INVON     0x0021
#define CMD_CMD2EN    0x00DF
#define CMD_PORCTRK   0x00B2
#define CMD_GCTRL     0x00B7
#define CMD_VCOMS     0x00BB
#define CMD_LCMCTRL   0x00C0
#define CMD_VDVVRHEN  0x00C2
#define CMD_VRHS      0x00C3
#define CMD_VDVS      0x00C4
#define CMD_FRCTRL2   0x00C6
#define CMD_PWCTRL1   0x00D0
#define CMD_PVGAMCTRL 0x00E0
#define CMD_NVGAMCTRL 0x00E1
#define CMD_DISPOFF   0x0028
#define CMD_DISPON    0x0029
#define CMD_X_ADDRESS 0x002A //RASET
#define CMD_Y_ADDRESS 0x002B //CASET
#define CMD_RAM_WRITE 0x002C

//Settings
#define CFG_MADCTL_MY  0x80
#define CFG_MADCTL_MX  0x40
#define CFG_MADCTL_MV  0x20
#define CFG_MADCTL_ML  0x10
#define CFG_MADCTL_RGB 0x00

// Color definitions
#define TFT_BLACK       0x0000
#define TFT_NAVY        0x000F
#define TFT_LIGHTBLUE   0x025F
#define TFT_DARKGREEN   0x03E0
#define TFT_DARKCYAN    0x03EF
#define TFT_MAROON      0x7800
#define TFT_PURPLE      0x780F
#define TFT_OLIVE       0x7BE0
#define TFT_LIGHTGREY   0xC618
#define TFT_DARKGREY    0x7BEF
#define TFT_BLUE        0x001F
#define TFT_GREEN       0x07E0
#define TFT_CYAN        0x07FF
#define TFT_RED         0xF800
#define TFT_MAGENTA     0xF81F
#define TFT_YELLOW      0xFFE0
#define TFT_WHITE       0xFFFF
#define TFT_ORANGE      0xFD20
#define TFT_GREENYELLOW 0xAFE5
#define TFT_PINK        0xF81F

// Plane definitions
#define TFT_BACKGROUND 0
#define TFT_FOREGROUND 1

class ST7789 : public Adafruit_GFX {
  public:
    #if defined(__SAMD21G18A__) || defined(__SAMD51__)
    /**
     * @param nReset      LCD reset pin, when ununsed, set to 255
     * @param nRead       LCD read pin, when unused, set to 255
     * @param nWrite      LCD write pin
     * @param nCS         LCD chip select pin
     * @param dc          LCD data/command pin
     * @param dataBus     LCD data pins, pass in the port the data bus is connected to
     * @param dataOffset  Offset of LCD D0 in relation to Port I/O 0
     * @param brightness  LCD backlight controller dim/mosfet gate pin, when unused, set to 255
     */
    ST7789(uint8_t nReset, uint8_t nRead, uint8_t nWrite, uint8_t nCS, uint8_t dc, PortGroup* dataBus, uint8_t dataOffset, uint8_t brightness = 255);
    #elif defined(__IMXRT1062__)
    /**
     * @param nReset      LCD reset pin, when ununsed, set to 255
     * @param nRead       LCD read pin, when unused, set to 255
     * @param nWrite      LCD write pin
     * @param nCS         LCD chip select pin
     * @param dc          LCD data/command pin
     * @param dataBus     LCD data pins, pass in array of pins
     * @param brightness  LCD backlight controller dim/mosfet gate pin, when unused, set to 255
     */
    ST7789(uint8_t nReset, uint8_t nRead, uint8_t nWrite, uint8_t nCS, uint8_t dc, uint8_t *data, uint8_t brightness = 255);
    #endif

    /**
     * @param dispOn Wether the display should be on immediately
     */
    void begin(bool dispOn);

    void drawPixel(int16_t x, int16_t y, uint16_t color) override;
    void fillScreen(uint16_t color) override;
	void fillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color) override;
	void drawFastHLine(int16_t x, int16_t y, int16_t w, uint16_t color) override;
	void drawFastVLine(int16_t x, int16_t y, int16_t h, uint16_t color) override;
	virtual void drawRGBBitmap(int16_t x, int16_t y, const uint16_t bitmap[], int16_t w, int16_t h);

    void setRotation(uint8_t rotation) override;
    static uint16_t color565(uint8_t r, uint8_t g, uint8_t b) { return ((r & 0xF8u) << 8u) | ((g & 0xFCu) << 3u) | (b >> 3u); }

    void setBrightness(uint32_t value) const;
    void setDisplayOn(bool on);

    __unused uint32_t readID(); //FIXME: makes the display unresponsive and makes it display garbage
  
  protected:
    void initGPIO();

    void setAddressWindow(uint16_t xStart, uint16_t xEnd, uint16_t yStart, uint16_t yEnd);

    void writeCommand(uint16_t cmd);
    void writeData(uint16_t data);

    void writeToBus(uint16_t data);

    uint16_t readBus();

    inline void RST_HIGH();
    inline void RST_LOW();
    inline void CS_HIGH();
    inline void CS_LOW();
    inline void DC_HIGH();
    inline void DC_LOW();
    inline void RD_HIGH();
    inline void RD_LOW();
    inline void WR_HIGH();
    inline void WR_LOW();

    uint8_t _colstart = 0;
    uint8_t _rowstart = 0;
    uint8_t _xstart = 0;
    uint8_t _ystart = 0;

    uint8_t ledCtrl; //Backlight PWM pin

    uint8_t nReset;
    uint8_t nRead;
    uint8_t nWrite;
    uint8_t nCS;
    uint8_t dc;
#if defined(__SAMD21G18A__) || defined(__SAMD51__)
    PortGroup* dataBus;
    uint8_t dataOffset;
#elif defined(__IMXRT1062__)
    uint8_t dataBus[16] = {};
#endif

#if defined(__SAMD21G18A__) || defined(__SAMD51__)
    volatile uint32_t* regNResetSet = nullptr;
    volatile uint32_t* regNResetReset = nullptr;
    uint32_t maskNReset = 0;
    volatile uint32_t* regNChipSelectSet = nullptr;
    volatile uint32_t* regNChipSelectReset = nullptr;
    uint32_t maskNChipSelect = 0;
    volatile uint32_t* regNWriteSet = nullptr;
    volatile uint32_t* regNWriteReset = nullptr;
    uint32_t maskNWrite = 0;
    volatile uint32_t* regNReadSet = nullptr;
    volatile uint32_t* regNReadReset = nullptr;
    uint32_t maskNRead = 0;
    volatile uint32_t* regDataCommandSet = nullptr;
    volatile uint32_t* regDataCommandReset = nullptr;
    uint32_t maskDataCommand = 0;
    volatile uint32_t* regDataDirSet = nullptr;
    volatile uint32_t* regDataDirReset = nullptr;
    volatile uint32_t* regDataSet = nullptr;
    volatile uint32_t* regDataReset = nullptr;
    volatile uint32_t* regDataRead = nullptr;
    uint32_t maskData = 0;
  #endif
};
/*
class ST7789_Buffered : public ST7789 {
  public:
    ST7789_Buffered(uint8_t nReset, uint8_t nRead, uint8_t nWrite, uint8_t nCS, uint8_t dc, PortGroup* dataBus, uint8_t brightness = 255);
    ~ST7789_Buffered();

    void drawPixel(int16_t x, int16_t y, uint16_t color);
    void fillScreen(uint16_t color);
    void fillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
    void drawFastHLine(int16_t x, int16_t y, int16_t w, uint16_t color);
    void drawFastVLine(int16_t x, int16_t y, int16_t h, uint16_t color);
    void drawRGBBitmap(int16_t x, int16_t y, const uint16_t bitmap[], int16_t w, int16_t h);

    void show();
  
  private:
    uint16_t* buffer;
};

class ST7789_BufferedOverlay : public ST7789 {
  public:
    ST7789_BufferedOverlay(uint8_t nReset, uint8_t nRead, uint8_t nWrite, uint8_t nCS, uint8_t dc, PortGroup* dataBus, uint8_t brightness = 255);
    ~ST7789_BufferedOverlay();

    void drawPixel(int16_t x, int16_t y, uint16_t color);
    void fillScreen(uint16_t color);
    void fillRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
    void drawFastHLine(int16_t x, int16_t y, int16_t w, uint16_t color);
    void drawFastVLine(int16_t x, int16_t y, int16_t h, uint16_t color);
    void drawRGBBitmap(int16_t x, int16_t y, const uint16_t bitmap[], int16_t w, int16_t h);

    void setPlane(uint8_t p) { plane = p; }
    void setShowForeground(bool active) { fgActive = active; }

    void show();

    uint16_t color4543(uint8_t r, uint8_t g, uint8_t b, uint8_t a) { return ((r & 0xF0) << 8) | ((g & 0xF8) << 4) | ((b & 0xF0) >> 1) | (a >> 5); }

  private:
    uint16_t** buffers;

    bool fgActive;
    uint8_t plane;
};
*/
#endif