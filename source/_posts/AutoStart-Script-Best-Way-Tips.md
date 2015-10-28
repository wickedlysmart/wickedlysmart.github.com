title: 'AutoStart Script Best-Simple Tips'
date: 2014-07-10 17:04:06
tags:
- raspberrypi
- bananapi
- script
- autostart
- /etc/rc.local
---
Everything in /etc/rc.local runs as the root user.

Also, you can group commands together using ().

The following should work in /etc/rc.local
<br>
<pre>(sleep 10;python scriptname.py)&
</pre>

