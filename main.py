import machine
import time

# Specify the pin number connected to the LED
led_pin = 2  # Replace with your actual pin number

# Configure the pin as an output
led = machine.Pin(led_pin, machine.Pin.OUT)

# Blink the LED
while True:
    led.on()
    time.sleep(0.3)  # Wait for 1 second
    led.off()
    time.sleep(0.3)  # Wait for 1 second
