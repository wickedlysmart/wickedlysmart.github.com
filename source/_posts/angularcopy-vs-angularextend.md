title: 'angular.copy vs angular.extend'
date: 2014-07-11 16:59:29
tags:
- angular

---
<code>angular.copy</code> and <code>angular.extend</code> 차이점.

<!-- more -->
<code>angular.copy</code> provides a deep copy:
<pre>
var src = {foo: "bar", baz: {}};
var dst = angular.copy(src);
console.log(dst.baz === src.baz); 
// "false", it's a deep copy, 
// they point to different objects.
</pre>	
<br>
<code>angular.extend</code> provides a shallow copy:

<pre>
var src = {foo: "bar", baz: {}};
var dst = {};
whatever.extend(dst, src);
console.log(dst.foo);             // "bar"
console.log(dst.baz === src.baz); 
// "true", it's a shallow copy, both
// point to same object	
</pre>

