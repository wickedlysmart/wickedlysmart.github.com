title: 'difference between /etc/rc.local and /etc/init.d/rc.local'
date: 2014-07-11 17:15:36
tags:
- raspberrypi
- bananapi
---

<code>/etc/init.d/rc.local</code> : 
makes it to start as a level <code>"service"</code> whereas, 
<br>
<code>/etc/rc.local</code>
would simply launch that <code>script</code> at boot time.