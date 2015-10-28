title: 'Install Node on The Raspberry Pi in 5minutes'
date: 2014-07-07 01:58:13
tags:
- nodejs
- raspberrypi
- bananapi
---
<p>Installing Node on a Raspberry PI used to be a whole lot of pain. Compiling an codebase that big on the Pi really taxes the system, plus the usual dependency challenges of native C code. Fortunately, the good chaps at  <a href="http://nodejs.org/">nodejs.org</a> have started automatically building Node for Linux arm Raspberry Pi.  This makes life so much easier. Now we can install node in less that five minutes.  Here’s how.</p>

<!-- more -->

<p>First, make sure you have the latest <a href="http://www.raspberrypi.org/downloads">raspbian</a> on your Pi. If you need to update it run.</p>

<pre>sudo apt-get upgrade; 
sudo apt-get update;</pre>

<h3>Node and NPM</h3>
<p>Now install Node itself</p>

<pre>wget http://nodejs.org/dist/v0.10.2/node-v0.10.2-linux-arm-pi.tar.gz
tar -xvzf node-v0.10.2-linux-arm-pi.tar.gz
node-v0.10.2-linux-arm-pi/bin/node --version
</pre>

<p>You should see:</p>

<pre>v0.10.2</pre>

<p>Now set the NODE_JS_HOME variable to the directory where you un-tarred Node, and add the bin dir to your PATH using whatever system you prefer (bash profile script, command line vars, etc);  In my .bash_profile I have:</p>

<pre>NODE_JS_HOME=/home/pi/node-v0.10.2-linux-arm-pi 
PATH=$PATH:$NODE_JS_HOME/bin </pre>

<p>Now you should be able to run node from any directory.  NPM, the node package manager, comes bundled with Node now, so you already have it:</p>

<pre>npm —version</pre>
<p>prints</p>
<pre>1.2.15</pre>

<h3>Native code</h3>

<p>If you are just working with pure javascript modules then you are done. If you need to use or develop native modules then you need a compiler and node’s native build tool, node-gyp.  The compilers should already be installed with Raspbian. Check using:</p>
<pre>gcc —version</pre>
<p>Install node-gyp with:</p>
<pre>npm install -g node-gyp</pre>

<p>Now any native module should be compilable.  </p>

<p>That’s it. Node in 5 minutes.</p>