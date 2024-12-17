---
## Front matter
title: "Росийский университет Дружбы Народов"
subtitle: "Отчет по Лабораторной работе №2"
subtitle: "По теме: "Система контроля версий Git."
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

Целью работы является изучить идеологию и применение средств контроля версий. Приобрести практические навыки по работе с системой git.

# Выполнение лабораторной работы
2.4. Порядок выполнения лабораторной работы

2.4.1. Настройка Github

Я создал учётную запись на сайте https://github.com/ и заполнил основные данные.

![](lab02_im/01.png)

2.4.2. Базовая настройка Git

Я открыл терминал и ввёл следующие команды, указав имя и email владельца репозитория:

![](lab02_im/02.png)

Настроил utf-8 в выводе сообщений git и задал имя начальной ветки:

![](lab02_im/03.png)

Ввёл параметр «autocrlf:» и параметр «safecrlf:»

![](lab02_im/04.png)

2.4.3. Создание SSH ключа

Я сгенерировал пару ключей (приватный и открытый) , которых сохранил в
в каталоге «~/.ssh/.».

Далее я зашёл меню на сайте http: //github.org/,  где скопировав из локальной консоли ключ я вставил его в появившееся на сайте поле, и указал его имя (Title)


![](lab02_im/05.png)
![](lab02_im/06.png)
![](lab02_im/07.png)
![](lab02_im/08.png)
![](lab02_im/09.png)
![](lab02_im/010.png)


2.4.4. Сознание рабочего пространства и репозитория курса на основе шаблона

Я открыл терминал и создал каталог для предмета «Архитектура компьютера»:

![](lab02_im/011.png)

2.4.5. Сознание репозитория курса на основе шаблона

Я создал репозиторий через web-интерфейс github, перейдя на станицу репозитория с шаблоном курса https://github.com/yamadharma/cour se-directory-student-template.

Далее я выбрал вкладку

![](lab02_im/012.png)

В открывшемся окне я задал имя репозитория «study_2023–2024_arhpc» и создал сам репозиторий:

![](lab02_im/013.png)

Далее я открыл терминал и перешёл в каталог курса:

![](lab02_im/014.png)

И клонировал созданный репрезиторий, ссылку для клонирования скопировав на странице созданного репозитория:

![](lab02_im/015.png)
![](lab02_im/016.png)
![](lab02_im/017.png)
![](lab02_im/018.png)

2.4.6. Настройка каталога курса

Я перешёл в каталог курса:

![](lab02_im/019.png)

Далее удалил лишние файлы:

![](lab02_im/020.png)

Создал необходимые каталоги:

![](lab02_im/021.png)

И отправил файлы на сервер:

![](lab02_im/022.png)

Далее я проверил правильность создания иерархии рабочего пространства в локальном репозитории и на странице github:

![](lab02_im/023.png)
![](lab02_im/024.png)
![](lab02_im/025.png)

2.5. Задание для самостоятельной работы

1. Я перешёл в labs/lab02/report с помощью команды «cd»:

![](lab02_im/026.png)

Далее я создал файл для отчёта по лабораторной работе, используя команду «touch»:

![](lab02_im/027.png)

2. Я перешёл из подкаталога lab02/report в подкаталог lab01/report:

![](lab02_im/028.png)

Далее я скопировал первую лабораторную работу с помощью команды «cp»:

![](lab02_im/029.png)

Проверим правильность выполнения команды:

![](lab02_im/030.png)

Перейдя в подкаталог «lab/02/report» я скопировал туда вторую лабораторную и проверил правильность выполнения команды:

![](lab02_im/031.png)
![](lab02_im/032.png)

3. С помощью команды «git add ‘’» я добавил новые файлы:

![](lab02_im/033.png)
![](lab02_im/034.png)

Далее я сохранил изменения при помощи команды «git commit -am», и перенёс в репозиторий сохранённые изменения командой «git push»:

![](lab02_im/035.png)
![](lab02_im/036.png)

И проверил на сайте правильность выполнения задания:

![](lab02_im/037.png)
![](lab02_im/038.png)
![](lab02_im/039.png)
![](lab02_im/040.png)

# Выводы

я изучил идеологию и применение средств контроля версий. Также я приобрёл практические навыки по работе с системой git, и научился загружать лабораторные работы на https://github.com/philipp916/study_2023-2024_arhpc/tree/master/.
 
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
