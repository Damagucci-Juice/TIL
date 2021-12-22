Prototype
===
난이도가 꽤 있는 강좌이므로 다음에 다시 한번 들어봅시다. 
* [MDN 참고 링크][1]
* [객체 지향 자바스크립트의 원리][2]

## prototype
* 생성자로 만든 객체는 프로토타입이라는 속성을 가집니다.
* 자바스크립트의 객체 지향 프로그래밍을 하기 위해서는 프로토타입을 잘 이해해야 합니다.
* 일단 우리는 프로토 타입을 이용해서 메소드를 생성하려 합니다.
* 메모리 절약, 객체의 메소드 생성을 효율적으로 할 수 있습니다.
```
function Human (name, hp, mp, power) {
    this.name = name;   // m1.name = name;
    this.hp = hp;
    this.mp = mp;
    this.power = power;
}

Human.prototype.attack = function (target) {
    target.hp -= this.power;
};
```

## 배열과 객체
객체의 속성값이 배열이 될 수 있습니다. 배열 안에 값들이 객체가 될 수 있습니다.
```
var m1 = {'no': 1, 'scores': [100,99]};
var m2 = {'no': 2, 'scores': [100,99]};
var arr1 = [m1, m2];
```

## 배열, 객체와 참조변수
* 객체를 변수에 할당하면 그 변수는 참조 변수가 됩니다. 
* 배열도 객체이므로 배열을 변수에 할당하면 역시 참조 변수가 됩니다. 
* **함수 호출시 참조 변수를 매개 변수로 전달하면 함수 내부에서 변경한 값이 외부에서도 변경된다는 것** 꼭 기억!!

[1]: https://developer.mozilla.org/ko/docs/Web/JavaScript/Introduction_to_Object-Oriented_JavaScript
[2]: http://www.yes24.com/Product/Goods/16886051?Acode=101