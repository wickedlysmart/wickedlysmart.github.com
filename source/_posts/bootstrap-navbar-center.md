title: 'bootstrap navbar center'
date: 2014-07-16 15:40:50
tags:
- bootstrap
- css
- center
- navbar 
---

bootstrap css navbar 중앙정렬 하기. 

<pre>
.navbar .nav,
.navbar .nav > li {
 float:none;
 display:inline-block;
 *display:inline; /* ie7 fix */
 *zoom:1; /* hasLayout ie7 trigger */
 vertical-align: top;
}

.navbar-inner {
 text-align:center;
}
</pre>

중앙정렬 안먹을때 유용함.
