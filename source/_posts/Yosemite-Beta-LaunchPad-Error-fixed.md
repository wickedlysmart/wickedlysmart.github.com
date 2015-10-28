title: 'Yosemite Beta LaunchPad Error fixed'
date: 2014-08-04 02:51:56
tags:
- osx
- yosemite
- mac
---
<p>요세미티 Beta1 설치때 다운로드 안되시는 분들은 일본 vpn으로 변경 후 해결한 엔드유저분들이 많다. 그런데 문제는 이후 다운로드 받으면서 문제가 된 LaunchPad에 있는 요세미티 아이콘이 삭제가 안되는 문제가 있다.</p>
<p>열심히 구글링과 각종 커뮤니티를 섭렵한 끝에 아주 간단히 Fix 할수 있었다. 그 해결책은 다음과 같다.</p>
<!-- more -->
<p>First, Delete ~/Library/Application Support/Dock/xxx.db</p>
<p>Second, Reboot (Automatically Created new xxx.db)</p>
<p>Then, execute the this command on the terminal.<pre>defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock</pre></p>
<p>이렇게 하면 대부분 문제가 해결된다.</p>
