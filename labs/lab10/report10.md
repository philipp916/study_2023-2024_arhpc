---
## Front matter
title: "Росийский университет Дружбы Народов"
subtitle: "Отчет по Лабораторной работе №10"
subtitle: "По теме: "Работа с файлами средствами Nasm."
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

Приобретение навыков написания программ для работы с файлами.

# Задание

Здесь приводится описание задания в соответствии с рекомендациями
методического пособия и выданным вариантом.

# Выполнение лабораторной работы
10.3. Порядок выполнения лабораторной работы

1. Я создал каталог для программ лабораторной работы № 10, перешёл в него и создал файлы lab10-1.asm, readme-1.txt и readme-2.txt:

![](lab10_im/1.png)

2. Я ввел в файл lab10-1.asm текст программы из листинга 10.1 (Программа записи в файл сообщения). Создал исполняемый файл и проверил его работу. Ответ сохранился в файле readme-1.txt. С помощью команды cat я проверил правильность выполнения программы:

![](lab10_im/2.png)
![](lab10_im/3.png)
![](lab10_im/4.png)

3. Далее с помощью команды chmod я изменил права доступа к исполняемому файлу lab10-1, запретив его выполнение. В терминале вывелся очевидный результат: отказ в доступе, ведь я командой chmod запретил запускать программу для владельца:

![](lab10_im/5.png)

4. Следующим шагом с помощью команды chmod я изменил права доступа к файлу lab10-1.asm с исходным текстом программы, добавив права на исполнение. Снова создал исполняемый файл и проверил его работу:

![](lab10_im/6.png)

В результате программа заработала, но переписала исходный текст под новый, так как этот файл был со всеми разрешениями, и предыдущим шагом я запретил выполняться уже готовой программе. Система считает, что это новая программа, хотя она обладает другими разрешениями.

5. В соответствии с вариантом, полученным в ходе выполнения лабораторной работы №6,  я предоставил права доступа к файлу readme1.txt представленные в символьном виде, а для файла readme-2.txt – в двочном виде. Проверил правильность выполнения с помощью команды ls -l:

![](lab10_im/7.png)
![](lab10_im/8.png)

10.5. Задание для самостоятельной работы 

1. Сначала я создал файл lab10-2.asm для выполнения самостоятельной работы:

![](lab10_im/9.png)

2. Далее я написал код для программы, которая будет запрашивать имя и выводить его в созданном файле name.txt, который создаст сама программа:

![](lab10_im/10.png)
![](lab10_im/11.png)

3. Создал исполняемый файл и запустил его. Программа ждала ввода моего имени в терминал, а затем создала файл, содержащий введенное с клавиатуры имя. С помощью команд cat и ls я проверил наличие файла, его содержимое и правильность выполнения своей программы:

![](lab10_im/12.png)

# Выводы

В ходе выполнения данной лабораторной работы я приобрел полезные навыки написания программ для работы с файлами в ассемблере NASM. 
 
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
