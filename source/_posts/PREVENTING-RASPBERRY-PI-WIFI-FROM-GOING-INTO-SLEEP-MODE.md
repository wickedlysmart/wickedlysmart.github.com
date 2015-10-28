title: 'PREVENTING RASPBERRY PI WIFI FROM GOING INTO SLEEP MODE'
date: 2014-07-20 19:48:30
tags:
- raspberrypi
- bananapi
- wifi
- sleep
---
<div class="entry-content">
<div>This is what you need to do:</div>
<div><pre>sudo nano /etc/modprobe.d/8192cu.conf</pre></div>
<div>Add the following:</div>
<div><pre># Disable power management<br>
options 8192cu rtw_power_mgnt=0</pre></div>
<!-- more -->
<p>I keep <a href="http://electronut.in/starting-raspberry-pi-wifi-ssh-and-gpio/" title="Starting Raspberry Pi: WiFi, ssh and GPIO">logged into my Raspberry Pi from my Mac</a>. The Pi is connected to my network using a USB WiFi adapter. But when I leave the login idle for a while, I find it to be (a) frozen and (b) I cannot login via a new ssh session – in fact, I can’t even ping the Pi anymore. </p>
<p>I found the solution for problem (b) above <a href="http://raspberrypi.stackexchange.com/questions/1384/how-do-i-disable-suspend-mode/4518#4518">in a StackOverflow post</a>. </p>
</div>