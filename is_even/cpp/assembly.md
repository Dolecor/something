```bash
g++ -O0 -S main.cpp  # создание кода ассемблера
```

```bash
$ g++ -v  
gcc version 8.1.0 (x86_64-posix-seh-rev0, Built by MinGW-W64 project)
```

Генерируемый компилятором код для этих функций идентичен:

# gcc `-O0`

* isEven1:

	```
	_Z7isEven1i:
	.LFB1573:
		pushq	%rbp
		.seh_pushreg	%rbp
		movq	%rsp, %rbp
		.seh_setframe	%rbp, 0
		.seh_endprologue
		movl	%ecx, 16(%rbp)
		movl	16(%rbp), %eax
		andl	$1, %eax
		testl	%eax, %eax
		sete	%al
		popq	%rbp
		ret
		.seh_endproc
	```

* isEven2:

	```
	_Z7isEven2i:
	.LFB1574:
		pushq	%rbp
		.seh_pushreg	%rbp
		movq	%rsp, %rbp
		.seh_setframe	%rbp, 0
		.seh_endprologue
		movl	%ecx, 16(%rbp)
		movl	16(%rbp), %eax
		andl	$1, %eax
		testl	%eax, %eax
		sete	%al
		popq	%rbp
		ret
		.seh_endproc
	```

# gcc `-O1`

* isEven1:

	```
	_Z7isEven1i:
	.LFB1594:
		.seh_endprologue
		movl	%ecx, %eax
		xorl	$1, %eax
		andl	$1, %eax
		ret
		.seh_endproc
	```

* isEven2:

	```
	_Z7isEven2i:
	.LFB1595:
		.seh_endprologue
		movl	%ecx, %eax
		xorl	$1, %eax
		andl	$1, %eax
		ret
		.seh_endproc
	```

# gcc `-O2` and gcc `-O3`

* isEven1:

	```
	_Z7isEven1i:
	.LFB1594:
		.seh_endprologue
		movl	%ecx, %eax
		notl	%eax
		andl	$1, %eax
		ret
	```

* isEven2:
	```
	_Z7isEven2i:
	.LFB1595:
		.seh_endprologue
		movl	%ecx, %eax
		notl	%eax
		andl	$1, %eax
		ret
	```
