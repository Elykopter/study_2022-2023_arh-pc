---
## Front matter
title: "Лабораторная работа №3. Язык разметки Markdown"
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

Целью работы является освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Задание

Создание отчёта лабораторной работы 3

# Выполнение лабораторной работы

1. Перешёл в каталог курса сформированный при выполнении лабораторной работы №3 и обновил локальный репозиторий.

![Обновление](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Screenshot_20221026_124155.png){ #fig:001 width=90% }

2. Перешёл в каталог с шаблоном отчета по лабораторной работе № 4 и провел компиляцию шаблона с использованием Makefile. Создаются два файла.

![Создание файлов](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Screenshot_20221026_130040.png){ #fig:002 width=90% }

3. В результате пункта 2 сгенерировались файлы report.pdf и
report.docx

![Проверка файлов](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Screenshot_20221026_151916.png){ #fig:003 width=90% }

4. При удалении полученных файлов с использованием Makefile, показалась ошибка.

![Ошибка в удалении](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Screenshot_20221026_130625.png){ #fig:004 width=90% }

5. Открыл файл report.md c помощью текстового редактора gedit и заполняю в нём отчёт.

![Заполнение отчёта](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Screenshot_20221026_152335.png){ #fig:005 width=90% }

6. Отправил файлы с отчетом на github

![Отправка](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Screenshot_20221026_155827.png){ #fig:006 width=90% }

![Otpravka](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/work/study/2022-2023/Архитектура компьютера/arch-pc/labs/lab03/report/image/Screenshot_20221026_160949.png){ #fig:007 width=90% }

# Выводы

Освоил процесс оформления отчета лабораторной работы с помощью операций легковесного языка разметки Markdown.

# Список литературы{.unnumbered}

::: {#refs}
:::
