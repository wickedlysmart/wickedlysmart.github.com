title: 'Raspberry Pi GPIO Pins Tutorial'
date: 2014-07-10 16:39:37
tags:
- raspberrypi
- gpio
- tutorial
---

The best way to execute this code is using a callback function. This is a function that is attached to a specific GPIO pin and run whenever that edge is detected. Let’s try one:
<br>
<pre>
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)

GPIO.setup(23, GPIO.IN, pull_up_down = GPIO.PUD_DOWN)

GPIO.setup(24, GPIO.IN, pull_up_down = GPIO.PUD_UP)

def printFunction(channel):

	print(“Button 1 pressed!”)

	print(“Note how the bouncetime affects the button press”)

GPIO.add_event_detect(23, GPIO.RISING, callback=printFunction, bouncetime=300)

while True:

	GPIO.wait_for_edge(24, GPIO.FALLING)

	print(“Button 2 Pressed”)

	GPIO.wait_for_edge(24, GPIO.RISING)

	print(“Button 2 Released”)

GPIO.cleanup()
</pre>

<!-- more -->
<br>
<p>원본글 : http://makezine.com/projects/tutorial-raspberry-pi-gpio-pins-and-python/</p>
