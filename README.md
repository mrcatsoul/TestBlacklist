https://www.youtube.com/watch?v=zNYYEO0X2b8

--------------------------------------------------------------------------------------------------------
-- 3.24: + кастом блеклист + кастом заметки + антиспам в лфг и не только, идея взята с аддона который юзает Ratt, но по факту я его даже не запускал, пробежавшись взглядом по коду и ничего не тыря оттуда решил запилить свою версию с тем же блеклистом и плюхами, но своими, просто на тест, получится ли чето интересное сделать.
--------------------------------------------------------------------------------------------------------
-- Функционал:
--------------------------------------------------------------------------------------------------------
--=> Авто-ответ в пм заблокированным чс-никам при попытках обратиться к нам в пм/инвайтить. При включенной опции: выдаст в ответ что сообщение/инвайт были скрыты/отменены и причину если та есть в заметке.

--=> Авто-анонс в группу/рейд если там обнаружен чс-ник. Для лидера/асиста, остальным юзлес.

--=> Скрывать сообщения чс-ников из основных каналов чатах включая пм. Добавление/удаление ников в/из чс: "/команда ник" - через команду добавление происходит без заметки, можно также массово добавить кучу ников через пробел. Пример: "/tbl Николасгукс твингуксараз Твингуксадва" или "/tbladd никадин никдва". Убрать из чс: "/tbldel Ник". Ники можно прописывать и с маленькой буквы. Запяточие  в качестве разделителя в командах юзаем только при добавлении/удалении ключевых фраз (для команд: /tblmsgcontainsadd /tblmca /tblmsgcontainsremove /tblmcr). Опция с добавлением в чс и заметки так же доступна через контекстное меню по клику правой кнопкой мыши по нику в чате, через фреймы таргета, фокуса, пати, рейда, френдлиста.

--=> Фильтрация по содержанию фраз в сообщениях. При включенной опции: при нахождении фразы из черного списка в тексте сообщения - сообщение будет скрыто. Добавление/удаление фраз в/из чс: "/команда Фраза1;Фраза2;Фраза3". Пример, добавление: "/tblmsgcontainsadd фраза" или "/tblmca фраза;фраза;фраза;фраза", удаление: "/tblmsgcontainsremove фраза;фраза" или "/tblmcr фраза1;фраза2" .. итд через знак запяточия.

--=> Фильтрация по содержанию фраз в никах. При включенной опции: при нахождении фразы из черного списка в тексте ника - сообщение будет скрыто. Добавление фразы в черный список: "/команда Фраза1;фраза2;Фраза3". Пример, добавление: "/tblnamecontainsadd Gyks" или "/tblnca gyki;Гукс;Gyks", удаление: "/tblnamecontainsremove фраза1;Фраза2;фраза3" или "/tblncr фраза1;Фраза2;фраза3" .. итд, ники через пробел.

--=> Отправлять чс-ника в дефолтный игровой чс (50 ников макс) в случае спама в пм/инвайтами при включенных автоотмене инвайтов либо подавлении пм.

--=> Помимо персонального чс проверять ники на наличие их в списке Ratt-а (овер 2000 ников в RattBlackListNamesList.lua).

--=> Получать ники чс-ников методом синхронизации от пользователей аддона в рейде/гильдии и тех кто не против их лично нам отправлять.

--=> Автоматически шарить ники чс-ников методом синхронизации пользователям аддона в рейде/гильдии и на конкретно указанные ники.

--=> Автоматически добавлять к себе ники чс-ников от проверенных своих ребят методом синхронизации (пользователей аддона в гильдии/рейде/тех кто не против их лично нам отправлять).

--=> Автоматически отменять инвайты, вызовы на дуэль, редичеки от чс-ников.

--=> Отображать чс-заметку в чате рядом с ником. Идея взята из чаттера.

--=> Отображать нормальную заметку в чате рядом с ником. При наличии чс-заметки нормальная отображаться не будет.

--=> Вместо чс-заметки в чате отображать только тег "[в чс]".

--=> Сокращать заметку в чате до N количества символов. По умолчанию 10. Установка максимального количества символов по команде: "/tblchatnotemaxletters число" или "/tblcnml число"

--=> Показывать окно и текст по центру экрана при наличии чс-ника в группе.

--=> Мигание окна в панели задач (FlashWindow) при наличии чс-ника в группе либо получении пм/инвайта не от чс-ника. Для работы необходима библиотека AwesomeWotlk (https://github.com/FrostAtom/awesome_wotlk)

--=> Фильтр на предотвращение появления одинаковых сообщений написанных с одного ника пропуская их не чаще чем раз в N сек. Антиспам для лфг, но включить можно и для других типов чата. По умолчанию N = 60. Команда для изменения N секунд: "/tblantispamsec число" или "/tblass число".

![image](https://github.com/user-attachments/assets/de9041c0-abaa-4525-a5a1-9707b1eb80f2)


--=> Включение фильтра на предотвращение появления одинаковых сообщений только для каналов по типу LFG (поиск спутников). Включить если нужно только для LFG, к примеру.

--=> Опций в интерфейсе связанных с массовым отображением/удалением/добавлением чего бы то ни было текстового (ники/фильтры) пока что нет, через команды онли.
