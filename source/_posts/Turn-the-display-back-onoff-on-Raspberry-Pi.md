title: 'Turn the display back on/off on Raspberry Pi'
date: 2014-07-10 03:02:33
tags:
- raspberrypi
- bananapi
- display
---
<div class="row-fluid build-text">
Start by getting access to the GPIO by making a device link
<pre>sudo sh -c  "echo 252 &gt; /sys/class/gpio/export"
ls -l /sys/class/gpio</pre>

Then turn the display back on with<br><pre>sudo sh -c  "echo '1' &gt; /sys/class/gpio/gpio252/value"</pre>
or back off<br><pre>sudo sh -c  "echo '0' &gt; /sys/class/gpio/gpio252/value"
</pre>

<!-- more -->
Once you verify that you see GPIO #252, then you can set it to an 
output, this will turn off the display since it will output 0 by default<br><pre>bash
sudo sh -c  "echo 'out' &gt; /sys/class/gpio/gpio252/direction"</pre> 
    </div>