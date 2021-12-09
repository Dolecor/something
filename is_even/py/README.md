```bash
$ py ./is_even.py 1  
time: 1.1936...
```

```bash
$ py ./is_even.py 2  
time: 1.3745...
```

В python операция остатка от деления % быстрее побитовой & для определения чётности числа. Это связано с внутренней структурой представения целых чисел в python ([stackoverflow answer](https://stackoverflow.com/questions/54047100/why-are-bitwise-operators-slower-than-multiplication-division-modulo/54047205#54047205), что бы это ни значило 😅).