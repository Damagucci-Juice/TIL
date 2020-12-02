객체의 기초
===
객체란 무엇인가?
---
* 현실의 물체에 대응되는 개념
* 객체를 사용하면 변수와 함수를 함께 관리
* 객체는 속성과 메소드를 가집니다.
## 객체 만들기
```
p1 = {};
```
## 속성
객체에 속한 변수
```
p1.name = "Damagucci-Juice";
console.log(p1.name);
```
## 메소드
객체에 속한 함수
```
p1.eat = function(food) {       
    console.log(this.name + " ate delicious " + food + "...");
};

p1.eat("Beef");     
```
* `food` === parameter
* `Beef` === arguement

## 메소드 대신에 일반 함수를 썻다면?
```
eat(p1, "Beef");
```
## 객체지향 프로그래밍
* 유지보수가 쉬워진다
* 가독성이 높아진다.
* 대형 프로그램을 짜기 쉬워진다.
    * 객체와 객체가 협력해서 일을 한다.
    * 객체는 일에 책임을 진다.
    * 객체는 객체에 메시지를 보낸다.
    * 객체는 자율적으로 일을 한다.
## this 키워드
**메소드 안에서 사용시 함수를 소유한 객체를 가르킨다.**
```
var p2 = {};
p2.name = "crong";
p2.weight = 80;
p2.say = function(word) {
    console.log(this.name + " says, " + word);
};
```
## 객체 만들기 2
JSON 표기법을 이용해서 객체를 만들 수도 있습니다. 생성자 함수를 이용한느 방법도 있지만 다음에 다루겠습니다.
```
var m1 = {
  "name": "Damagucci-Juice",
  "hp": 100,
  "power": 10,
  "attack": function(target) {
      target.hp -= this.power;
  }
};
m1.attack(m1);
m1;

var c1 = {
    type: "Coffee",
    energy: 10
};
```