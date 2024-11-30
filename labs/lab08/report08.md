---
## Front matter
title: "Росийский университет Дружбы Народов"
subtitle: "Отчет по Лабораторной работе №8"
subtitle: "По теме: "Программирование цикла. Обработка аргументов командной строки."
author: "Пателепень Филипп НММ-04-24"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение навыков написания программ с использованием циклов и обработкой аргументов командной строки.

# Задание

Здесь приводится описание задания в соответствии с рекомендациями
методического пособия и выданным вариантом.

# Выполнение лабораторной работы
8.3. Порядок выполнения лабораторной работы

8.3.1. Реализация циклов в NASM

1. Я создал каталог для программ лабораторной работы № 8, перешёл в него и создал файл lab8-1.asm:

![](lab08_im/1.png)

2. Далее я ввел в файл lab8-1.asm текст программы из листинга 8.1. Создал исполняемый файл и проверьте его работу:

![](lab08_im/2.png)
![](lab08_im/3.png)

3. Я изменил текст программы добавив изменение значение регистра ecx в цикле, создал исполняемый файл и проверил его работу:

![](lab08_im/4.png)
![](lab08_im/5.png)

По итогу вывелись 13 значений. Все они являются нечетными, т.к. из-за команды ‘ecx,1’
из каждого следующего значения вычиталась единица. ‘ecx,1 = ecx - 1’

4. Для использования регистра ecx в цикле и сохранения корректности работы программы можно использовать стек. Я внес изменения в текст программы добавив команды ‘push’ и ‘pop’ (добавления в стек и извлечения из стека) для сохранения значения счетчика цикла loop:

![](lab08_im/6.png)

5. Я создал исполняемый файл и проверил его работу. Теперь число проходов цикла соответствует значению 𝑁 введенному с клавиатуры:

![](lab08_im/7.png)

8.3.2. Обработка аргументов командной строки 

6. Я создал файл lab8-2.asm в каталоге ~/work/arch-pc/lab08 и ввел в него текст программы из листинга 8.2.:

![](lab08_im/8.png)
![](lab08_im/9.png)

7. Потом создал исполняемый файл и запустил его. В результате программа вывела все 3 аргумента, которые были введены, но в разной вариации:

![](lab08_im/10.png)

8. Я создал файл lab8-3.asm в каталоге ~/work/archpc/lab08 и ввел в него текст программы из листинга 8.3.:

![](lab08_im/11.png)
![](lab08_im/12.png)
![](lab08_im/13.png)

9. Я создал исполняемый файл и запустил его, указав аргументы. Программа вывела в терминал сумму чисел, которые я написал ранее:

![](lab08_im/14.png)

10.  Я изменил текст программы из листинга 8.3 для вычисления произведения аргументов командной строки,создал исполняемый файл и запустил его. В качестве проверки я ввел несколько комбинаций чисел. Программа работает корректно:

![](lab08_im/15.png)
![](lab08_im/16.png)
![](lab08_im/17.png)

7.4. Задание для самостоятельной работы

1. Для выполнения самостоятельной работы я создал файл lab8-4.asm:

![](lab08_im/18.png)

2. Далее я написал программу, которая находит сумму значений функции f(x) для x = x1 , x2 , ..., xn, т.е. программа выводит значение f(x1 ) + f(x2 ) + ... + f(xn). Значения xi передаются как аргументы. Вид моей функции - ‘15x + 2’ (11 вариант, полученный при выполнении лабораторной работы 6):

![](lab08_im/19.png)
![](lab08_im/20.png)

3.Я создал исполняемый файл и проверил его работу на нескольких наборах x = x1 , x2 , ..., xn:

![](lab00_im/21.png)

# Выводы

выполняя данную лабораторную работу я приобрел полезные навыки написания программ с использованием цикла, а также обработки аргументов командной строки.
 
# Список литературы{.unnumbered}

1. GDB: The GNU Project Debugger. — URL: https://www.gnu.org/software/gdb/. 
2. GNU Bash Manual. — 2016. — URL: https://www.gnu.org/software/bash/manual/. 
3. Midnight Commander Development Center. — 2021. — URL: https://midnight-commander. org/.
4. NASM Assembly Language Tutorials. — 2021. — URL: https://asmtutor.com/.
5. Newham C. Learning the bash Shell: Unix Shell Programming. — O’Reilly Media, 2005. — 354 с. — (In a Nutshell). — ISBN 0596009658. — URL: http://www.amazon.com/Learningbash-Shell-Programming-Nutshell/dp/0596009658. 
6. Robbins A. Bash Pocket Reference. — O’Reilly Media, 2016. — 156 с. — ISBN 978-1491941591. 
7. The NASM documentation. — 2021. — URL: https://www.nasm.us/docs.php. 
8. Zarrelli G. Mastering Bash. — Packt Publishing, 2017. — 502 с. — ISBN 9781784396879. 
9. Колдаев В. Д., Лупин С. А. Архитектура ЭВМ. — М. : Форум, 2018. 
10. Куляс О. Л., Никитин К. А. Курс программирования на ASSEMBLER. — М. : Солон-Пресс, 2017. 
11. Новожилов О. П. Архитектура ЭВМ и систем. — М. : Юрайт, 2016. 
12. Расширенный ассемблер: NASM. — 2021. — URL: https://www.opennet.ru/docs/RUS/nasm/. 
13. Робачевский А., Немнюгин С., Стесик О. Операционная система UNIX. — 2-е изд. — БХВПетербург, 2010. — 656 с. — ISBN 978-5-94157-538-1. 
14. Столяров А. Программирование на языке ассемблера NASM для ОС Unix. — 2-е изд. — М. : МАКС Пресс, 2011. — URL: http://www.stolyarov.info/books/asm_unix. 
15. Таненбаум Э. Архитектура компьютера. — 6-е изд. — СПб. : Питер, 2013. — 874 с. — (Классика Computer Science). 
16. Таненбаум Э., Бос Х. Современные операционные системы. — 4-е изд. — СПб. : Питер, 2015. — 1120 с. — (Классика Computer Science). 
