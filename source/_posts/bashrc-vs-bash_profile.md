title: 'bashrc vs bash_profile'
date: 2014-07-06 19:02:11
tags:
- unix_command
- bashrc
- bash_profile
- shell
---

~/.bashrc 와 ~/.bash_profile 의 명료한 차이점 정리.

{% blockquote stackoverflow - http://stackoverflow.com/questions/415403/whats-the-difference-between-bashrc-bash-profile-and-environment %}
/bin/bash
       The bash executable
/etc/profile
       The systemwide initialization file, executed for login shells
~/.bash_profile
       The personal initialization file, executed for login shells
~/.bashrc
       The individual per-interactive-shell startup file
~/.bash_logout
       The individual login shell cleanup file, executed when a login shell exits
~/.inputrc
       Individual readline initialization file
{% endblockquote %}

