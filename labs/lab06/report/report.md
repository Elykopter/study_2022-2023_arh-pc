---
## Front matter
title: "Лабораторная работа No5. Основы работы с Midnight Commander (mc). Структура программы на языке ассемблера NASM. Системные вызовы в ОС GNU Linux"
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

Приобретение практических навыков работы в Midnight Commander. Освоение инструкций языка ассемблера mov и int.

# Задание для самостоятельной работы

1. Создайте копию файла lab6-1.asm. Внесите изменения в программу (без использования внешнего файла in_out.asm), так чтобы она работала по следующему алгоритму:
• вывести приглашение типа “Введите строку:”;
• ввести строку с клавиатуры;
• вывести введённую строку на экран.
2. Получите исполняемый файл и проверьте его работу. На приглашение ввести строку введите свою фамилию.
3. Создайте копию файла lab6-2.asm. Исправьте текст программы с использование подпрограмм из внешнего файла in_out.asm, так чтобы она работала по следующему алгоритму:
• вывести приглашение типа “Введите строку:”;
• ввести строку с клавиатуры;
• вывести введённую строку на экран.
4. Создайте исполняемый файл и проверьте его работу.


# Выполнение лабораторной работы

1. Открыл Midnight Commander, перешёл в каталог ~/work/arch-pc и с помощью функциональной клавиши F7 создал папку lab06 и перешёл в созданный каталог.

![Создание катлога](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана_2022-12-07_12-22-40.png){ #fig:001 width=90% }

2. Пользуясь строкой ввода и командой touch создал файл lab6-1.asm.

![Создание файла](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана_2022-12-07_12-25-45.png){ #fig:002 width=90% }

3. Ввел текст программы из листинга 6.1, сохранил изменения и закрыл файл.

![Введенный текст](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана_2022-12-07_12-34-16.png){ #fig:003 width=90% }

4. Оттранслировал текст программы lab6-1.asm в объектный файл. Выполнил компоновку объектного файла и запустил получившийся исполняемый файл. Ввел своё ФИО.

![Результат запуска](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана_2022-12-07_12-49-53.png){ #fig:004 width=90% }

5. В копированном файле lab6-2.asm исправил текст программы в файле с использованием подпрограмм из внешнего файла in_out.asm в соответствии с листингом 6.2.

![Исправленный текст](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана_2022-12-07_13-10-59.png){ #fig:005 width=90% }

6. Создал исполняемый файл и проверил его работу.

![Запуск](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана_2022-12-07_13-16-35.png){ #fig:006 width=90% }

7. В файле lab6-2.asm заменил подпрограмму sprintLF на sprint. Создал исполняемый файл и проверил его работу. Теперь введённая строка с моим ФИО отобразилась на одной и той же строчке.

![Разница](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана_2022-12-07_13-19-11.png){ #fig:007 width=90% }

8. Создал копию файла lab6-1.asm с названием lab6-11.asm в каталоге курса. Внес изменения в программу (без использования внешнего файла in_out.asm), так чтобы она работала по следующему алгоритму:
• вывести приглашение типа “Введите строку:”;
• ввести строку с клавиатуры;
• вывести введённую строку на экран.

![Lab6-11.asm](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана_2022-12-07_14-20-17.png){ #fig:008 width=90% }

9. Получил исполняемый файл и проверил его работу. На приглашение ввести строку ввел свою фамилию.

![Программа lab6-11.asm](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана_2022-12-07_14-21-02.png){ #fig:009 width=90% }

10. Создал копию файла lab6-2.asm с названием lab6-22.asm в каталоге курса. Внес изменения в программу c использованием внешнего файла in_out.asm, так чтобы она работала по такому же алгоритму, создал исполняемый файл и проверил его работу.

![Программа lab6-22.asm](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана_2022-12-07_14-25-25.png){ #fig:010 width=90% }

11. Создал отчёт лабораторной работы в markdown.

# Выводы

Приобрел практические навыки работы в Midnight Commander. Освоил инструкций языка ассемблера mov и int.

