#  Описание

Bash скрипт, который находит файлы с расширением ".c" и считает, сколько строк в каждом из них.

# Использование

```bash
/path/to/find-and-count.sh /path/to/dir
```

# Примеры

```bash
$ ./find-and-count.sh ./test-files | sort -g
1 ./test-files/1file.c
2 ./test-files/2file .c
3 ./test-files/3file_.c
4 ./test-files/4file#.c
5 ./test-files/5file$%^&*.c
6 ./test-files/6.file.c
7 ./test-files/7file<>|.c
8 ./test-files/subdir/8file\t.c
9 ./test-files/subdir/9file.<>?[]{}\|;:.c
10 ./test-files/subdir/10       file  .txt.c
11 ./test-files/11file.c.txt.c
```

```bash
$ ./find-and-count.sh /usr/src
793 /usr/src/linux-hwe-5.13-headers-5.13.0-30/scripts/kallsyms.c
129 /usr/src/linux-hwe-5.13-headers-5.13.0-30/scripts/kconfig/util.c
614 /usr/src/linux-hwe-5.13-headers-5.13.0-30/scripts/kconfig/nconf.gui.c
1514 /usr/src/linux-hwe-5.13-headers-5.13.0-30/scripts/kconfig/gconf.c
...
```