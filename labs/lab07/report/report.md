---
## Front matter
title: "Лабораторная работа No6. Арифметическиe операции в NASM."
subtitle: "Архитектура ЭВМ"
author: "Новиков Константин Львович"

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
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
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

Освоение арифметических инструкций языка ассемблера NASM.

# Задание для самостоятельной работы

Написать программу вычисления выражения y = f(x). Программа должна выводить выражение для вычисления, выводить запрос на ввод значения x, вычислять заданное выражение в зависимости от введенного x, выво-
дить результат вычислений. Вид функции f(x) выбрать из таблицы 6.3 вариантов заданий в соответствии с номером полученным при выполнении лабораторной работы. Создайте исполняемый файл и проверьте его работу для значений x1 и x2 из 6.3.

# Выполнение лабораторной работы

1. Создал каталог для программам лабораторной работы No 7, перешёл в него и создал файл lab7-1.asm. Ввел в файл lab7-1.asm текст программы из листинга 7.1, создал исполняемый файл и запустил его.

![Программа 1](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/sc7/Снимок экрана от 2022-12-21 12-22-43.png){ #fig:001 width=90% }

2. Изменил текст программы и вместо символов, записал в регистры числа. Создал исполняемый файл и запустил его. В результате символ на экран не отобразился.

![Программа 2](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/sc7/Снимок экрана от 2022-12-21 12-52-31.png){ #fig:002 width=90% }

3. Создал файл lab7-2.asm в каталоге ~/work/arch-pc/lab07 и ввел в него текст программы из листинга 7.2. Создал исполняемый файл и запустил его.

![Программа 3](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/sc7/Снимок экрана от 2022-12-21 12-59-35.png){ #fig:003 width=90% }

4. Аналогично предыдущему примеру изменил в программе символы на числа, создал исполняемый файл и запустил его. В результате получается число 10. Если же заменить функцию iprintLF на iprint, то после результата не будет осуществляться перенос строки.

![Программа 4](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/sc7/Снимок экрана от 2022-12-21 13-01-45.png){ #fig:004 width=90% }

![Программа 5](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/sc7/Снимок экрана от 2022-12-21 13-03-49.png){ #fig:005 width=90% }

5. Для примера выполнения арифметических операций в NASM приведем программу вычисления арифметического выражения f(x) = (5 * 2 + 3)/3. Создал файл lab7-3.asm, ввел в него программу листинга 7.3, создал исполняемый файл и запустил его.

![Программа 7](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/sc7/Снимок экрана от 2022-12-21 13-13-33.png){ #fig:006 width=90% }

6. Затем изменил текст программы для вычисления выражения f(x) = (4 * 6 + 2)/5. Создал исполняемый файл и проверил его работу. 

![Программа 8](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/sc7/Снимок экрана от 2022-12-21 13-16-34.png){ #fig:007 width=90% }

7. Рассмотрим программу для вычисления варианта по студенческому билету с представленным алгоритмом. Создайте файл variant.asm, ввел в него программу из листинга 7.4, создал исполняемый файл и запустил его, введя номер своего студенческого. Мой вариант - 13.
1) На вывод на экран отвечают строчки:
mov eax, msg
call sprintLF
2) mov ecx, x - введение названия переменной
mov edx, 80 - размер значения ввода с клавиатуры в символах
call sread - запуск ввода с клавиатуры
3) call atoi - преобразовывает символ ASCII в число
4) За вычисление варианта отвечают:
xor edx,edx
mov ebx,20
div ebx
inc edx
5) edx - в него записывается остаток от деления
6) inc - увеличение числа на единицу
7) За вывод на экран отвечают:
mov eax,rem
call sprint
mov eax,edx
call iprintLF

![Программа 10](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/sc7/Снимок экрана от 2022-12-21 15-26-41.png){ #fig:008 width=90% }

9. Для выполнения самостоятельной работы я взял функцию под вариантом 13: (8x+6)*10 и написал для нее следующую программу:

![Код для СР](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/sc7/Снимок экрана от 2022-12-21 15-18-33.png){ #fig:009 width=90% }

10. Затем создал исполняемый файл и запустил его, проверив значения 1 и 4 из таблицы. 

![Программа для СР](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/sc7/Снимок экрана от 2022-12-21 15-16-38.png){ #fig:010 width=90% }

11. Создал отчет при помощи Markdown, отправил все файлы на GitHub.

# Выводы

Освоил арифметические инструкции языка ассемблера NASM.

