---
## Front matter
title: "Создание и процесс обработки программ на языке ассемблера NASM"
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

Освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Задание

1. В каталоге ~/work/arch-pc/lab05 с помощью команды cp создайте копию файла hello.asm с именем lab5.asm
2. С помощью любого текстового редактора внесите изменения в текст программы в файле lab5.asm так, чтобы вместо Hello world! на экран выводилась строка с вашими фамилией и именем.
3. Оттранслируйте полученный текст программы lab5.asm в объектный файл. Выполните компоновку объектного файла и запустите получившийся исполняемый файл.
4. Скопируйте файлы hello.asm и lab5.asm в Ваш локальный репозиторий в каталог ~/work/study/2022-2023/"Архитектура компьютера"/archpc/labs/lab05/. Загрузите файлы на Github.


# Выполнение лабораторной работы

1. Создал каталог для работы с программами на языке ассемблера NASM, перешёл в него, создал текстовый файл с именем hello.asm и открыл его в gedit.

![Создание файла](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/work/study/2022-2023/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2022-11-23 12-11-38.png){ #fig:001 width=90% }

2. Ввёл в него данный текст.

![Введенный текст](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/work/study/2022-2023/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2022-11-23 12-57-57.png){ #fig:002 width=90% }

3. Произвел компиляцию приведённого выше текста программы «Hello World». В результате образовался объектный файл. Проверил его наличие.

![Объектный файл](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/work/study/2022-2023/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2022-11-23 12-18-28.png){ #fig:003 width=90% }

4. Скомпилировал исходный файл hello.asm в obj.o, также создал файл листинга list.lst. Проверил наличие созданных файлов.

![Файлы](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана от 2022-11-23 12-21-34.png){ #fig:004 width=90% }

5. Передал объектный файл на обработку компоновщику. Проверил наличие исполняемого файла.

![Компонирование](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/Изображения/Снимки экрана/Снимок экрана от 2022-11-23 12-57-30.png){ #fig:005 width=90% }

6. Запустил на выполнение созданный исполняемый файл.

![Запуск](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/work/study/2022-2023/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2022-11-23 12-57-39.png){ #fig:006 width=90% }

7. В каталоге ~/work/arch-pc/lab05 с помощью команды cp создал копию файла hello.asm с именем lab5.asm

![Создание файла](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/work/study/2022-2023/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2022-11-23 13-07-57.png){ #fig:007 width=90% }

8. С помощью текстового редактора внес изменения в текст программы в файле lab5.asm так, чтобы вместо Hello world! на экран выводилась строка с моими фамилией и именем.

![Редактирование](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/work/study/2022-2023/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2022-11-23 13-50-05.png){ #fig:008 width=90% }

9. Оттранслировал полученный текст программы lab5.asm в объектный файл. Выполнил компоновку объектного файла и запустил получившийся исполняемый файл.

![Запуск](/afs/.dk.sci.pfu.edu.ru/home/k/l/klnovikov/work/study/2022-2023/Архитектура компьютера/arch-pc/labs/lab05/report/image/Снимок экрана от 2022-11-23 13-23-35.png){ #fig:009 width=90% }

10. Сделал отчёт с помощью markdown и отправил файлы на github.

# Выводы

Освоил процедуры компиляции и сборки программ, написанных на ассемблере NASM.

