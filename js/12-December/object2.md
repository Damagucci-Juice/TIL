객체의 생성자 살펴보기
===
## 복습
객체는 유지 보수를 쉽게 하기 위해서 값들을 묶어 놓은 것으로, 속성과 메소드를 가집니다.
```
var p1= {"name": "damagucci",
"eat": function(food) {};
};
```

## 생성자로 여러 객체를 쉽게 만들기
비슷한 객체를 여러 개 만들 때는 객체를 생성하는 함수를 이용합니다. 이 때 객체를 생성하는 함수를 생성자라고 합니다. 생성자는 관례상 대문자로 시작하는 경우가 많습니다.
```
// 휴먼 클래스를 정의하는 함수 = 생성자
var Human = function(name, hp, power) {
    this.name = name;
    this.hp = hp;
    this.power = power;
    this.attack = function(target) {
        target.hp -= this.power;
    };
    this.show = function() {
        console.log("%s %d %d",
        this.name, this.hp, this.power);
    };
};
```

## 생성자를 이용해서 객체 만들기
생성자를 이용해서 객체를 만들 때는 `new` 키워드를 사용합니다.
```
var m1 = new Human("Damagucci", 100, 10);
var m2 = new Human("Juice", 110, 5);
m1.attack(m2);
m2.attack(m1);
m1.show();
m2.show();
```

* `Human`은 Class  <br>
* `m1,m2`는 Instance이면서 참조 변수

## 생성자를 사용하는 이유
* 객체를 하나만 만들 때는 간단히 json 표기법으로 만듭니다.
* 여러 객체를 만들고 싶을 때는 생성자를 통해서 만듭니다.
## 예제
* `Food(name, enerht)` 생성자를 만들어 봅시다.
* `eat(food)` 메소드를 `Human()` 생성자 안에 추가해 봅시다.
* 도너츠 객체를 생성해서 휴먼 객체에게 먹여 봅시다.

