---
## Front matter
title: "Росийский университет Дружбы Народов"
subtitle: "Отчет по Лабораторной работе №7"
subtitle: "По теме: "Команды безусловного и условного переходов в Nasm. Программирование ветвлений."
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

Изучение команд условного и безусловного переходов. Приобретение навыков написания программ с использованием переходов. Знакомство с назначением и структурой файла листинга.

# Задание
Здесь приводится описание задания в соответствии с рекомендациями
методического пособия и выданным вариантом.

# Выполнение лабораторной работы
7.3. Порядок выполнения лабораторной работы

7.3.1. Реализация переходов в NASM

1. Я Создал каталог для программ лабораторной работы № 7, перешёл в него и создайте файл lab7-1.asm:

![](lab07_im/1.png)
![](lab07_im/2.png)

2. Далее я введил в файл lab7-1.asm текст программы из листинга 7.1.:

![](lab07_im/3.png)

3. Я создал исполняемый файл и запустил его. Результат работы данной программы будет следующим:

![](lab07_im/4.png)

4. Я изменил программу таким образом, чтобы она выводила сначала ‘Сообщение № 2’, потом ‘Сообщение № 1’ и завершала работу. Для этого в текст программы после вывода сообщения № 2 добавил инструкцию jmp с меткой _label1 (т.е. переход к инструкциям вывода сообщения № 1) и после вывода сообщения № 1 добавил инструкцию jmp с меткой _end (т.е. переход к инструкции call quit). Изменил текст программы в соответствии с листингом 7.2, создал исполняемый файл и запустил его. На экран вывело следующее:

![](lab07_im/5.png)
![](lab07_im/6.png)

5. Я изменил текст программы так, чтобы сначала выводило ‘Сообщение № 3’ , затем ‘Сообщение № 2’, а затем ‘Сообщение № 1’:

![](lab07_im/7.png)
![](lab07_im/8.png)

6.  Я создал исполняемый файл и запустил его. Результат работы данной программы оказался корректным:

![](lab07_im/9.png)

7. Я создал файл lab7-2.asm в каталоге ~/work/arch-pc/lab07. Внимательно изучил текст программы из листинга 7.3 и ввёл в lab7-2.asm.:

![](lab07_im/10.png)
![](lab07_im/11.png)
![](lab07_im/12.png)
![](lab07_im/13.png)

7.3.2. Изучение структуры файлы листинга

9. Я создал файл листинга lab7-2.lst и открыл его:

![](lab07_im/14.png)
![](lab07_im/15.png)

10. Проанализировав файл, я понял как он работает и какие значения выводит:

Приведу в пример три строки:
![](lab07_im/16.png)
1)Эта строка находится на 62 месте, ее адрес “00000043”, Машинный код - 53. В ассемблере команда ‘push ebx’ используется для сохранения значения регистра ‘ebx’ на стеке

![](lab07_im/17.png)
2) Эта строка находится на 81 месте, ее адрес “00000081”, Машинный код - B900000000. Команда ‘mov ecx, 0’ в ассемблере используется для установки регистра ‘ecx’ в 0.

![](lab07_im/18.png)
3)Эта строка находится на 19 месте, ее адрес “00000106”, Машинный код - E891FFFFFF. Функция ‘atoi’ (ASCII to Integer) принимает строку, содержащую текстовое представление числа, и преобразует её в целочисленное значение типа ‘int’, т.е. символ, лежащий в строке выше, переводится в число.

11.  В строке “mov [max], ecx” я убрал “ecx” и попробовал создать файл. В терминале вывелась ошибка, так как для программа требует два операнда:

![](lab07_im/19.png)

12. В файле листинга показывается, где именно ошибка и с чем она связана:

![](lab07_im/20.png)

7.4. Задание для самостоятельной работы

1. Для выполнения первого задания самостоятельной работы создам файл lab7-3.asm:

![](lab07_im/21.png)

2. Далее написал программу нахождения наименьшей из 3 целочисленных переменных a, b, c:

![](lab07_im/22.png)
![](lab07_im/23.png)
![](lab07_im/24.png)
![](lab07_im/25.png)

3. В лабораторной работе №6 я получил вариант 11, поэтому я должен ввести числа 21, 28, 34. Я создал исполняемый файл и запустил его. Программа работает корректно и выводит такой результат:

![](lab07_im/26.png)

4. Для выполнения второго задания самостоятельной работы создам файл lab7-4.asm:

![](lab07_im/27.png)

5.  Далее я написал программу, которая будет вычислять необходимое выражение при введенных “a” и “x”. Поскольку мой вариант - 11, я написал код для вычисления выражения из 11 варианта:

![](lab07_im/28.png)

6. Я создал исполняемый файл и запустил программу. Далее ввёл необходимые значения “a” и “x” для своего варианта. Программа работает корректно и выводит правильные вычисления:

![](lab07_im/29.png)
![](lab07_im/30.png)
![](lab07_im/31.png)

# Выводы

я изучил команды условного и безусловного переходов. Приобрел навыки написания программ с использованием переходов. Ознакомился с назначением и структурой файла листинга.

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
