배열과 문자열의 메소드 살펴보기
===


복습
---

* Array(배열, 어레이) - 여러 데이터를 담을 수 있는 자료구조입니다. 

* 자바스크립트에서 배열은 객체이므로 속성과 메소드를 가집니다.

* 배열과 문자열은 유사합니다.

* 배열은 mutable, 문자열은  immutable 특징이 있습니다.

* 속성 
    * `length`

* 메소드 
    * `push(), pop(), unshift(), shift()`



## 배열의 메소드 더 살펴보기

### concat()

concat: 배열 합치기, 기존의 변수가 변하지 않기 때문에 문자열도 가능

```

var a = [1,2,3,4,5];

a.concat([6,7,8]);

a;      //[1,2,3,4,5]

a2 = a.concat([6,7,8]);

a2;   //[1,2,3,4,5,6,7,8]

var s = "hello";

s.concat(" world");     // "hello world", 문자열  concat은 더하기랑 똑같다.

s ;     // "hello world"

```



### join()

배열을 문자열로 바꿀 때 사용합니다.
매개변수를 구분자로 합성합니다.

```

var a = [1,2,3,4,5];

a.join();   // "1,2,3,4,5"  구분자가 없을 때는 쉼표를 기준으로 문자열로 만듦

a.join('');  // "12345"  캐릭터를 기준으로 문자열을 만듦

```

### indexOf(),lastindexOf()

배열이나 문자열 안의 원소를 가지고 인덱스를 찾을 수 있음
```
var a = [1,2,3,4,5,10,20,3];
a.indexOf(2);  // 1
a.indexOf(1);  // 0
a.a.indexOf(10);    // 5
a.indexOf(65535);   // -1   값이 없으므로 -1을 반환  
a.indexOf(3);       // 2   앞에 3을 찾음
a.lastIndexOf(3);   // 7    뒤에서 부터 3을 찾음
```

`indexOf();`를 응용
```
if (a.indexOf(100) === -1) {
    console.log("100이 없네요.");   // 100이 없네요

}       
```

### slice()

`slice(startIndex, endIndex)` 
* 기존 배열을 잘라서 새로운 배열을 만듭니다. 
* 기존 배열은 _변하지 않습니다._ 
* startIndex 위치부터 endIndex 직전의 위치까지 자릅니다. 
* endindex의 원소는 포함되지 않습니다.
```
a = [1,2,3,4,5];
a.slice(1,3);   //      [2,3]
a;              //      [1,2,3,4,5]
```

### splice()
`splice(startIndex, numElement)`
* 배열을 startIndex 부터 numElement 개수만큼 잘라냅니다.
* 잘라낸 원소들은 _원본 배열에서 사라집니다._
* slice()와 splice()는 둘다 유용하므로 각각의 사용법을 잘 기억해 놓는게 좋습니다.

### String.split()
* 문자열을 문자의 배열로 나누고 싶을 때 사용하는 메소드입니다.
* `Array.join()`과  마찬가지로 매개변수를 구분자로 사용합니다.
```
var s = "hello, world a-b-co, ltd";
s.split("")
s.split(",");
s.split("-");
```
