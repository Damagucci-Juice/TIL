DOM을 이용해 html 객체 추가하기
===
```
var el = document.getElementById('test');
var menu = document.createElement('ul');
menu.id = 'menupan';

var item1 = document.createElement('li');
item1.id = 'menu1';
item1.innerHTML = "설렁탕";

var item2= document.createElement('li');
item2.id = 'menu2';
item2.innerHTML = "추어탕";

menu.appendChild(item1);
menu.appendChild(item2);

el.appendChild(menu);
```

## input과 button 샘플
```
<input type='text' id='input1'><button id='btn1' onclick='read()'>click</button>
<script>
    var read = function() {
        var input = document.getElementById('Input1');
        console.log(input.value);'
    };
</script>
```

## 프로그래밍 연습
> DOM을 이용해서 JS로 버튼을 추가해 봅시다. 이번장하고 전 장은 반드시 연습해야하는 부분입니다.