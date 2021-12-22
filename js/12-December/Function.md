함수의 기초
===

함수의 기본에 대해서 정리합니다. 
코드 스쿼드의 호눅스님의 [인프런 강의][1]를 필기한 노트입니다. 강의의 퀄리티가 너무 좋습니다. 기회가 되면 [코드스쿼드][2]에도 참석하고 싶습니다. 여러분도 도전해보세요!

## 함수란
수학의 함수와 상당히 유사하다. 

### 형태
**"매개변수 - 처리 - 리턴값"**

```
f(x) = 2x + 3
f(2) = 7 
f(3) = 9

var foo = function(x) {
    return 2 * x + 3;
}

var y = foo(2);
y = foo(3);
```

## 함수 만들기
매개 변수도 없고, 리턴값도 없는 가장 단순한 형태의 함수를 만들어 봅시다. **출력**과 **리턴**은 전혀 다르다는 걸 기억하세요.
```
var foo = function() {
    console.log("I am function);
}
```
## 함수 호출
함수를 사용하는 걸 함수 호출(call)이라고 합니다. **함수 이름 + 괄호**가 필요합니다.
```
foo();
```
## 매개변수가 있는 함수 정의하기
```
var foo2 = function(name) {
    console.log("hello " + name);
}
```
## 매개변수가 있는 함수 사용해 보기
```
foo2("damagucci-juice");
```
## 예제
매개변수를 두 개 사용하는 다음 함수를 구현하고 실행해 봅시다. 어떤 방식으로 동작하는지 스스로 생각해보세요.
```
var repeat = function(text, num) {
    //code here
};

repeat("hello", 5);
```

[1]:https://www.inflearn.com/course/javascript-%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8-codesquad-masters_lv
[2]:https://codesquad.kr/page/masters/be.html

---
함수와 리턴 값
===
## 리턴 값이 있는  함수 정의하기
리턴 값이 있을 경우 함수를 호출해서 변수에 값을 넣을 수 있습니다.
```
var five = function() {
    return 5;
}

var n = five();
console.log(n);
```

## 리턴이 없는 함수를 변수에 할당하면?
```
var foo = function() {
    console.log(5);
}
var n = foo();
console.log(n);
```
## 아무 값도 없는 리턴 사용하기
`return`으로 함수를 종료하는데 사용할 수 있다.
```
var test1 = function(text) {
    if ( text === "exti") {
        return;
    }
}
console.log("보이나요?");
```
## 리턴에 여러 변수를 반환하면?
```
var foo = function () {
    var kim = 1;
    var jang = 2;
    var park = 3;
    return kim, jang, park;
};
var a = foo();
console.log(a);  // 3
```
## 함수를 사용하면
* 가독성이 좋아짐
* 유지보수를 잘 하게 됨

## 함수를 어떻게 만들까?
* 매개 변수와 리턴을 적극적으로 활용하자.
* 줄 수가 지나치게 길어지면 함수로 빼자.(10줄 정도)
* 인덴트가 지나치게 깊어져도 함수로 빼자.
* 함수는 반드시 한 가지 일만 하도록 하자.

## (Option) 2 중 루프를 한 번에 빠져 나가기

* `break;` 명령은 한 번에 한 루프만 빠져나갑니다.
    * 함수의 `return`을 이용하면 2중 루프를 한 번에 종료할 수 있습니다.