title: Overwrite Local Files From remote repo
date: 2016-06-17 18:28:42
tags:
- git
- command
---

Branch 별 Sync 작업하다 꼬여서 이도저도 못하게 되었을때 
Remote Repo에서 Local로 Sync 맞춰 Overwrite해주는 
간단한 방법.

<pre>$git fetch --all
$git reset --hard origin/master
$git reset --hard origin/other_branch</pre>