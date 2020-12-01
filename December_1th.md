Tue, December 1
===
코드 스쿼드의 호눅스님의 [인프런 강의][1]를 필기한 노트입니다. 

강의의 퀄리티가 너무 좋습니다. 

기회가 되면 [코드스쿼드][2]에도 참석하고 싶습니다. 여러분도 도전해보세요!

---

# `break` and `continue`

### Professor's Coment
>__break는 반복문을 중간에 빠져나갈 떄 사용합니다.__ 무한 루프와 함께 많이 사용합니다.
```
var str;
while (true) {
    str = prompt("아무거나 입력하세요");
    document.write(str + "<br>");
    if ( str == "q") {
        break;
    }
}
document.write("Bye~");
```
아래 코드의 실행결과를 예측해 보세요.
```
for (var i = 0; i < 10; i++){
    if (i === 5){
        break;
    }
    console.log(i);
}
```
__`continue`는 반복문의 처음으로 돌아갑니다.__
* `while` : 조건식(i < 10)으로 이동
* `for` : 증감식(i++)으로 이동
```
for (var i = 0; i < 10; i ++){
    if (i === 5) {
        continue;
    }
    console.log(i);
}
```
---
# 이중 루프
구구단 2~3단을 코딩할 때 이중루프를 사용해서 그 뒤에 실습들이 좀 싱거웠다. 이후에 객체에서 맛 볼 고생에 대비한 쉬운 파트였다고 생각하련다.
### Professor's Coment
>반복문 안에 반복문이 있는 걸 이중 루프라고 합니다. 종종 사용합니다. 3중, 4중도 가능하지만 잘 사용하지 않습니다.
```
for (var i = 0; i < 2; i++){
    for (var j = 0; j < 3; j++){
        console.log(i + "," +j);
    }
}
```
(생각해 보기) 이중 루프 중간에 한꺼번에 빠져나갈 수 있을까요? 아래 코드의 결과는?
```
for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 5; j++) {
        console.log("i= " + i+ ", j= " + j);
        if (j === 2) {
            break;
        }
    }
}
```
> i= 0, j= 0</br>
  i= 0, j= 1</br>
  i= 0, j= 2</br>
  i= 1, j= 0</br>
  i= 1, j= 1</br>
  i= 1, j= 2</br>
  i= 2, j= 0</br>
  i= 2, j= 1</br>
  i= 2, j= 2</br>   
  j는 2일 때 `break;`가 호출되고, 결과값은 j가 3이상인 로그가 찍히지 않는다.

 
---
# 배열 (Array)
python 문법 공부를 할 때 어려웠던 부분이다. 이번에는 지난 번의 시행착오가 배경지식이되어 배열까지는 어렵지 않게 이해하였다. 

### Professor's Coment
> 자바스크립트에서 가장 많이 사용하는 **자료구조**의 하나로 - 주로 같은 종류의 값 여러 개를 묶어서 저장하고 관리하기 위해 사용합니다. 참고로 자바스크립트의 배열은 객체입니다. 객체에 대해서는 뒤에서 다시 배웁니다.
<https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array>

## 배열 만들기1
```
var scores = [50, 60, 70];
console.log(scores);    // [50, 60, 70]
console.log(scores.length); // 3
```
`scores.length`에서 `length` 부분이 변수의 속성(?)이다. 

## 인덱스를 이용해서 배열의 원소 읽기
```
scores[0];      // 50
socores[3];     // 'undifined'
```

## 배열에 값 쓰기
```
scores[0] = 100;
scores[9] = 50;
```

## 배열의 타입 알아보기
```
typeof scores    // object
typeof scores[0] // string
```
## 배열 만들기 2
```
var a = [];
a[0] = 2;
a[1] = 4;   // a === [2,4];
```
## 배열의 길이 구하기
```
scores.length;
```
## 배열의 마지막 원소를 읽어오려면?
```
scores[scores.length - 1];  // 마지막 원소를 가져온다. (?)원소는 아톰(?)
scores[scores.length - 2]; // 끝에서 두번째 원소를 가져온다.
```
## 문자열과 배열
* 문자열과 배열은 비슷한 성질을 많이 가지고 있습니다.
* 문자열 : Immutable
* 배열 : Mutable
* 배열의 속성(property, attribution)과 메소드를 문자열에도 테스트 해보세요.

## 배열의 메소드들 1
* push(), pop()
- * `push(value) : 배열의 뒤 쪽에 새로운 원소를 삽입합니다.
- - `pop()`:배열의 마지막 원소를 빼서 변수에 넣어 줍니다. 이 때 변수의 길이는 1 감소합니다.
- - 스택(?)처럼 동작하는데 사용합니다.
- - 스택에 대해 각자 검색해보세요.
```
var a = [10, 20, 30];
a.push(40)  // push the last argumnet.

var x = a.pop(); // 
```

* shift(), unshift()
* * `push,pop`과 반대로 동작합니다.
* * `unshift(v)`: 배열의 맨 앞에 새로운 값을 추가합니다.
* * `shift()`: 배열의 앞에서 값을 빼서 변수에 넣어 줍니다.

---
# 감상
책을 타이핑하며 공부하신다는 [이종립][3]님의 공부법에 감명받아 시도해보았습니다. 시간이 많이 소요되지만, 블로그 글 쓰기 연습, md 파일 작성 연습이라 생각하니 성취감이 큽니다. 

[1]:https://www.inflearn.com/course/javascript-%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8-codesquad-masters_lv
[2]:https://codesquad.kr/page/masters/be.html
[3]:https://johngrib.github.io/wiki/my-study-method/#%EC%B1%85%EC%9C%BC%EB%A1%9C-%EC%96%B4%EB%96%BB%EA%B2%8C-%EA%B3%B5%EB%B6%80%ED%95%98%EB%82%98