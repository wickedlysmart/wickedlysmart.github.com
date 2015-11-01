title: NSNotification
date: 2015-11-02 02:40:47
tags:
- iOS
- Swift

---

`NSNotificationCenter` 를 통해 추가하고 삭제하는 방식에는 두 가지 방식이 있다. 

- 첫번째, 전통적인 방식. 

> The traditional way to add an observer is –addObserver:selector:name:object:, in which an object (usually self) adds itself to have the specified selector performed when a matching notification is posted.

<!-- more -->

- 두번째, 모던 block-based API 방식. 

>The modern, block-based API for adding notification observers is –addObserverForName:object:queue:usingBlock:. Instead of registering an existing object as an observer for a notification, this method creates its own anonymous object to be the observer, which performs a block on the specified queue (or the calling thread, if nil) when a matching notification is posted. Unlike its similarly named @selector-based counterpart, this method actually returns the constructed observer object, which is necessary for unregistering the observer, as discussed in the next section.

여기에서 가장 키 포인트는 
>전통적인 방식에서는 노티를 받을 Object를 이미 있는 Object를 지정해서 사용하며 후자의 방식에서는 Block(Closure)를 실행할 익명(Anonymous)의 Object를 만들어서 사용한다.

는 것임. 

***
[원문][1] 
[1]: http://nshipster.com/nsnotification-and-nsnotificationcenter/
