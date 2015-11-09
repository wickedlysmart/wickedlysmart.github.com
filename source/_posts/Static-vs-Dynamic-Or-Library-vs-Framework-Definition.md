title: Static vs Dynamic Or Library vs Framework Definition
date: 2015-11-10 03:29:04
tags:
- iOS
- Xcode

---

개발 프로젝트가 커지거나 3rd Party Framework 사용이 커지게 되면 언제나 개발자들의 머리속은 인터스텔라로 빠지게 된다. 이런 현상의 본질은 역시 정확한 Definition 을 회고해봄으로 해소할수 있다. 

<!-- more -->

> First, some general definitions (specific to iOS):
>
> * Static library - a unit of code linked at compile time, which does not change. However, iOS static libraries are not allowed to contain images/assets (only code). You can get around this challenge by using a media bundle though.
>
>
> * Dynamic library - a unit of code and/or assets linked at runtime that may change.However, only Apple is allowed to create dynamic libraries for iOS . You're not allowed to create these, as this will get your app rejected. (See this other SO post for confirmation and reasoning on such).
>
>
> * Software Framework - a compiled set of code that accomplishes a task... hence, you can actually have a static framework or a dynamic framework, which are typically just the compiled versions of the above.