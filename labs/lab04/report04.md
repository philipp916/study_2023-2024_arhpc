---
## Front matter
title: "Росийский университет Дружбы Народов"
subtitle: "Отчет по Лабораторной работе №4"
subtitle: "По теме: "Создание и процесс обработки программ на языке ассемблера NASM."
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

Освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Выполнение лабораторной работы
4.3. Порядок выполнения лабораторной работы

4.3.1. Программа Hello world! 
1. Я создал каталог для работы с программами на языке ассемблера NASM, перешёл в него и создал текстовый файл с именем hello.asm:

![](lab04_im/1.png)

2. Далее я открыл этот файл с помощью текстового редактора gedit и ввёл в него текст, представленный в лабораторной работе:

![](lab04_im/2.png)

4.3.2. Транслятор NASM 
3. Для компиляции приведённого выше текста программы «Hello World» я написал ‘nasm -f elf hello.asm’:

![](lab04_im/3.png)

4. С помощью команды ‘ls’ я проверил, создался ли файл, и какое название он имеет. Действительно, файл был создан имеет название ‘hello.o’

![](lab04_im/4.png)

4.3.3. Расширенный синтаксис командной строки NASM
5. Я выполнил следующую команду ‘nasm -o obj.o -f elf -g -l list.lst hello.asm’, и с помощью команды ls проверил, что файлы были созданы:

![](lab04_im/5.png)

4.4. Компоновщик LD 
6. Чтобы получить исполняемую программу, объектный файл необходимо передать на обработку компоновщику:

![](lab04_im/6.png)

Как мы можем заметить, исполняемый файл hello был создан

7. Далее я выполнил следующую команду:

![](lab04_im/7.png)

Исполняемый файл стал нести имя ‘main’. А объектный файл имеет имя ‘obj.o’

4.4.1. Запуск исполняемого файла
8. Я набрал в командной строке ./hello.Я убедился в том, что программа работает исправно:

![](lab04_im/8.png)

4.5. Задание для самостоятельной работы

1. В каталоге ~/work/arch-pc/lab04 с помощью команды cp я создал копию файла hello.asm с именем lab4.asm:

![](lab04_im/9.png) 

2. С помощью текстового редактора gedit я внес изменения в текст программы в файле lab4.asm так, чтобы вместо Hello world! на экран выводилась строка с моей фамилией и именем:

![](lab04_im/10.png)

3. Далее я оттранслировал полученный текст программы lab4.asm в объектный файл. Выполнил компоновку объектного файла и запустил получившийся исполняемый файл:

![](lab04_im/11.png)

4. Я скопировал файлы hello.asm и lab4.asm в мой локальный репозиторий в каталог ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab04/. Загрузил файлы на Github

# Выводы

я освоил процедуры компиляции и сборки программ, написанных на ассемблере NASM.
 
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
