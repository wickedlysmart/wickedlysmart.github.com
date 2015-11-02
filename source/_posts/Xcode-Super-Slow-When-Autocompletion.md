title: Xcode Super Slow When Autocompletion
date: 2015-11-03 05:52:21
tags:
- Xcode
- Swift
- iOS
---

Xcode의 오토컴프리션이 현저하게 느리다면? 
----------

Xcode가 OBJC에서는 빠르게 제공되었던 오토컴프리션 기능이 Swift를 준비하면서 현저하게 느렸다. 

Swift 2.0이 정식으로 나오긴했지만 그들도 확립하는 시기가 아닌 발전하는 시기이기때문에 완벽하진 않아보인다. 
이런 현상은 오토컴프리션(Autocompletion)기능을 아이폰 자동수정과 비슷하게 lazy로 가져가게 한것이 원인이 아닐까 생각해본다. 

타이핑만 치려고 하면 바람개비가 돈다면 완벽한 해결책은 아니지만 아래와 같이 시도 해보자. 

일단 `~/.bash_profile` 에 아래와 같이 alias 설정을 추가한다. 
<!-- more --> 

>alias xcodeclean="rm -frd ~/Library/Developer/Xcode/DerivedData/* && rm -frd ~/Library/>Caches/com.apple.dt.Xcode/*"


다음 `xcodeclean`을 실행한 후 Xcode를 다시 실행해보자. 

한결 가벼워진 Xcode를 만날수 있다. 

( 이것도 해결이 안된다 하시는 분은 Suggest completions while typing 옵션을 **OFF** 하고 사용하고 싶을때 마다 `CTRL space`또는 `ESC`로 일단 사용하는 방법도 있다. )