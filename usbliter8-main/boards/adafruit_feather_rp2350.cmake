# Use the exposed header pins; GPIO12/13 are on the HSTX connector.
add_compile_definitions(
    BOARD_NAME="Adafruit Feather RP2350 HSTX"
    PIO_USB_DP_PIN_DEFAULT=24
    LED_NEOPIXEL=1
)
