---===[RU]===---
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
--=> Включение фильтра на предотвращение появления одинаковых сообщений только для каналов по типу LFG (поиск спутников). Включить если нужно только для LFG, к примеру.
--=> Опций в интерфейсе связанных с массовым отображением/удалением/добавлением чего бы то ни было текстового (ники/фильтры) пока что нет, через команды онли.
--------------------------------------------------------------------------------------------------------
-- Команды:
--------------------------------------------------------------------------------------------------------
--=> /tbl или /tbladd Ник,Ник,Ник
--=> /tbldel Ник,Ник,Ник
--=>
--=>
--=>
--=>
--=>
--=>
--=>
--=>
--=>
--=>
--=>
--=>

---===[EN]==---
--------------------------------------------------------------------------------------------------------
-- 3.24: + custom blacklist + custom notes + anti-spam in LFG and beyond, idea taken from an addon that uses Ratt, but in fact, I didn't even launch it, after glancing through the code and not borrowing anything from there, I decided to create my version with the same blacklist and features, but mine, just for testing, to see if something interesting can be done.
--------------------------------------------------------------------------------------------------------
-- Functionality:
--------------------------------------------------------------------------------------------------------
--=> Auto-reply to PMs from blocked players when they attempt to message us or invite. When enabled, it will respond that the message/invite was hidden/canceled and the reason if there's one in the note.
--=> Auto-announce messages to the group/raid if a blocked player is detected. For leaders/assistants, useless for others.
--=> Hide messages from blocked players in main chat channels including PMs. Adding/removing names to/from the blocklist: "/command name" - adding through the command happens without a note, you can also add a bunch of names at once separated by space. Example: "/tbl Nicholasgux twinguxaraz Twinguxadva" or "/tbladd nameone nametwo". To remove from the blocklist: "/tbldel Name". Names can be specified in lowercase as well. A comma is used as a delimiter in commands only when adding/removing key phrases (for commands: /tblmsgcontainsadd /tblmca /tblmsgcontainsremove /tblmcr). The option to add to the blocklist and notes is also available through the context menu by right-clicking on a name in chat, through target, focus, party, raid frames, friend list.
--=> Filtering based on phrases contained in messages. When enabled, if a phrase from the blacklist is found in the message text, the message will be hidden. Adding/removing phrases to/from the blocklist: "/command Phrase1;Phrase2;Phrase3". Example, adding: "/tblmsgcontainsadd phrase" or "/tblmca phrase;phrase;phrase;phrase", removing: "/tblmsgcontainsremove phrase;phrase" or "/tblmcr phrase1;phrase2" .. etc., separated by commas.
--=> Filtering based on phrases contained in names. When enabled, if a phrase from the blacklist is found in the name text, the message will be hidden. Adding a phrase to the blacklist: "/command Phrase1;phrase2;Phrase3". Example, adding: "/tblnamecontainsadd Gyks" or "/tblnca gyki;Gux;Gyks", removing: "/tblnamecontainsremove phrase1;Phrase2;phrase3" or "/tblncr phrase1;Phrase2;phrase3" .. etc., names separated by spaces.
--=> Send blocked player to the default in-game block list (max 50 names) in case of PM/invite spam when auto-decline invites or PM suppression is enabled.
--=> In addition to the personal blocklist, check names for their presence in the Ratt list (over 2000 names in RattBlackListNamesList.lua).
--=> Receive names of blocked players through synchronization from addon users in raid/guild and those who don't mind sending them to us personally.
--=> Automatically share names of blocked players through synchronization with addon users in raid/guild and specifically specified names.
--=> Automatically add names of blocked players from trusted users through synchronization (addon users in guild/raid/those who don't mind sending them to us personally).
--=> Automatically decline invites, duel requests, and trades from blocked players.
--=> Display the block note in chat next to the name. Idea taken from Chatter.
--=> Display the regular note in chat next to the name. If a block note is present, the regular one will not be displayed.
--=> Instead of the block note, display only the tag "[blacklisted]" in chat.
--=> Shorten the note in chat to N number of characters. Default is 10. Set the maximum number of characters with the command: "/tblchatnotemaxletters number" or "/tblcnml number"
--=> Show a window and text in the center of the screen when a blocked player is in the group.
--=> Flash the window in the taskbar (FlashWindow) when a blocked player is in the group or when receiving a PM/invite not from a blocked player. Requires the AwesomeWotlk library to work (https://github.com/FrostAtom/awesome_wotlk)
--=> Filter to suppress identical messages written by the same name, allowing them no more often than once every N seconds. Anti-spam. Default is N = 60. Command to change N seconds: "/tblantispamsec number" or "/tblass number".
--=> Enable filter to suppress identical messages only for channels like LFG (Looking For Group). Enable if needed only for LFG, for example.
--------------------------------------------------------------------------------------------------------

local ADDON_NAME,ns=...
--local LANG = GetLocale() -- допилить для отображения на понятном большинству мира языке
local TITLE_SHORT = GetAddOnMetadata(ADDON_NAME, "TitleShort")
local ADDON_SHORT_NOT_NAME_CHAT_ONLY = "<"..TITLE_SHORT.." Alert>"
local THIN_FONT_NAME = "Interface\\addons\\" .. ADDON_NAME .. "\\PTSansNarrow.ttf" or GameFontNormal:GetFont() 

local RaidNotice_AddMessage, SendAddonMessage, CreateFrame, PlaySoundFile = RaidNotice_AddMessage, SendAddonMessage, CreateFrame, PlaySoundFile
local StaticPopup_Visible, StaticPopup_Show, StaticPopup_Hide = StaticPopup_Visible, StaticPopup_Show, StaticPopup_Hide
local FlashWindow, IsWindowFocused, FocusWindow = FlashWindow, IsWindowFocused, FocusWindow -- (awesomewotlk)
local UnitIsDND, UnitIsAFK, UnitClass, UnitName = UnitIsDND, UnitIsAFK, UnitClass, UnitName
local UnitInRaid, IsRaidOfficer, IsRaidLeader = UnitInRaid, IsRaidOfficer, IsRaidLeader
local GetRealNumPartyMembers, ChatFrame_AddMessageEventFilter = GetRealNumPartyMembers, ChatFrame_AddMessageEventFilter
local AddIgnore, CancelDuel, DeclineGroup = AddIgnore, CancelDuel, DeclineGroup
local DeclineGuild, GetNumIgnores, ConfirmReadyCheck = DeclineGuild, GetNumIgnores, ConfirmReadyCheck
local throttleTime,throttleTimeGroup,messageSendQueuePM,messageSendQueueGroup = 0,0,{},{}

local testBlacklist=CreateFrame('frame')
testBlacklist:RegisterEvent("ADDON_LOADED")
testBlacklist:RegisterEvent("GUILD_INVITE_REQUEST")
testBlacklist:RegisterEvent("PARTY_INVITE_REQUEST")
testBlacklist:RegisterEvent("DUEL_REQUESTED")
testBlacklist:RegisterEvent("READY_CHECK")
testBlacklist:RegisterEvent("CHAT_MSG_ADDON")
testBlacklist:RegisterEvent("CHAT_MSG_SYSTEM")
testBlacklist:RegisterEvent("MODIFIER_STATE_CHANGED")
testBlacklist:RegisterEvent("PLAYER_ENTERING_WORLD")

local spamCount,okPonyatno,popupNamesQueue,receivedBySyncNamesQueue,settings,notBlacklistedNamesCache,blacklistedNamesCache,chatMessagesCache = {},{},{},{},{},{},{},{}
local petuhNotifyMsgCD = 0
local nameToCheck,playerName

local MSG_name_has_left_the_raid_group = ERR_RAID_MEMBER_REMOVED_S:gsub("%%s", "") 
local MSG_name_has_joined_the_raid_group = ERR_RAID_MEMBER_ADDED_S:gsub("%%s", "") 
local MSG_You_have_left_the_raid_group = ERR_RAID_YOU_LEFT 
local MSG_You_have_joined_a_raid_group = ERR_RAID_YOU_JOINED 
local MSG_You_leave_the_group = ERR_LEFT_GROUP_YOU
local MSG_name_joins_the_party = JOINED_PARTY:gsub("%%s", "")  
local MSG_Your_group_has_been_disbanded = ERR_GROUP_DISBANDED
local MSG_name_leaves_the_party = ERR_LEFT_GROUP_S:gsub("%%s", "")  

local testlog = function(msg)
  print("|cff00bbee"..ADDON_SHORT_NOT_NAME_CHAT_ONLY.."|r "..msg)
end

local function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

local classColors = {
  ["DEATHKNIGHT"] = "C41F3B",
  ["DRUID"] = "FF7D0A",
  ["HUNTER"] = "A9D271",
  ["MAGE"] = "40C7EB",
  ["PALADIN"] = "F58CBA",
  ["PRIEST"] = "FFFFFF",
  ["ROGUE"] = "FFF569",
  ["SHAMAN"] = "0070DE",
  ["WARLOCK"] = "8787ED",
  ["WARRIOR"] = "C79C6E",
}

----------------------------------------------------------------------------------------
-- эвенты которые будем чекать (чат фильтр)
----------------------------------------------------------------------------------------
local trackingChatEventsToBlock =
{
  "CHAT_MSG_CHANNEL","CHAT_MSG_WHISPER","CHAT_MSG_WHISPER_INFORM",
  "CHAT_MSG_SAY","CHAT_MSG_YELL","CHAT_MSG_RAID",
  "CHAT_MSG_RAID_WARNING","CHAT_MSG_EMOTE","CHAT_MSG_TEXT_EMOTE",
  "CHAT_MSG_GUILD","CHAT_MSG_RAID_LEADER","CHAT_MSG_PARTY",
  "CHAT_MSG_PARTY_LEADER","CHAT_MSG_BATTLEGROUND","CHAT_MSG_BATTLEGROUND_LEADER",
}

for _,value in pairs(trackingChatEventsToBlock) do
  testBlacklist:RegisterEvent(value)
end

----------------------------------------------------------------------------------------
-- функции для работы со стрингами и обьектами, часть содрана откудато, часть нет
----------------------------------------------------------------------------------------
local strbyte, strlen, strsub, type = string.byte, string.len, string.sub, type

local function contains(table, element)
  for _, value in pairs(table) do
    if (value == element) then
      return true
    end
  end
  return false
end

local function split(inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  local t = {}
  for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
    table.insert(t, str)
  end
  return t
end

local function textContainsKeyword(text,keywordsTable)
  for key in pairs(keywordsTable) do
    if text:find(key) then
      return true
    end
  end
  return false
end

local function isNotBlank(str)
    return str:match("%S") ~= nil and str ~= ""
end

-- returns the number of bytes used by the UTF-8 character at byte i in s
-- also doubles as a UTF-8 character validator
local function utf8charbytes(s, i)
	-- argument defaults
	i = i or 1

	-- argument checking
	if type(s) ~= "string" then
		error("bad argument #1 to 'utf8charbytes' (string expected, got ".. type(s).. ")")
	end
	if type(i) ~= "number" then
		error("bad argument #2 to 'utf8charbytes' (number expected, got ".. type(i).. ")")
	end

	local c = strbyte(s, i)

	-- determine bytes needed for character, based on RFC 3629
	-- validate byte 1
	if c > 0 and c <= 127 then
		-- UTF8-1
		return 1

	elseif c >= 194 and c <= 223 then
		-- UTF8-2
		local c2 = strbyte(s, i + 1)

		if not c2 then
			error("UTF-8 string terminated early")
		end

		-- validate byte 2
		if c2 < 128 or c2 > 191 then
			error("Invalid UTF-8 character")
		end

		return 2

	elseif c >= 224 and c <= 239 then
		-- UTF8-3
		local c2 = strbyte(s, i + 1)
		local c3 = strbyte(s, i + 2)

		if not c2 or not c3 then
			error("UTF-8 string terminated early")
		end

		-- validate byte 2
		if c == 224 and (c2 < 160 or c2 > 191) then
			error("Invalid UTF-8 character")
		elseif c == 237 and (c2 < 128 or c2 > 159) then
			error("Invalid UTF-8 character")
		elseif c2 < 128 or c2 > 191 then
			error("Invalid UTF-8 character")
		end

		-- validate byte 3
		if c3 < 128 or c3 > 191 then
			error("Invalid UTF-8 character")
		end

		return 3

	elseif c >= 240 and c <= 244 then
		-- UTF8-4
		local c2 = strbyte(s, i + 1)
		local c3 = strbyte(s, i + 2)
		local c4 = strbyte(s, i + 3)

		if not c2 or not c3 or not c4 then
			error("UTF-8 string terminated early")
		end

		-- validate byte 2
		if c == 240 and (c2 < 144 or c2 > 191) then
			error("Invalid UTF-8 character")
		elseif c == 244 and (c2 < 128 or c2 > 143) then
			error("Invalid UTF-8 character")
		elseif c2 < 128 or c2 > 191 then
			error("Invalid UTF-8 character")
		end

		-- validate byte 3
		if c3 < 128 or c3 > 191 then
			error("Invalid UTF-8 character")
		end

		-- validate byte 4
		if c4 < 128 or c4 > 191 then
			error("Invalid UTF-8 character")
		end

		return 4

	else
		error("Invalid UTF-8 character")
	end
end

-- returns the number of characters in a UTF-8 string
local function utf8len(s)
	-- argument checking
	if type(s) ~= "string" then
		error("bad argument #1 to 'utf8len' (string expected, got ".. type(s).. ")")
	end

	local pos = 1
	local bytes = strlen(s)
	local len = 0

	while pos <= bytes do
		len = len + 1
		pos = pos + utf8charbytes(s, pos)
	end

	return len
end

-- functions identically to string.sub except that i and j are UTF-8 characters
-- instead of bytes
local function utf8sub(s, i, j)
	-- argument defaults
	j = j or -1

	-- argument checking
	if type(s) ~= "string" then
		error("bad argument #1 to 'utf8sub' (string expected, got ".. type(s).. ")")
	end
	if type(i) ~= "number" then
		error("bad argument #2 to 'utf8sub' (number expected, got ".. type(i).. ")")
	end
	if type(j) ~= "number" then
		error("bad argument #3 to 'utf8sub' (number expected, got ".. type(j).. ")")
	end

	local pos = 1
	local bytes = strlen(s)
	local len = 0

	-- only set l if i or j is negative
	local l = (i >= 0 and j >= 0) or utf8len(s)
	local startChar = (i >= 0) and i or l + i + 1
	local endChar   = (j >= 0) and j or l + j + 1

	-- can't have start before end!
	if startChar > endChar then
		return ""
	end

	-- byte offsets to pass to string.sub
	local startByte, endByte = 1, bytes

	while pos <= bytes do
		len = len + 1

		if len == startChar then
			startByte = pos
		end

		pos = pos + utf8charbytes(s, pos)

		if len == endChar then
			endByte = pos - 1
			break
		end
	end

	return strsub(s, startByte, endByte)
end

----------------------------------------------------------------------------------------------------------------------
-- функция по разбивке большого сообщения (>255 символов) на кучку мелкий сообщений по 255 символов макс, вернет таблицу с четко упорядоченными по индексу числовыми ключами и значениями-сообщениями
----------------------------------------------------------------------------------------------------------------------
local function splitStringForChat(str)
  local substrings = {}
  local length = utf8len(str)
  local currentIndex = 1
  while currentIndex <= length do
      local substring = utf8sub(str, currentIndex, currentIndex + 127)
      table.insert(substrings, substring)
      currentIndex = currentIndex + 128
  end
  return substrings
end

local function getGroupTypeAndMaxUnits()
  local groupType,maxUnits
  if UnitInRaid('player') then
    maxUnits=GetNumRaidMembers()
    groupType='raid'
  else
    maxUnits=GetNumPartyMembers()
    groupType='party'
  end
  return groupType,maxUnits
end

----------------------------------------------------------------------------------------------------------------------
-- функция по добавки в очередь сообщений
----------------------------------------------------------------------------------------------------------------------
local function addMessageToQueue(fullMsg,_name,_channel)
  if not fullMsg or (not _name and not _channel) then return end
  local msgParts = splitStringForChat(fullMsg)
  for _, msgPart in ipairs(msgParts) do 
    local _msg = { msg = msgPart, name = _name, channel = _channel }
    if _name then
      table.insert(messageSendQueuePM,_msg) -- для отправки в пм добавляем сообщение и ник в таблицу очереди
    elseif _channel and (_channel:lower()=="raid" or _channel:lower()=="party" or _channel:lower()=="raid_warning") then
      --table.insert(messageSendQueueGroup,_msg)
      SendChatMessage(msgPart,_channel) -- если канал рейд/группа то отправляем сразу так как от спама туда мута не будет
    end
  end
end

-----------------------------------------------------------------------------
-- мигание окна в панели задач + фокус (awesomewotlk) 
-----------------------------------------------------------------------------
local function func_flashWindow(focusWindow)
  if not settings["enableFlashWindow"] then return end
  if FlashWindow~=nil and IsWindowFocused~=nil and not IsWindowFocused() then
    FlashWindow()
    if focusWindow and FocusWindow~=nil then
      FocusWindow()
    end
  end
end

--------------------------------------------------------------------------------------------------------
-- всплывающий по центру текст по типу оповещения для рейда
--------------------------------------------------------------------------------------------------------
local function func_alert(text,textcolor,startTextSize,textDuration,flashColor,flashDuration,edgeFlashOnly,enableFlash,enableSound,soundPath,soundPathTwo,maxTextSize)
  --if func_Alert then
  --  func_Alert(text,textcolor,startTextSize,textDuration,flashColor,flashDuration,edgeFlashOnly,enableFlash,enableSound,soundPath,soundPathTwo,maxTextSize)
  --else
    RaidNotice_AddMessage(RaidWarningFrame, text, ChatTypeInfo["RAID_WARNING"]) 
    --PlaySoundFile([[Sound\Interface\RaidBossWarning.wav]])
  --end
end

--------------------------------------------------------------------------------------------------------
-- функция по отправке ников при включенной синхронизации мужикам использующим аддон в ги/рейде/пати/избранным
--------------------------------------------------------------------------------------------------------
local function sendSync(msg)
  --if not sdasdsad then return end -- test
  --[[if msg and msg ~= "" and settings["enableSendNamesSync"] then -- [Не протестировано] разкомментировать как будет допилено
    SendAddonMessage('TBL_petuh_added_send_sync',msg,'raid') 
    SendAddonMessage('TBL_petuh_added_send_sync',msg,'party') 
    SendAddonMessage('TBL_petuh_added_send_sync',msg,'guild') 
    for name in pairs(settings["sendSyncNamesList"]) do
       SendAddonMessage('TBL_petuh_added_send_sync',msg,'whisper',name)
    end
  end]]
end

------------------------------------------------------------------------------------------------------
-- ник для чата, вернет строку: хекс цвет класса (если известен) + ник с гиперссылкой без кавычек [ ]
------------------------------------------------------------------------------------------------------
local function colorName(name,unitid,unknownColor,hyperLink)
  --local classColor = classColors[select(2,GetPlayerInfoByGUID(guid))]
  local _name = name
  if hyperLink==nil then 
    hyperLink=1 
  end
  if hyperLink then
    _name = "|Hplayer:".._name.."|h".._name.."|h"
  end
  local classColor
  if not _name and unitid then
    _name = UnitName(unitid)
  end
  if (not _name or _name == "" or _name == STRING_SCHOOL_UNKNOWN) then 
    return ""
  end
  if unitid then
    classColor = classColors[select(2,UnitClass(unitid))] or unknownColor or "ffffff"
  elseif name then
    classColor = classColors[select(2,UnitClass(name))] or unknownColor or "ffffff"
  else
    classColor = "ffffff"
  end
  return "|ccc"..classColor.._name.."|r"
end

--------------------------------------------------------------------------------------------------------
-- если ник есть в чс-е то функция вернет заметку даже если та пустая, иначе nil
--------------------------------------------------------------------------------------------------------
local function isBlacklistedName(name)
  if not name then return nil end
  local lname=name:lower()
  if blacklistedNamesCache[lname] then 
    return blacklistedNamesCache[lname]  -- после первой проверки на наличие ника в чс - ник будет помещен в кэш чтобы не проверять его вновь и вновь на то же самое наличие в чс но в большом списке из тысяч ников бесчисленное множество раз
  elseif notBlacklistedNamesCache[lname]==true then
    return nil
  end
  local note
  if settings["petuhNameNoteList"][lname] then
    note = settings["petuhNameNoteList"][lname]
  elseif settings["checkNamesInRattBlacklist"] and ns.RattBlackListNamesList and ns.RattBlackListNamesList[lname] then
    note = "в чс у Ratt-а"
    if isNotBlank(ns.RattBlackListNamesList[lname]) then
      note = note..", "..ns.RattBlackListNamesList[lname]
    end
  end
  if note then 
    blacklistedNamesCache[name]=note
  else
    notBlacklistedNamesCache[name]=true
  end
  return note
end

local function removeNameFromBlacklist(name)
  if name and utf8len(name) > 1 and utf8len(name) <= 12 then
    local lname=name:lower()
    settings["petuhNameNoteList"][lname] = nil
    testlog("["..colorName(name).."] получил |cff00ff00зелёный свет|r")
    if settings["checkNamesInRattBlacklist"] and ns.RattBlackListNamesList and ns.RattBlackListNamesList[name] then 
      testlog("PS: ["..colorName(name).."] находится в чс Ratt-a, это означает что после релога, при включенной опции блеклиста от мужика Ratt-а, челик вновь будет в чс")
      ns.RattBlackListNamesList[name]=nil
      ns.RattBlackListNamesList[lname]=nil
    end
    blacklistedNamesCache[lname]=nil
    notBlacklistedNamesCache[lname]=true
  end
end

local function addNameToBlacklist(name,note)
  if name and utf8len(name) > 1 and utf8len(name) <= 12 then
    local lname=name:lower()
    if isBlacklistedName(name) then
      if isNotBlank(note) then
        testlog("["..colorName(name).."] - чс заметка обновлена: [|cffff0000"..note.."|r]")
      else
        testlog("["..colorName(name).."] - чс заметка обновлена на пустую")
      end
    else
      if isNotBlank(note) then
        testlog("["..colorName(name).."] - добавлен в список чмошников, заметка: [|cffff0000"..note.."|r]")
      else
        testlog("["..colorName(name).."] - добавлен в список чмошников без заметки")
      end
    end
    settings["petuhNameNoteList"][lname] = note or ""
    --func_alert("|cff00bbee"..ADDON_SHORT_NOT_NAME_CHAT_ONLY.."|r ["..colorName(name).."] - [|cffff0000"..note.."|r]")
    blacklistedNamesCache[lname] = note or ""
    notBlacklistedNamesCache[lname]=nil
  end
end

local function removeNormalNote(name)
  if name and utf8len(name) > 1 and utf8len(name) <= 12 and settings["normalNameNoteList"][name:lower()] then
    testlog("["..colorName(name).."] - простая заметка удалена")
    settings["normalNameNoteList"][name:lower()] = nil
    --func_alert("|cff00bbee"..ADDON_SHORT_NOT_NAME_CHAT_ONLY.."|r ["..colorName(name).."] - простая заметка удалена")
  end
end

local function addNameToNormalNoteList(name,note)
  if name and utf8len(name) > 1 and utf8len(name) <= 12 and note then
    if note == "" then
      removeNormalNote(name)
    elseif settings["normalNameNoteList"][name:lower()] then
      testlog("["..colorName(name).."] - простая заметка обновлена: ["..note.."]")
    else
      testlog("["..colorName(name).."] - простая заметка: ["..note.."]")
    end
    settings["normalNameNoteList"][name:lower()] = note
    --func_alert("|cff00bbee"..ADDON_SHORT_NOT_NAME_CHAT_ONLY.."|r ["..colorName(name).."] - ["..note.."]")
  end
end

----------------------------------------------------------------------------------------------------
-- анонс чс-ника, срабатывает однократно, но только до релога
----------------------------------------------------------------------------------------------------
local function AnnounceIfBlacklisted(name)
  local note = name and isBlacklistedName(name)
  
  if note and not okPonyatno[name:lower()] then
    --print(okPonyatno[name:lower()])
    
    local msg = "|cff00bbee"..ADDON_SHORT_NOT_NAME_CHAT_ONLY.."|r |cffffff22[|r"..colorName(name).."|cffffff22]|r"
    local msgRaid = ""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Долбоёб детектед: ["..name.."]"
    
    if UnitInRaid(name) or UnitInParty(name) then
      msg = msg .. " |cffffff22в группе|r"
      --msgRaid = msgRaid .. " в группе"
    else
      msg = msg .. " |cffffff22ливнула группу|r"
    end
    
    if isNotBlank(note) then 
      msgRaid = msgRaid .. " - "..note..""
      msg = msg .. " |cffffff22[|r|cffff0000"..note.."|r|cffffff22]|r"
    else
      --msgRaid = msgRaid .. " (без заметки)"
      msg = msg .. "|cffffff22 (без заметки)|r"
    end
    
    local groupType,maxUnits = getGroupTypeAndMaxUnits() 
    if settings["enableAutoAnnounceToGroup"] and groupType and maxUnits > 0 and (IsRaidLeader() or IsRaidOfficer()) then -- авто-анонс в группу/рейд если включена опция и мы асист/лидер
      if groupType=="raid" and UnitInRaid('player') then
        groupType="RAID_WARNING"
      end
      local maxMessageRepeat = 3
      local msgParts = splitStringForChat(msgRaid)
      --if #msgParts > 1 then maxMessageRepeat = math.ceil(maxMessageRepeat/#msgParts) end
      if #msgParts > 1 then maxMessageRepeat = 1 end
      for i=1,maxMessageRepeat do
        addMessageToQueue(msgRaid,nil,groupType)
      end
    end
    
    -- диалог окно по центру при включенной опции
    if settings["enableStaticPopupAndCenterTextAlertForBlacklistedInGroup"] then
      --print(name:lower(),"добавление в очередь анонсов")
      if not (StaticPopup_Visible('PETUH_NOTE_POPUP') or StaticPopup_Visible('PETUH_NOTE_SYNC_ACCEPT_CONFIRM_POPUP') or StaticPopup_Visible('PETUH_NOTE_SYNC_RECEIVED_POPUP') or StaticPopup_Visible('PETUH_NOTE_ALERT_IN_GROUP_POPUP') or StaticPopup_Visible('NORMAL_NOTE_POPUP')) then
        local popup = StaticPopup_Show("PETUH_NOTE_ALERT_IN_GROUP_POPUP", name) -- показ чс-ника + заметки в окне по центру (только если нет открытого по центру диалогового окна от аддона)
        if popup then 
          popup.data = name 
          popupNamesQueue[name:lower()]=nil
          okPonyatno[name:lower()]=true
          --print(name:lower(),"убран из очереди анонсов")
          --func_alert(msg, {1,1,1}, nil, 10, {1,1,1}, 2, false, false, false, nil,nil,18) 
          PlaySoundFile([[Sound\Interface\RaidBossWarning.wav]])
          --print("-- показ чс-ника + заметки в окне по центру (только если нет открытого по центру другого окна от аддона)")
        end
      else
        popupNamesQueue[name] = { note = note or ""} -- добавление в очередь анонсов если есть диалоговое окно по центру от аддона
      end
    end
    
    --RaidNotice_AddMessage(RaidWarningFrame, "|cffff5500"..msg.."|r", ChatTypeInfo["RAID_WARNING"]) 
    func_flashWindow(1)
    print(msg) -- принт инфы о чс-нике, только себе в чат
  end
end

local function checkGroupNamesIsBlacklisted()
  local groupType,maxUnits = getGroupTypeAndMaxUnits()
  if maxUnits == 0 then return end
  for i=1,maxUnits do
      local name = UnitName(groupType..i)
      AnnounceIfBlacklisted(name)
   end
end

local function task_onUpdate()
  if throttleTime > GetTime() then return end
  
  throttleTime = GetTime() + 1
  --print(1)
  
  ----------------------------------------------------------------------------------------------------------------------
  -- чтобы уменьшить вероятность получить авто-мут: отправка сообщений будет происходить с перерывом раз в 1 сек
  ----------------------------------------------------------------------------------------------------------------------
  if #messageSendQueuePM > 0 then
    local entry = messageSendQueuePM[1]
    local msg = entry.msg
    local name = entry.name
    SendChatMessage(msg,"WHISPER",nil,name)
    table.remove(messageSendQueuePM, 1)
  end
  
  --------------------------------------------------------------------------------------------
  -- очередь "обработки" ников: для появления в диалоговом окне по центру по очереди
  --------------------------------------------------------------------------------------------
  if StaticPopup_Visible('PETUH_NOTE_POPUP') or StaticPopup_Visible('PETUH_NOTE_SYNC_ACCEPT_CONFIRM_POPUP') or StaticPopup_Visible('PETUH_NOTE_SYNC_RECEIVED_POPUP') or StaticPopup_Visible('PETUH_NOTE_ALERT_IN_GROUP_POPUP') or StaticPopup_Visible('NORMAL_NOTE_POPUP') then
    --print("ожидание пока любого типа окно по центру от аддона будет закрыто")
    return -- ожидание пока любого типа окно по центру от аддона будет закрыто 
  end
  
  for name,data in pairs(popupNamesQueue) do
    local note = data.note or ""
    local lname=name:lower()
    local nameWhoSend = receivedBySyncNamesQueue[lname] and receivedBySyncNamesQueue[lname].nameWhoSend
    
    if nameWhoSend and settings["declineSyncNamesList"][nameWhoSend] then
      popupNamesQueue[name]=nil
      receivedBySyncNamesQueue[lname]=nil
    elseif nameWhoSend and not settings["enableReceiveNamesSync"] then
      popupNamesQueue[name]=nil
      receivedBySyncNamesQueue[lname]=nil
    elseif nameWhoSend and settings["acceptSyncNamesList"][nameWhoSend] then
      if settings["autoAcceptSyncNamesList"][nameWhoSend] then
        addNameToBlacklist(name,note)
        testlog("Чс-заметка для помойки ["..colorName(name).."] обновлена: ["..note.."] (авто)")
        sendSync(lname..";"..note)
        popupNamesQueue[name]=nil
        receivedBySyncNamesQueue[lname]=nil
      else
        local popup = StaticPopup_Show("PETUH_NOTE_SYNC_RECEIVED_POPUP", name)
        if popup then 
          testlog("Поступило предложение от ["..colorName(nameWhoSend).."] добавить ["..colorName(name).."] в чс, согласны?")
          popup.data = name 
          popup.data2 = nameWhoSend
          popup.wideEditBox:HighlightText()
          if note then
            popup.wideEditBox:SetText(note)
          end
        end
        popupNamesQueue[name]=nil
        receivedBySyncNamesQueue[lname]=nil
      end
    elseif not nameWhoSend and (UnitInRaid(name) or UnitInParty(name)) then -- test
      -- local popup = StaticPopup_Show("PETUH_NOTE_ALERT_IN_GROUP_POPUP", name) -- показ чс-ника + заметки в окне по центру (только если нет открытого по центру другого окна от аддона)
      -- if popup then 
        -- popup.data = name 
      -- end
      --print(name,"показ чс-ника + заметки в окне по центру (очередь)")
      AnnounceIfBlacklisted(name)
      popupNamesQueue[name]=nil
    end
  end
  
  -- if throttleTimeGroup <= GetTime() then 
    -- throttleTimeGroup = GetTime() + 0.1
    -- print(1,#messageSendQueueGroup)
    -- for i,v in ipairs(messageSendQueueGroup) do
      -- local msg = v.msg
      -- local chan = v.channel
      -- SendChatMessage(v.msg,v.channel)
      -- print(2)
      -- --messageSendQueueGroup[k]=nil
      -- table.remove(messageSendQueueGroup, i)
      -- return
    -- end
  -- end
end

testBlacklist:SetScript("OnUpdate", task_onUpdate)

----------------------------------------------------
-- эвенты
----------------------------------------------------
local function task_OnEvent(self, event, ...)
  if (event == "ADDON_LOADED" and arg1 == ADDON_NAME) then 
    self:createDefaultConfig() -- инициализация дефолт конфига
    self:createSettingsUI() -- инициализация юи для конфига

    -- for k, v in pairs(settings) do
      -- print('|ccc55ffaa' .. ADDON_NAME .. ':|r |cccff3355' .. k .. ':|r |ccc55ffaa' .. tostring(v) .. '|r')
    -- end

    for name,note in pairs(settings["petuhNameNoteList"]) do
      sendSync(name:lower()..";"..note) -- отправка синхронизации
    end
  elseif (event == "READY_CHECK") then -- автоотмена рч от чс-ника
    local name = arg1:lower()
    if isBlacklistedName(name) then 
      if settings["enableAutoDeclineInvites"] then
        ConfirmReadyCheck(false) 
      end
      --print('|cff00bbee"..ADDON_SHORT_NOT_NAME_CHAT_ONLY.."|r Автоотмена рч от дауна',arg1)
    else
      func_flashWindow()
    end
  elseif (event == "PLAYER_ENTERING_WORLD") then -- чек группы на чс при входе/после релога
    self:UnregisterEvent("PLAYER_ENTERING_WORLD")
    playerName=UnitName('player')
    if UnitInRaid('player') then 
      checkGroupNamesIsBlacklisted()
    elseif GetRealNumPartyMembers() > 0 then
      checkGroupNamesIsBlacklisted()
      self:RegisterEvent("RAID_ROSTER_UPDATE")
    else
      self:RegisterEvent("RAID_ROSTER_UPDATE")
      self:RegisterEvent("PARTY_MEMBERS_CHANGED")
    end
  elseif (event == "RAID_ROSTER_UPDATE") then -- проверка рейда на чс при присоединении
    self:UnregisterEvent("RAID_ROSTER_UPDATE")
    --print(event)
    checkGroupNamesIsBlacklisted()
  elseif (event == "PARTY_MEMBERS_CHANGED") then -- проверка пати на чс при присоединении
    self:UnregisterEvent("PARTY_MEMBERS_CHANGED")
    --print(event)
    checkGroupNamesIsBlacklisted()
  elseif (event == "CHAT_MSG_SYSTEM") then -- авто-анонс чс-ника в группе по системных сообщениям во время лива/присоединения 
    if arg1:find(MSG_name_has_left_the_raid_group) then		
      local Name = string.split(" ", arg1, 2);
      AnnounceIfBlacklisted(Name)
    elseif arg1:find(MSG_name_has_joined_the_raid_group) then				
      local Name = string.split(" ", arg1, 2);
      AnnounceIfBlacklisted(Name)
    elseif arg1:find(MSG_name_joins_the_party) then
      local Name = string.split(" ", arg1, 2);
      AnnounceIfBlacklisted(Name)
    elseif arg1:find(MSG_You_have_left_the_raid_group) then	
      self:RegisterEvent("RAID_ROSTER_UPDATE")
    elseif arg1:find(MSG_You_leave_the_group) then
      self:RegisterEvent("PARTY_MEMBERS_CHANGED")
    elseif arg1:find(MSG_You_have_joined_a_raid_group) then
      self:UnregisterEvent("PARTY_MEMBERS_CHANGED")
      self:UnregisterEvent("RAID_ROSTER_UPDATE")
      checkGroupNamesIsBlacklisted()
    elseif arg1:find(MSG_name_leaves_the_party) then
      local Name = string.split(" ", arg1, 2);
      AnnounceIfBlacklisted(Name)
    elseif arg1:find(MSG_Your_group_has_been_disbanded) then
      self:RegisterEvent("PARTY_MEMBERS_CHANGED")
      --self:RegisterEvent("RAID_ROSTER_UPDATE")
    end
  elseif (event == "MODIFIER_STATE_CHANGED" and StaticPopup_Visible("PETUH_NOTE_SYNC_ACCEPT_CONFIRM_POPUP")) then -- подмена текста кнопки из окна по центру с согласием на синхронизацию от конкретного ника при зажатом модификаторе
    if arg2 == 1 then
      _G[StaticPopup_Visible("PETUH_NOTE_SYNC_ACCEPT_CONFIRM_POPUP").."Button1"]:SetText("Соглы|cffff5511+автоматом|r")
    else
      _G[StaticPopup_Visible("PETUH_NOTE_SYNC_ACCEPT_CONFIRM_POPUP").."Button1"]:SetText("Даю согласие")
    end
  -- [Не протестировано] разкомментировать как будет допилено
  --[[elseif (event == "CHAT_MSG_ADDON" and arg1 == 'TBL_petuh_added_send_sync' and settings["enableReceiveNamesSync"] and arg4 ~= UnitName("player") and not settings["declineSyncNamesList"][arg4]) then 
    local t = split(arg2, ';') -- синхронизация (входящая)
    local name = t[1]
    local _note = t[2]
    if (name and name~="" and utf8len(name) >= 2 and utf8len(name) <= 12 and not popupNamesQueue[name] and not isBlacklistedName(name)) then 
      popupNamesQueue[name] = { note = _note or ""}
      receivedBySyncNamesQueue[name:lower()] = { note = _note or "", nameWhoSend = arg4 }
    end]]
  elseif (event == "DUEL_REQUESTED") then -- авто-отмена дуэли
    local name = arg1:lower()
    local note = isBlacklistedName(name)
    if note then
      if not spamCount[name] then 
        spamCount[name]=1 
      else 
        spamCount[name]=spamCount[name]+1
      end
      if settings["enableAutoDeclineInvites"] then
        StaticPopup_Hide("DUEL_REQUESTED")
        CancelDuel()
      end
      if petuhNotifyMsgCD <= GetTime() and settings["enableAutoRespond"] then
        petuhNotifyMsgCD = GetTime() + 30
        if isNotBlank(note) then
          addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш вызов на дуэль был автоматически отклонён, причина следующая, вы: "..note.."",arg1)
          --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш вызов на дуэль был автоматически отклонён, причина следующая, вы: "..note.."","WHISPER",nil,arg1)
          --print('петух пытался кинуть инв ги',name,note)
        else
          addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш вызов на дуэль был автоматически отклонён, на то есть причина",arg1)
          --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш вызов на дуэль был автоматически отклонён, на то есть причина","WHISPER",nil,arg1)
          --print('петух пытался кинуть инв ги',name)
        end
      end
      if spamCount[name] > 1 and settings["enableAutoRespond"] and settings["addIgnoreAfterSpam"] then
        addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." В случае дальнейшего спама вы автоматически отправитесь в чс",arg1)
        --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." В случае дальнейшего спама вы автоматически отправитесь в чс","WHISPER",nil,arg1)
      end
      if spamCount[name] > 2 then
        if settings["addIgnoreAfterSpam"] and GetNumIgnores() < 50 then
          testlog("Помойка ["..colorName(arg1).."] отправлена в игровой чс за наглый спам дуэлями")
          AddIgnore(arg1)
        end
      end
    else
      func_flashWindow()
    end
  elseif (event == "CHAT_MSG_WHISPER") then -- авто-ответ на пм
    local name = arg2:lower()
    local note = isBlacklistedName(name)
    if note and settings["hideMessagesFromBlacklistedNames"] then
      if settings["enableChatNotifyOnMessageHide"] then
        testlog("|cffff0000Входящее сообщение от чс-ника скрыто|r")
      end
      if not spamCount[name] then 
        spamCount[name]=1 
      else 
        spamCount[name]=spamCount[name]+1
      end
      if petuhNotifyMsgCD <= GetTime() and settings["enableAutoRespond"] then
        petuhNotifyMsgCD = GetTime() + 30
        if isNotBlank(note) then
          --print('петух пытался написать пм',arg1,note)
          --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваше сообщение не было отображено в интерфейсе пользователя, причина следующая, вы: "..note.."","WHISPER",nil,arg2)
          addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваше сообщение не было отображено в интерфейсе пользователя, причина следующая, вы: "..note.."",arg2)
        else
          --print('петух пытался написать пм',arg1)
          --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваше сообщение не было отображено в интерфейсе пользователя, на то есть причина","WHISPER",nil,arg2)
          addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваше сообщение не было отображено в интерфейсе пользователя, на то есть причина",arg2)
        end
      end
      if spamCount[name] > 1 and settings["enableAutoRespond"] and settings["addIgnoreAfterSpam"] then
        --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." В случае дальнейшего спама вы автоматически отправитесь в чс","WHISPER",nil,arg2)
        addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." В случае дальнейшего спама вы автоматически отправитесь в чс",arg2)
      end
      if spamCount[name] > 2 then
        if settings["addIgnoreAfterSpam"] and GetNumIgnores() < 50 then
          testlog("Помойка ["..colorName(arg2).."] отправлена в игровой чс за наглый спам в пм")
          AddIgnore(arg2)
        end
      end
    else
      func_flashWindow()
    end
  elseif (event == "GUILD_INVITE_REQUEST") then -- авто-отмена инвайта ги
    local name = arg1:lower()
    local note = isBlacklistedName(name)
    if note then
      if not spamCount[name] then 
        spamCount[name]=1 
      else 
        spamCount[name]=spamCount[name]+1
      end
      if settings["enableAutoDeclineInvites"] then
        StaticPopup_Hide("GUILD_INVITE")
        DeclineGuild()
      end      
      if petuhNotifyMsgCD <= GetTime() and settings["enableAutoRespond"] then
        petuhNotifyMsgCD = GetTime() + 30
        if isNotBlank(note) then
          --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш инвайт был автоматически отклонён, причина следующая, вы: "..note.."","WHISPER",nil,arg1)
          --print('петух пытался кинуть инв ги',name,note)
          addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш инвайт был автоматически отклонён, причина следующая, вы: "..note.."",arg1)
        else
          --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш инвайт был автоматически отклонён, на то есть причина","WHISPER",nil,arg1)
          --print('петух пытался кинуть инв ги',name)
          addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш инвайт был автоматически отклонён, на то есть причина",arg1)
        end
      end
      if spamCount[name] > 1 and settings["enableAutoRespond"] and settings["addIgnoreAfterSpam"] then
        --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." В случае дальнейшего спама вы автоматически отправитесь в чс","WHISPER",nil,arg1)
        addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." В случае дальнейшего спама вы автоматически отправитесь в чс",arg1)
      end
      if spamCount[name] > 2 then
        if settings["addIgnoreAfterSpam"] and GetNumIgnores() < 50 then
          testlog("Помойка ["..colorName(arg1).."] отправлена в игровой чс за наглый спам инвайтами в ги")
          AddIgnore(arg1)
        end
      end
    else
      func_flashWindow()
    end
  elseif (event == "PARTY_INVITE_REQUEST") then -- авто-отмена инвайта в группу
    local name = arg1:lower()
    local note = isBlacklistedName(name)
    if note then
      if not spamCount[name] then 
        spamCount[name]=1 
      else 
        spamCount[name]=spamCount[name]+1
      end
      if settings["enableAutoDeclineInvites"] then
        StaticPopup_Hide("PARTY_INVITE")
        DeclineGroup()
      end      
      if petuhNotifyMsgCD <= GetTime() and settings["enableAutoRespond"] then
        petuhNotifyMsgCD = GetTime() + 30
        if isNotBlank(note) then
          --print('петух пытался кинуть инвайт пати',name,note)
          --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш инвайт был автоматически отклонён, причина следующая, вы: "..note.."","WHISPER",nil,arg1)
          addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш инвайт был автоматически отклонён, причина следующая, вы: "..note.."",arg1)
        else
          --print('петух пытался кинуть инвайт пати',name)
          --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш инвайт был автоматически отклонён, на то есть причина","WHISPER",nil,arg1)
          addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Ваш инвайт был автоматически отклонён, на то есть причина",arg1)
        end
      end
      if spamCount[name] > 1 and settings["enableAutoRespond"] and settings["addIgnoreAfterSpam"] then
        --SendChatMessage(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." В случае дальнейшего спама вы автоматически отправитесь в чс","WHISPER",nil,arg1)
        addMessageToQueue(""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." В случае дальнейшего спама вы автоматически отправитесь в чс",arg1)
      end
      if spamCount[name] > 2 then
        if settings["addIgnoreAfterSpam"] and GetNumIgnores() < 50 then
          testlog("Помойка ["..colorName(arg1).."] отправлена в игровой чс за наглый спам инвайтами в группу")
          AddIgnore(arg1)
        end
      end
    else
      func_flashWindow()
    end
  end
end

testBlacklist:SetScript("OnEvent", task_OnEvent)

----------------------------------------------------
-- чат фильтр для исключения показа сообщений при соответствующих настройках и заданых фильтрах по никам/сообщениям/их составу(ключевых фразах)
----------------------------------------------------
local messageIsDeletedNotification = {}

local function deletedMsgIsNotificated(msg)
  for k, cachedMsg in pairs(messageIsDeletedNotification) do
    if cachedMsg.name == msg.name and cachedMsg.event == msg.event and cachedMsg.text == msg.text and cachedMsg.id == msg.id then
        return true
    end
  end
  table.insert(messageIsDeletedNotification,msg)
  return false
end

local function messageInCache(msg)
  local msgFound
  for k, cachedMsg in pairs(chatMessagesCache) do
    if (cachedMsg.time + settings["spamFilterCDMaxSecNum"]) <= GetTime() then
      chatMessagesCache[k]=nil
    end
    if chatMessagesCache[k] and cachedMsg and cachedMsg.name == msg.name and cachedMsg.event == msg.event and cachedMsg.text == msg.text then
        msgFound = cachedMsg 
    end
  end
  if not msgFound then
    table.insert(chatMessagesCache,msg)
  end
  return msgFound
end

local function condition_hideSpamMessage(msg)
  local newMsg = msg
  if settings["enableSpamFilter"] and newMsg.name and newMsg.name~=playerName and (not settings["enableSpamFilterOnlyLFG"] or newMsg.event == "CHAT_MSG_CHANNEL") then --todo
    local oldSameMsg = messageInCache(newMsg)
    if oldSameMsg then
      if newMsg.id~=oldSameMsg.id then
        if settings["enableChatNotifyOnMessageHide"] and not deletedMsgIsNotificated(newMsg) then
          testlog("|cffff0000Сообщение ["..newMsg.text.."] скрыто из канала чата (спам фильтр)|r")
        end
        return true
      end
    end
  end
  return false
end

local function condition_messageFilter(msg)
  local newMsg = msg
  if (settings["hideMessagesFromBlacklistedNames"] and isBlacklistedName(newMsg.name)) 
  or (settings["enableMessageContainFiltering"] and textContainsKeyword(newMsg.text:lower(),settings["petuhMsgContainsList"])) 
  or (settings["enableNameContainFiltering"] and textContainsKeyword(newMsg.name,settings["petuhNameContainsList"])) 
  then
    --print("|ccc777777["..date("%H:%M:%S", time()).."]|r|cffff0000Сообщение скрыто (фильтр по никам/ключевым фразам)|r")
    if settings["enableChatNotifyOnMessageHide"] and not deletedMsgIsNotificated(newMsg) then
      testlog("|cffff0000Сообщение ["..newMsg.text.."] скрыто из канала чата (фильтр по никам/ключевым фразам)|r")
    end
    return true
  end
  return false
end

local function chatFilter(self, event, msg, author, ...)
  if not (msg and author) then return end
  local id = select(9,...)
  local newMsg = { time = GetTime(), name = author, event = event, text = msg, id = id }

  if condition_messageFilter(newMsg) == true then
    return true
  end
  
  if condition_hideSpamMessage(newMsg) == true then
    return true
  end
end

for _,v in pairs(trackingChatEventsToBlock) do
  ChatFrame_AddMessageEventFilter(v, chatFilter)
end

-- =============================================================================================================
-- всплывающие по центру диалоговые окна с функциями принять/отменить/ввести заметку/удалить заметку/итдитп
-- =============================================================================================================
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- окно с запросом на разрешение принимать ники помоек от другого игрока (потенциального юзера аддона (при вкл синхронизации))
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
StaticPopupDialogs['PETUH_NOTE_SYNC_ACCEPT_CONFIRM_POPUP'] = {
	text		= "|cff00bbee[|r|cff00ff00%s|r|cff00bbee] хочет шарить нам ники петухов для чс. Бтв: с зажатым модификатором клафиш (SHIFT/ALT/CTRL) при нажатии|r |cff22ddcc\"Принять\"|r |cff00bbeeвключится режим автопринятия ВСЕХ ников от данного юзера.|r",
	button1		= "Даю согласие",
	button2		= "Не принимать от этого",
  button3		= "Скипнуть",
	maxLetters	= 300,
	exclusive	= 0,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
  showAlert = 1,
  notClosableByLogout = 1,
  
	OnHide = function(self, data)
    self:Hide()
	end,

	OnAccept = function(self, data, note)
    settings["acceptSyncNamesList"][data]=true
    if IsModifierKeyDown() then
      settings["autoAcceptSyncNamesList"][data]=true
      testlog("|cffff0000ВНИМАНИЕ:|r |cff00bbeeвсе ники+заметки чс-ников, которые будет шарить методом синхронизации [|r"..colorName(data).."|cff00bbee] вы будете принимать к себе в базу|r |cffff0000автоматом, без проверки|r. |cff00bbeeДля отмены действия ввести в чат команду:|r |cff22ddcc/tblautosyncdel "..data.."|r")
    end
    self:Hide()
	end,
  
	OnCancel = function(self, data, data2)
    settings["declineSyncNamesList"][data]=true
    self:Hide()
	end,
  
	OnAlt = function(self, data, note)
    self:Hide()
	end,
  
	EditBoxOnEscapePressed = function(self) 
    self:GetParent():Hide() 
  end,
}	

------------------------------------------------------------------------------------------------------------------------
-- окно предложения добавить помойку в чс от других потенциальных юзеров аддона (при вкл синхронизации)
------------------------------------------------------------------------------------------------------------------------
StaticPopupDialogs['PETUH_NOTE_SYNC_RECEIVED_POPUP'] = {
	text		= "|cff00bbeeПоступило предложение добавить [|r|cffff0000%s|r|cff00bbee] в чс, соглы? Микро заметка(500 символов-фактов о персонаже, можно без):|r",
	button1		= "Добавить",
	button2		= "Отбой",
	maxLetters	= 300,
	exclusive	= 0,
  hasEditBox = 1,
  hasWideEditBox = 1,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
  showAlert = 1,
  notClosableByLogout = 1,
  
	OnShow = function(self, data)
    self.wideEditBox:HighlightText()
	end,
  
	OnHide = function(self, data)
    self:Hide()
	end,

	OnAccept = function(self, data, data2)
    local editBox = self.wideEditBox
    local text = editBox:GetText()
    addNameToBlacklist(data,text)
    self:Hide()
    sendSync(data:lower()..";"..text)
  end,
  
	OnCancel = function(self, data, data2) 
    self:Hide() 
  end,
  
  OnUpdate = function(self, elapsed)
    if self.data and self.data2 then
      local newText = "|cff00bbeeПоступило предложение от [|r"..colorName(self.data2).."|cff00bbee] добавить [|r"..colorName(self.data).."|cff00bbee] в чс, соглы? Микро заметка(500 символов-фактов о персонаже, можно без):|r"
      local oldText = self.text:GetText()
      if oldText~=newText then
        self.text:SetText(newText)
        StaticPopup_Resize(self, "PETUH_NOTE_SYNC_RECEIVED_POPUP")
      end
    end
  end,
  
	EditBoxOnEnterPressed = function(self, data)
    local editBox = self:GetParent().wideEditBox
    local text = editBox:GetText()
    addNameToBlacklist(data,text)
    self:GetParent():Hide()
    sendSync(data:lower()..";"..text)
  end,
  
	EditBoxOnEscapePressed = function(self) 
    self:GetParent():Hide() 
  end,
}	

------------------------------------------------------------
-- окно добавления/удаления/заметки для помойки в чс по центру экрана
------------------------------------------------------------
StaticPopupDialogs['PETUH_NOTE_POPUP'] = {
	text		= "|cff00bbeeДобавить [|r|cffff0000%s|r|cff00bbee] в чс? Микро заметка(500 символов-фактов о персонаже, можно без):|r",
	button1		= "Добавить в чс",
  button3		= "Убрать из чс",
	button2		= "Отбой",
	maxLetters	= 500,
	exclusive	= 0,
  hasEditBox = 1,
  hasWideEditBox = 1,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
  notClosableByLogout = 1,
  
	OnShow = function(self, data)
    local note = isBlacklistedName(data)
    if note then 
      self.wideEditBox:SetText(note)
    end
    self.wideEditBox:SetFocus()
    self.wideEditBox:HighlightText()
    nameToCheck,TBL_nameToCheck=nil,nil
	end,
  
	OnHide = function(self, data) 
  end,
  
	OnAccept = function(self, data, data2)
    local editBox = self.wideEditBox
    local text = editBox:GetText()
    local note = isBlacklistedName(data)
    if text~=note then
      addNameToBlacklist(data,text)
      sendSync(data:lower()..";"..text)
    end
    self:Hide()
  end,
  
  OnCancel = function(self, data, reason)
    if self.button2:GetText() == "Анонс в группу" then
      if data and reason == "clicked" then
        local groupType,maxUnits = getGroupTypeAndMaxUnits()
        if groupType and maxUnits > 0 then 
          local msgRaid = ""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Долбоёб детектед: ["..data.."]"
          local note = isBlacklistedName(data)
          if isNotBlank(note) then 
            msgRaid = msgRaid .. " - "..note..""
          else
            --msgRaid = msgRaid .. " (без заметки)"
          end
          if UnitInRaid('player') and (IsRaidLeader() or IsRaidOfficer()) then
            groupType = "RAID_WARNING"
          end
          local maxMessageRepeat = 3
          local msgParts = splitStringForChat(msgRaid)
          --if #msgParts > 1 then maxMessageRepeat = math.ceil(maxMessageRepeat/#msgParts) end
          if #msgParts > 1 then maxMessageRepeat = 1 end
          for i=1,maxMessageRepeat do
            addMessageToQueue(msgRaid,nil,groupType)
          end
        end
        return 1
      end
    else
      self:Hide()
    end
	end,
  
	OnAlt = function(self, data, data2)
    removeNameFromBlacklist(data)
    self:Hide()
	end,
  
  OnUpdate = function(self, elapsed)
    local name = self.data
    if name and name ~= "" and name ~= STRING_SCHOOL_UNKNOWN then
      local note = isBlacklistedName(name)
      if note then
        if UnitInRaid("player") or GetRealNumPartyMembers() > 0 then
          self.button2:SetText("Анонс в группу")
        else
          self.button2:SetText("Отбой")
        end
        if note~=self.wideEditBox:GetText() then
          self.button1:SetText("Обновить")
        else
          self.button1:SetText("Ок")
        end
        local newText = "|cff00bbee[|r"..colorName(name, nil, "ff0000").."|cff00bbee] |cffff0000числится в чс|r. Обновим заметку? Выпилим из чс? 500 символов-фактов о персонаже:|r"
        local oldText = self.text:GetText()
        if oldText~=newText then
          self.text:SetText(newText)
          --print("StaticPopup_Resize")
          StaticPopup_Resize(self, "PETUH_NOTE_POPUP")
        end
        if not self.button3:IsVisible() then 
          --print('self.button3:Show')
          self.button3:Show()
          nameToCheck = name
          local popup = StaticPopup_Show("PETUH_NOTE_POPUP",name)
          if popup then 
            popup.data = name 
            popup.wideEditBox:HighlightText()
            popup.wideEditBox:SetText(note)
            --print(popup.data,name)
          end
        end
      else
        self.button2:SetText("Отбой")
        self.button3:Disable() -- wtf
        self.button1:SetText("Добавить в чс")
        local newText = "|cff00bbee[|r"..colorName(name, nil, "ff0000").."|cff00bbee]|r |cff00ff00не числится в чс|r|cff00bbee. Добавить? Микро заметка(500 символов-фактов о персонаже, можно без):|r"
        local oldText = self.text:GetText()
        if oldText~=newText then
          self.text:SetText(newText)
          StaticPopup_Resize(self, "PETUH_NOTE_POPUP")
        end
      end
    end
  end,
  
	EditBoxOnEnterPressed = function(self, data)
    local editBox = self:GetParent().wideEditBox
    local text = editBox:GetText()
    local note = isBlacklistedName(data)
    if text~=note then
      addNameToBlacklist(data,text)
      sendSync(data:lower()..";"..text)
    end
    self:GetParent():Hide()
  end,
  
	EditBoxOnEscapePressed = function(self) 
    self:GetParent():Hide() 
  end,

  DisplayButton3 = function(self, data)
    print('nameToCheck:',nameToCheck or TBL_nameToCheck)
    return isBlacklistedName(nameToCheck)
  end,
}	

------------------------------------------------------------
-- окно по центру когда помойка в группе детектед
------------------------------------------------------------
StaticPopupDialogs['PETUH_NOTE_ALERT_IN_GROUP_POPUP'] = {
	text		= "\n|cff00bbeeПомойка в группе детектед:|r [|cffff0000%s|r|cff00bbee]|r\n\n\n",
	button1		= "Ок",
	button3		= "Кикнуть",
  button2		= "Отбой",
	exclusive	= 0,
	timeout = 0,
	whileDead = 1,
  showAlert = 1,
  notClosableByLogout = 1,
  
	OnShow = function(self, data) 
  end,
  
  OnUpdate = function(self, elapsed)
    if not StaticPopup_Visible('PETUH_NOTE_ALERT_IN_GROUP_POPUP') then return end -- test 
    local name = self.data
    if name and name ~= "" and name ~= STRING_SCHOOL_UNKNOWN then
      local note = isBlacklistedName(name)
      if note then
        if UnitInRaid("player") or GetRealNumPartyMembers() > 0 then
          self.button2:SetText("Анонс в группу")
        else
          self.button2:SetText("Отбой")
        end
        note = not isNotBlank(note) and ". Заметка пустая.|r" or "\nЗаметка:|r |cffff0000"..note.."|r"
        local newText = (UnitInRaid(name) or UnitInParty(name)) and "\n|cff00bbeeПомойка в группе детектед: [|r"..colorName(name).."|cff00bbee]"..note.."\n\n" or "\n|cff00bbeeПомойка ливнула группу: [|r"..colorName(name).."|cff00bbee]"..note.."\n\n"
        local oldText = self.text:GetText()
        if oldText~=newText then
          self.text:SetText(newText)
          StaticPopup_Resize(self, "PETUH_NOTE_ALERT_IN_GROUP_POPUP")
        end
        
        -- доп кнопка для рл/асиста - кик
        if IsRaidOfficer() or IsRaidLeader() then 
          self.button3:Enable() 
          if not self.button3:IsVisible() then 
            self.button3:Show()
            local popup = StaticPopup_Show("PETUH_NOTE_ALERT_IN_GROUP_POPUP",name)
            if popup then 
              popup.data = name 
              --print(popup.data,name)
            end
          end
        else
          self.button3:Disable() -- не рл и не асист? оф кнопки
        end
      else
        self.button2:SetText("Отбой")
      end
    end
  end,
  
	OnHide = function(self, data) 
  end,

	OnAccept = function(self, data) self:Hide() end,
  
	OnAlt = function(self, data)
    if data then
      UninviteUnit(data)
    end
    self:Hide()
	end,
  
  OnCancel = function(self, data, reason)
    if self.button2:GetText() == "Анонс в группу" then
      if data and reason == "clicked" then
        local groupType,maxUnits = getGroupTypeAndMaxUnits()
        if groupType and maxUnits > 0 then 
          local msgRaid = ""..ADDON_SHORT_NOT_NAME_CHAT_ONLY.." Долбоёб детектед: ["..data.."]"
          local note = isBlacklistedName(data)
          if isNotBlank(note) then 
            msgRaid = msgRaid .. " - "..note..""
          else
            --msgRaid = msgRaid .. " (без заметки)"
          end
          if UnitInRaid('player') and (IsRaidLeader() or IsRaidOfficer()) then
            groupType = "RAID_WARNING"
          end
          local maxMessageRepeat = 3
          local msgParts = splitStringForChat(msgRaid)
          --if #msgParts > 1 then maxMessageRepeat = math.ceil(maxMessageRepeat/#msgParts) end
          if #msgParts > 1 then maxMessageRepeat = 1 end
          for i=1,maxMessageRepeat do
            addMessageToQueue(msgRaid,nil,groupType)
          end
        end
        return 1
      end
    else
      self:Hide()
    end
	end,
  
  DisplayButton3 = function(self)
    return IsRaidOfficer() or IsRaidLeader()
  end,
}	

------------------------------------------------------------
-- кнопка "Заметка" в всплывающем меню правой кнопкой мыши
------------------------------------------------------------
StaticPopupDialogs['NORMAL_NOTE_POPUP'] = {
	text		= "|cff00bbeeЗаметка для игрока [|r%s|cff00bbee]:|r",
	button1		= "Применить",
	button2		= "Отбой",
  button3		= "Удалить",
	maxLetters	= 500,
	exclusive	= 0,
  hasEditBox = 1,
  hasWideEditBox = 1,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
  notClosableByLogout = 1,
  
	OnShow = function(self, data)
    self.wideEditBox:SetFocus()
    self.wideEditBox:HighlightText()
	end,
  
	OnHide = function(self, data) end,
  
	OnAccept = function(self, data, data2)
    local editBox = self.wideEditBox
    local text = editBox:GetText()
    addNameToNormalNoteList(data,text)
    self:Hide()
  end,
  
	OnCancel = function(self, data, data2) self:Hide() end,
  
	OnAlt = function(self, data, data2)
    removeNormalNote(data)
    self:Hide()
	end,
  
  OnUpdate = function(self, elapsed)
    if self.data then
      local newText = "|cff00bbeeЗаметка для игрока [|r"..colorName(self.data, nil, "00ff00").."|cff00bbee]:|r"
      local oldText = self.text:GetText()
      if oldText~=newText then
        self.text:SetText(newText)
        StaticPopup_Resize(self, "NORMAL_NOTE_POPUP")
      end
    end
  end,
  
	EditBoxOnEnterPressed = function(self, data)
    local editBox = self:GetParent().wideEditBox
    local text = editBox:GetText()
    addNameToNormalNoteList(data,text)
    self:GetParent():Hide()
  end,
  
	EditBoxOnEscapePressed = function(self) self:GetParent():Hide() end,
}	

----------------------------------------------------
-- кнопка "Заметка для чс" в контекстном меню правой кнопкой мыши
----------------------------------------------------
UnitPopupButtons["PETUH_NOTE_DROPDOWN_MENU_BUTTON"] = {
	text = "|cff00bbee<"..TITLE_SHORT..">|r |cffff4411Заметка для чс|r",
	dist = 0,
  icon = nil,
	func = function()
    local unit = UIDROPDOWNMENU_INIT_MENU.unit
    local name = UIDROPDOWNMENU_INIT_MENU.name or UnitName(unit)
    local note = isBlacklistedName(name)
    nameToCheck = name
    local popup = StaticPopup_Show("PETUH_NOTE_POPUP", name) -- форс вызов по клику мыши в контекст меню
    if note and isNotBlank(note) then
      testlog("["..colorName(name).."] - ["..note.."]")
    elseif note then
      testlog("["..colorName(name).."] |cffff0000числится в чс|r с пустой заметкой")
    else
      testlog("["..colorName(name).."] |cff00ff00не числится в чс|r")
    end
    if popup then 
      popup.data = name 
      popup.data2 = unit
      popup.wideEditBox:HighlightText()
      if note then
        popup.wideEditBox:SetText(note)
      end
    end
  end
}

----------------------------------------------------
-- кнопка "Заметка" в контекстном меню: нормальная (положительная, однако зависит от автора) заметка 
----------------------------------------------------
UnitPopupButtons["NORMAL_NOTE_MENU_BUTTON"] = {
	text = "|cff00bbee<"..TITLE_SHORT..">|r |cff11ff44Заметка|r",
	dist = 0,
  icon = nil,
	func = function()
    local name = UIDROPDOWNMENU_INIT_MENU.name
    local unit = UIDROPDOWNMENU_INIT_MENU.unit
    if name and name~="" and name~= STRING_SCHOOL_UNKNOWN then
      local note = settings["normalNameNoteList"][name:lower()]
      local popup = StaticPopup_Show("NORMAL_NOTE_POPUP", name) -- форс вызов по клику мыши в контекст меню
      if popup then 
        popup.data = name 
        popup.data2 = unit
        popup.wideEditBox:HighlightText()
        if note then
          popup.wideEditBox:SetText(note)
        end
      end
    end
  end
}

----------------------------------------------------
-- регистрация кнопок котекстного меню ... упс, дублирую похожий код, ладно, кнопок пока всего только 2, че над этим париться то)))
----------------------------------------------------
local function UnitPopup_ShowMenu_Hook()
	for i=1, UIDROPDOWNMENU_MAXBUTTONS do
		local button = _G["DropDownList"..UIDROPDOWNMENU_MENU_LEVEL.."Button"..i];
		if button.value == "PETUH_NOTE_DROPDOWN_MENU_BUTTON" then
		    button.func = UnitPopupButtons["PETUH_NOTE_DROPDOWN_MENU_BUTTON"].func
		elseif button.value == "NORMAL_NOTE_MENU_BUTTON" then
		    button.func = UnitPopupButtons["NORMAL_NOTE_MENU_BUTTON"].func
		end
	end
end

hooksecurefunc("UnitPopup_ShowMenu", UnitPopup_ShowMenu_Hook)

table.insert(UnitPopupMenus["RAID_PLAYER"], 	#UnitPopupMenus["RAID_PLAYER"] - 1,	"PETUH_NOTE_DROPDOWN_MENU_BUTTON")
table.insert(UnitPopupMenus["PLAYER"], 	#UnitPopupMenus["PLAYER"] - 1,	"PETUH_NOTE_DROPDOWN_MENU_BUTTON")
table.insert(UnitPopupMenus["FRIEND"],	#UnitPopupMenus["FRIEND"] - 1,	"PETUH_NOTE_DROPDOWN_MENU_BUTTON")
table.insert(UnitPopupMenus["PARTY"], 	#UnitPopupMenus["PARTY"] - 1,	"PETUH_NOTE_DROPDOWN_MENU_BUTTON")
table.insert(UnitPopupMenus["RAID"], 	#UnitPopupMenus["RAID"] - 1,	"PETUH_NOTE_DROPDOWN_MENU_BUTTON")
table.insert(UnitPopupMenus["FOCUS"], 	#UnitPopupMenus["FOCUS"] - 1,	"PETUH_NOTE_DROPDOWN_MENU_BUTTON")

table.insert(UnitPopupMenus["RAID_PLAYER"], 	#UnitPopupMenus["RAID_PLAYER"] - 1,	"NORMAL_NOTE_MENU_BUTTON")
table.insert(UnitPopupMenus["PLAYER"], 	#UnitPopupMenus["PLAYER"] - 1,	"NORMAL_NOTE_MENU_BUTTON")
table.insert(UnitPopupMenus["FRIEND"],	#UnitPopupMenus["FRIEND"] - 1,	"NORMAL_NOTE_MENU_BUTTON")
table.insert(UnitPopupMenus["PARTY"], 	#UnitPopupMenus["PARTY"] - 1,	"NORMAL_NOTE_MENU_BUTTON")
table.insert(UnitPopupMenus["RAID"], 	#UnitPopupMenus["RAID"] - 1,	"NORMAL_NOTE_MENU_BUTTON")
table.insert(UnitPopupMenus["FOCUS"], 	#UnitPopupMenus["FOCUS"] - 1,	"NORMAL_NOTE_MENU_BUTTON")

-----------------------------------------------------------------------------
-- заметка около ника в чате, идея взята с чаттера
-----------------------------------------------------------------------------
local function pName(msg, name)
	if name and #name > 0 then
    if settings["enableChatBLNote"] or settings["enableChatNormalNote"] then
      local blNote = isBlacklistedName(name:lower())
      local normalNote = settings["normalNameNoteList"][name:lower()]
      if blNote then	
        if settings["enableChatNoteOnlyBLtag"] or blNote == "" then
          blNote = "в чс"
          msg = ("%s%s%s%s"):format(msg, "(", "|cffff0000"..blNote.."|r", ")")
        elseif (settings["enableChatNoteMaxLettersLimit"]==true and utf8len(blNote) > settings["chatNoteMaxLettersLimitNum"]) then
          blNote = utf8sub(blNote, 1, settings["chatNoteMaxLettersLimitNum"]) .. ".."
          msg = ("%s%s%s%s"):format(msg, "(", "|cffff0000"..blNote.."|r", ")")
        else
          msg = ("%s%s%s%s"):format(msg, "(", "|cffff0000"..blNote.."|r", ")")
        end
      elseif settings["enableChatNormalNote"] and normalNote and isNotBlank(normalNote) then
        if (settings["enableChatNoteMaxLettersLimit"]==true and utf8len(normalNote) > settings["chatNoteMaxLettersLimitNum"]) then
          normalNote = utf8sub(normalNote, 1, settings["chatNoteMaxLettersLimitNum"]) .. ".."
          msg = ("%s%s%s%s"):format(msg, "(", "|cff00bbee"..normalNote.."|r", ")")
        else
          msg = ("%s%s%s%s"):format(msg, "(", "|cff00bbee"..normalNote.."|r", ")")
        end
      end
    end
  end
	return msg
end

local function func_chatNameNote()
  for i = 1, 10 do
    local frame = _G["ChatFrame" .. i]
    local orig = frame.AddMessage
    frame.AddMessage = function(self, msg, ...)
      local q=...
      if q then
        --print("test",msg)
        if msg and type(msg) == "string" then 
          msg = msg:gsub("(|Hplayer:([^:]+).-|h.-|h)", pName)
        end
      end
      orig(self, msg, ...)
    end
  end
end

func_chatNameNote()

function TBL_isBlacklistedName(name) 
  return isBlacklistedName(name)
end

-- =============================================================================================================
-- настройки
-- =============================================================================================================
------------------------------------------------------------------------------------------------------------
-- создание фреймов настроек в близ интерфейсе (Интерфейс=>Модификации) в жутком виде без всяких Ace ( +ХАРДКОР, -ВРЕМЯ )
------------------------------------------------------------------------------------------------------------
function testBlacklist:createSettingsUI()
  --------------------------------------------------------------------------------
  -- settingsScrollFrame - фрейм прокрутки для фрейма настроек
  --------------------------------------------------------------------------------
  local width, height = 800, 800
  local settingsScrollFrame = CreateFrame("ScrollFrame", "CustomBlacklistSettingsScrollFrame", InterfaceOptionsFramePanelContainer,
    "UIPanelScrollFrameTemplate")
  settingsScrollFrame.name = ""..GetAddOnMetadata(ADDON_NAME, "Title")..""
  settingsScrollFrame:SetSize(width, height)
  settingsScrollFrame:Hide()
  --settingsScrollFrame:SetPoint("CENTER", UIParent, "CENTER")
  settingsScrollFrame:SetAllPoints(InterfaceOptionsFramePanelContainer)
  settingsScrollFrame:SetVerticalScroll(10)
  settingsScrollFrame:SetHorizontalScroll(10)

  --------------------------------------------------------------------------------
  -- settingsFrame - фрейм настроек который должен быть помещен в фрейм прокрутки
  --------------------------------------------------------------------------------
  local settingsFrame = CreateFrame("Frame", nil, settingsScrollFrame)
  settingsFrame:Hide()
  settingsFrame:SetSize(width, height) -- Измените размеры фрейма настроек ++ 4.3.24
  settingsFrame:SetAllPoints(InterfaceOptionsFramePanelContainer)

  settingsScrollFrame:SetScript("OnShow", function()
    settingsFrame:Show()
  end)
  settingsScrollFrame:SetScript("OnHide", function()
    settingsFrame:Hide()
  end)
  settingsScrollFrame:SetScrollChild(settingsFrame)

  local settingsTitleText = settingsFrame:CreateFontString(nil, "ARTWORK")
  settingsTitleText:SetFont(THIN_FONT_NAME, 20, 'OUTLINE')
  settingsTitleText:SetPoint("TOPLEFT", 25, -22)
  settingsTitleText:SetText("|cFF22ddcc"..GetAddOnMetadata(ADDON_NAME, "Title").."|r: settings")
  settingsTitleText:SetJustifyH("LEFT")
  settingsTitleText:SetJustifyV("BOTTOM")

  ------------------------------------------------------------------------------------------------------------------------------------------------------------
  -- + костыльный (или нет?) метод обновления визуальной составляющей настроек если они открыты и в этот момент они были изменены не через фреймы(чекбоксы/поля ввода итд в Интерфейс=>Модификации) а иным способом, командами например
  ------------------------------------------------------------------------------------------------------------------------------------------------------------
  function testBlacklist:refreshSettingsUI()
    if settingsFrame:IsVisible() then
      settingsFrame:Hide()
      settingsFrame:Show()
    end
  end

  --------------------------------------------------
  -- функция создания чекбокса 
  --------------------------------------------------
  local function createCheckbox(offsetY,settingName,checkboxText,tooltipText) -- offsetY отступ от settingsTitleText
    local cbFrame = CreateFrame("CheckButton",nil,settingsFrame,"UICheckButtonTemplate") -- фрейм чекбокса
    cbFrame:SetPoint("TOPLEFT", settingsTitleText, "BOTTOMLEFT", 0, offsetY)
    cbFrame:SetSize(24,24)
    local textFrame = CreateFrame("Button",nil,cbFrame) -- фрейм текст чекбокса, не совсем по гениальному, ну лан
    local text = textFrame:CreateFontString(nil, "ARTWORK") -- текст для чекбокса
    text:SetFont(THIN_FONT_NAME, 14, 'OUTLINE')
    text:SetText(checkboxText)
    textFrame:SetSize(text:GetStringWidth()+50,text:GetStringHeight()) -- ставим длинее чем длина текста а то чет он сокращается троеточием, тут надо бы разобраться кек 
    textFrame:SetPoint("LEFT", cbFrame, "RIGHT", 5, 0)
    text:SetAllPoints(textFrame)
    text:SetJustifyH("LEFT")
    text:SetJustifyV("BOTTOM")
    
    cbFrame:SetScript("OnClick", function(self) -- по клику по фрейму проставляется настройка, чекбокс
      if self:GetChecked() then
        settings[settingName] = true
      else
        settings[settingName] = false
      end
      if settingName == "enableAddon" then
      end
      testBlacklist:refreshSettingsUI()
    end)
    
    textFrame:SetScript("OnClick", function(self) -- по клику по фрейму проставляется настройка, текст
      if cbFrame:GetChecked() then
        cbFrame:SetChecked(false)
        text:SetTextColor(1, 1, 1)
      else
        cbFrame:SetChecked(true)
        text:SetTextColor(0.7, 1, 0.7)
      end
      settings[settingName] = cbFrame:GetChecked()
      testBlacklist:refreshSettingsUI()
    end)
    
    cbFrame:SetScript("OnShow", function(self) -- при появлении фрейма флаг выставится или снимется исходя из настроек
      local disabledOrUnavailable = (not settings["enableAddon"] and settingName~="enableAddon") or (settingName=="enableSendNamesSync" or settingName=="enableReceiveNamesSync" or settingName=="enableAutoAcceptAddNamesFromAutoAcceptSyncNamesList") -- убрать "(settingName=="enableSendNamesSync" or settingName=="enableReceiveNamesSync" or settingName=="enableAutoAcceptAddNamesFromAutoAcceptSyncNamesList")" как функционал будет готов
      if disabledOrUnavailable then
        self:Disable()
        textFrame:Disable()
      else
        self:Enable()
        textFrame:Enable()       
      end
      if disabledOrUnavailable then
        settings[settingName]=false
        self:SetChecked(false)
      else
        self:SetChecked(settings[settingName])
      end
      if disabledOrUnavailable then
        text:SetTextColor(0.5, 0.5, 0.5) -- цвет текста недоступной и/или нерабочей в данный момент опции (серый)
      elseif self:GetChecked() then
        text:SetTextColor(0.7, 1, 0.7) -- цвет текста включенной опции (салатик)
      else 
        text:SetTextColor(1, 1, 1) -- цвет текста доступной для включения выключенной опции (белый)
      end
    end)
    
    cbFrame:SetScript("OnEnter", function(self) -- при наведении мышкой на фрейм чекбокса (маусовер) ...
      if tooltipText then 
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:SetText(tooltipText, nil, nil, nil, nil, true)
        GameTooltip:Show() -- ... появится подсказка
      end
    end)
    
    cbFrame:SetScript("OnLeave", function(self) -- при снятии фокуса мышки с фрейма чекбокса ...
      if tooltipText then 
        GameTooltip:Hide() -- ... подсказка скроется
      end
      if settingName~="enableAddon" and not settings["enableAddon"] then
        text:SetTextColor(0.5, 0.5, 0.5)
      elseif self:GetChecked() then
        text:SetTextColor(0.7, 1, 0.7)
      else 
        text:SetTextColor(1, 1, 1)
      end
    end)
    
    textFrame:SetScript("OnEnter", function(self) -- при наведении мышкой на фрейм текста (маусовер) ...
      if tooltipText then 
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:SetText(tooltipText, nil, nil, nil, nil, true)
        GameTooltip:Show() -- ... появится подсказка
      end
      if settingName~="enableAddon" and not settings["enableAddon"] then 
        --
      else 
        text:SetTextColor(1, 1, 0.1) -- при наведении на текст он станет желтым
      end
    end)
    
    textFrame:SetScript("OnLeave", function(self) -- при снятии фокуса мышки с фрейма текста ...
      if tooltipText then 
        GameTooltip:Hide() -- ... подсказка скроется
      end
      if settingName~="enableAddon" and not settings["enableAddon"] then
        text:SetTextColor(0.5, 0.5, 0.5)
      elseif self:GetParent():GetChecked() then
        text:SetTextColor(0.7, 1, 0.7)
      else 
        text:SetTextColor(1, 1, 1)
      end
    end)
  end
  
  ----------------------------------------------------------------------
  -- создаем чекбоксы 
  ----------------------------------------------------------------------
  createCheckbox(-10,"enableAddon","Включить аддон","|cccffffffВключить аддон.|r\n\nПри включенной опции: аддон работает выполняя включенные функции.")

  createCheckbox(-30,"enableAutoRespond","Включить автоответ в пм заблокированным чс-никам при попытках обратиться к нам в пм/инвайтить","|cccffffffВключить автоответ в пм заблокированным чс-никам при попытках обратиться к нам в пм/инвайтить.|r\n\nПри включенной опции: выдаст в ответ что сообщение/инвайт были скрыты/отменены и причину если та есть в заметке.")

  createCheckbox(-50,"enableAutoAnnounceToGroup","Включить авто-анонс в группу/рейд если там обнаружен чс-ник","|cccffffffВключить авто-анонс в группу/рейд если там обнаружен чс-ник.|r\n\nДля лидера/асиста, остальным юзлес.")

  createCheckbox(-70,"hideMessagesFromBlacklistedNames","Скрывать сообщения чс-ников из основных каналов чатах включая пм","|cccffffffСкрывать сообщения чс-ников из основных каналов чатах включая пм.|r\n\nДобавление/удаление ников в/из чс: |cFF22ddcc\"/команда ник\"|r - через команду добавление происходит без заметки, можно также массово добавить кучу ников через пробел.\n\nПример: |cFF22ddcc\"/tbl Николасгукс твингуксараз Твингуксадва\"|r или |cFF22ddcc\"/tbladd никадин никдва\"|r. Убрать из чс: |cFF22ddcc\"/tbldel Ник\"|r. Ники можно прописывать и с маленькой буквы. Запяточие \";\" в качестве разделителя в командах юзаем только при добавлении/удалении ключевых фраз (для команд: /tblmsgcontainsadd /tblmca /tblmsgcontainsremove /tblmcr).\n\nОпция добавления заметки доступна через контекстное меню по клику правой кнопкой мыши по нику в чате, через фреймы таргета, фокуса, пати, рейда, френдлиста.")

  createCheckbox(-90,"enableMessageContainFiltering","Включить фильтрацию по содержанию фраз в сообщениях","|cccffffffВключить фильтрацию по содержанию фраз в сообщениях.|r\n\nПри включенной опции: при нахождении фразы из черного списка в тексте сообщения - сообщение будет скрыто.\n\nДобавление/удаление фраз в/из чс: |cFF22ddcc\"/команда Фраза1;Фраза2;Фраза3\"|r. Пример, добавление: |cFF22ddcc\"/tblmsgcontainsadd фраза\"|r или |cFF22ddcc\"/tblmca фраза;фраза;фраза;фраза\"|r, удаление: |cFF22ddcc\"/tblmsgcontainsremove фраза;фраза\"|r или |cFF22ddcc\"/tblmcr фраза1;фраза2\"|r .. итд через знак запяточия \";\"")

  createCheckbox(-110,"enableNameContainFiltering","Включить фильтрацию по содержанию фраз в никах","|cccffffffВключить фильтрацию по содержанию фраз в никах.|r\n\nПри включенной опции: при нахождении фразы из черного списка в тексте ника - сообщение будет скрыто.\n\nДобавление фразы в черный список: |cFF22ddcc\"/команда Фраза1;фраза2;Фраза3\"|r. Пример, добавление: |cFF22ddcc\"/tblnamecontainsadd Gyks\"|r или |cFF22ddcc\"/tblnca gyki;Гукс;Gyks\"|r, удаление: |cFF22ddcc\"/tblnamecontainsremove фраза1;Фраза2;фраза3\"|r или |cFF22ddcc\"/tblncr фраза1;Фраза2;фраза3\"|r .. итд через знак запяточия \";\"")

  createCheckbox(-130,"addIgnoreAfterSpam","Отправлять чс-ника в дефолтный игровой чс (50 ников макс) в случае спама в пм/инвайтами при включенных автоотмене инвайтов либо подавлении пм","|cccffffffОтправлять чс-ника в дефолтный игровой чс (50 ников макс) в случае спама в пм/инвайтами при включенных автоотмене инвайтов либо подавлении пм.|r")

  createCheckbox(-150,"checkNamesInRattBlacklist","Помимо персонального чс проверять ники на наличие их в списке Ratt-а (овер 2000 ников в RattBlackListNamesList.lua)","|cccffffffПомимо персонального чс проверять ники на наличие их в списке Ratt-а (овер 2000 ников в RattBlackListNamesList.lua)|r")

  createCheckbox(-170,"enableReceiveNamesSync","|cffff0000[Не протестировано]|r Получать ники чс-ников методом синхронизации от пользователей аддона в рейде/гильдии и тех кто не против их лично нам отправлять","|cccffffffПолучать ники чс-ников методом синхронизации от пользователей аддона в рейде/гильдии и тех кто не против их лично нам отправлять.|r\n\nВыключить если будут задолбывать с добавлением. При первом получении чс-ника от пользователя аддона можно дать согласие на автодобавление, давать только если данный мужик проверен и не сделает нам говна с разнообразными никами и заметками.")

  createCheckbox(-190,"enableSendNamesSync","|cffff0000[Не протестировано]|r Автоматически шарить ники чс-ников методом синхронизации пользователям аддона в рейде/гильдии и на конкретно указанные ники","|cccffffffАвтоматически шарить ники чс-ников методом синхронизации пользователям аддона в рейде/гильдии и на конкретно указанные ники.|r\n\nДобавление и удаление конкретных ников кому будем авто-шарить наших чс-ников: |cFF22ddcc\"/команда Ник Ник Ник\"|r. Пример, добавить: |cFF22ddcc\"/tblsendsyncadd Ник Ник\"|r или |cFF22ddcc\"/tblssa Ник Ник\"|r, удалить: \"|cFF22ddcc/tblssd Ник Ник Ник|r\" .. итд, ники через пробел.")

  createCheckbox(-210,"enableAutoAcceptAddNamesFromAutoAcceptSyncNamesList","|cffff0000[Не протестировано]|r Автоматически добавлять к себе ники чс-ников от проверенных своих ребят методом синхронизации (пользователей аддона в гильдии/рейде/тех кто не против их лично нам отправлять)","|cccffffffАвтоматически добавлять к себе ники чс-ников от проверенных своих ребят методом синхронизации (пользователей аддона в гильдии/рейде/тех кто не против их лично нам отправлять).|r\n\nКоманда на отмену автопринятия чс-ников от конкретных ников: |cFF22ddcc\"/tblautosyncdel Ник Ник\"|r или |cFF22ddcc\"/tblasd Ник Ник\"|r .. итд, ники через пробел.")

  createCheckbox(-230,"enableAutoDeclineInvites","Автоматически отменять инвайты, вызовы на дуэль, редичеки от чс-ников","|cccffffffАвтоматически отменять инвайты, вызовы на дуэль, редичеки от чс-ников.|r")
  createCheckbox(-250,"enableChatBLNote","Отображать чс-заметку в чате рядом с ником")
  createCheckbox(-270,"enableChatNormalNote","Отображать нормальную заметку в чате рядом с ником","|cccffffffОтображать нормальную заметку в чате рядом с ником.|r\n\nПри наличии чс-заметки нормальная отображаться не будет.")
  createCheckbox(-290,"enableChatNoteOnlyBLtag","Вместо чс-заметки в чате отображать только тег \"[|cffff0000в чс|r]\"")
  
  createCheckbox(-310,"enableChatNoteMaxLettersLimit","Сокращать заметку в чате до N количества символов","|cccffffffСокращать заметку в чате до N количества символов.|r\n\nПо умолчанию N = 10. Установка N по команде: |cFF22ddcc\"/tblchatnotemaxletters число\"|r или |cFF22ddcc\"/tblcnml число\"|r")
  
  createCheckbox(-330,"enableStaticPopupAndCenterTextAlertForBlacklistedInGroup","Показывать окно и текст по центру экрана при наличии чс-ника в группе","|cccffffffПоказывать окно и текст по центру экрана при наличии чс-ника в группе|r")
  
  createCheckbox(-350,"enableFlashWindow","Мигание окна в панели задач (FlashWindow) при наличии чс-ника в группе либо получении пм/инвайта не от чс-ника","|cccffffffМигание окна в панели задач (FlashWindow) при наличии чс-ника в группе либо получении пм/инвайта не от чс-ника.|r\n\nДля работы необходима библиотека AwesomeWotlk (https://github.com/FrostAtom/awesome_wotlk)")
  
  createCheckbox(-370,"enableSpamFilter","Включить фильтр на предотвращение появления одинаковых сообщений написанных с одного ника пропуская их не чаще чем раз в N сек","|cccffffffВключить фильтр на предотвращение появления одинаковых сообщений написанных с одного ника пропуская их не чаще чем раз в N сек.|r\n\nАнтиспам для лфг, но включить можно и для других типов чата, по умолчанию N = 60. Команда для изменения N секунд: |cFF22ddcc\"/tblantispamsec число\"|r или |cFF22ddcc\"/tblass число\"|r")
  
  createCheckbox(-390,"enableSpamFilterOnlyLFG","Включить фильтр на предотвращение появления одинаковых сообщений только для каналов по типу LFG (поиск спутников)","|cccffffffВключить фильтр на предотвращение появления одинаковых сообщений только для каналов по типу LFG (поиск спутников).|r\n\nВключить если нужно только для LFG, к примеру.")
  createCheckbox(-410,"enableChatNotifyOnMessageHide","Включить уведомления в чате о скрытых фильтрами/антиспамом сообщениях (тест)","|cccffffffВключить уведомления в чате о скрытых фильтрами/антиспамом сообщениях (тест)|r\n\nДля теста.")
  
  --------------------------------------------------
  -- регистрируем фрейм настроек в близ настройках интерфейса (интерфейс->модификации) этой самой функцией 
  --------------------------------------------------
  InterfaceOptions_AddCategory(settingsScrollFrame)
end

----------------------------------------------------------------------------------------------------
-- создание дефолтного конфига при первейшей загрузке аддона
----------------------------------------------------------------------------------------------------
function testBlacklist:createDefaultConfig()
  settings = TBL_CoolCustomNamesBlacklist_Settings
  if settings == nil then 
    settings = {}
    TBL_CoolCustomNamesBlacklist_Settings = settings
    settings["petuhNameNoteList"] = {}
    settings["petuhNameContainsList"] = {}
    settings["petuhMsgContainsList"] = {}
    settings["acceptSyncNamesList"] = {}
    settings["declineSyncNamesList"] = {}
    settings["autoAcceptSyncNamesList"] = {}
    settings["sendSyncNamesList"] = {}
    settings["enableReceiveNamesSync"] = false
    settings["enableAutoRespond"] = true
    settings["enableAutoAnnounceToGroup"] = true
    settings["enableAddon"] = true
    settings["addIgnoreAfterSpam"] = true
    settings["enableNameContainFiltering"] = true
    settings["enableMessageContainFiltering"] = true
    settings["hideMessagesFromBlacklistedNames"] = false
    settings["checkNamesInRattBlacklist"] = false
    settings["enableSendNamesSync"] = false
    settings["enableAutoAcceptAddNamesFromAutoAcceptSyncNamesList"] = false
    settings["enableAutoDeclineInvites"] = true
    settings["normalNameNoteList"] = {}  
    settings["enableChatBLNote"] = true
    settings["enableChatNormalNote"] = true
    settings["enableChatNoteOnlyBLtag"] = true
    settings["enableChatNoteMaxLettersLimit"] = true
    settings["chatNoteMaxLettersLimitNum"] = 10
    settings["enableStaticPopupAndCenterTextAlertForBlacklistedInGroup"] = true
    settings["enableFlashWindow"] = true
    settings["enableSpamFilter"] = true
    settings["enableSpamFilterOnlyLFG"] = true
    settings["spamFilterCDMaxSecNum"] = 60
    settings["enableChatNotifyOnMessageHide"] = true
  end
end

-- =============================================================================================================
-- слэш команды
-- =============================================================================================================
----------------------------------------------------
-- добавить ник в чс
----------------------------------------------------
SlashCmdList["TBL_petuh"] = function(msg)
  if not msg or msg=="" then
    testlog("|cffff0000Неправильный формат ввода|r")
    return
  end
  
  local names = split(msg, ' ')
  
  if #names > 1 then
    for name in pairs(names) do
      if name and utf8len(name) > 1 and utf8len(name) <= 12 then
        if not isBlacklistedName(name) then
            addNameToBlacklist(name)
            sendSync(name:lower())
        else
            testlog("["..colorName(name).."] - уже числится в чс")
        end
      end
    end
  else
    local name = msg:gsub("%s+", "") 
    if utf8len(name) < 2 or utf8len(name) > 12  then 
      testlog("|cffff0000Неправильный формат ввода|r")
      return 
    end
    nameToCheck = name
    local popup = StaticPopup_Show("PETUH_NOTE_POPUP", name) -- форс вызов через команду
    note = isBlacklistedName(name)
    if note then
      testlog("["..colorName(name).."] - [|cffffffff"..note.."|r]")
    else
      testlog("["..colorName(name).."] добавлен в чс без заметки")
    end
    if popup then 
      popup.data = name 
      popup.wideEditBox:HighlightText()
      if note then
        popup.wideEditBox:SetText(note)
      end
    end
  end
end
SLASH_TBL_petuh1 = "/petuh"
SLASH_TBL_petuh2 = "/tbl"
SLASH_TBL_petuh3 = "/petuhadd"
SLASH_TBL_petuh4 = "/tbladd"

----------------------------------------------------
-- Вывод чс-ников в чат
----------------------------------------------------
SlashCmdList["TBL_nameslist"] = function(msg)
    local num = 0
    local count = tablelength(settings["petuhNameNoteList"])
    local countRatt = settings["checkNamesInRattBlacklist"] and ns.RattBlackListNamesList and tablelength(ns.RattBlackListNamesList)
    if count > 0 then
      testlog("|cffff0000Вывод бесов в чат, всего в списке: "..count.." + "..countRatt.." (чс Ratt-a)|r")
      for name,note in pairs(settings["petuhNameNoteList"]) do
          num=num+1
          print(""..num..") ["..colorName(name).."] => ["..note.."]")
      end
    else
      testlog("|cff00ff00На данный момент никто не заслужил почётного места в списке|r")
      if countRatt > 0 then
        testlog("|cffffff00Однако, в списке у Ratt - "..countRatt.." бесов|r")
      end
    end
end
SLASH_TBL_nameslist1 = "/tblnameslist"
SLASH_TBL_nameslist2 = "/tblnl"
SLASH_TBL_nameslist3 = "/petuhlist"

----------------------------------------------------
-- удалить ник из списка чс-ников
----------------------------------------------------
SlashCmdList["TBL_petuhdel"] = function(msg)
  if not msg or msg == "" then
    testlog("|cffff0000Неправильный формат ввода|r")
    return
  end
  for name in msg:gmatch("[^ ]+") do
    if name and utf8len(name) > 1 and utf8len(name) <= 12 then
      if isBlacklistedName(name) then
          removeNameFromBlacklist(name)
          testlog("["..colorName(name).."] получил зелёный свет")
          if settings["checkNamesInRattBlacklist"] and ns.RattBlackListNamesList and ns.RattBlackListNamesList[name] then 
            testlog("PS: ["..colorName(name).."] всё ещё остался в списке Ratt-a (то есть после релога вновь будет в чс)")
            ns.RattBlackListNamesList[name]=nil
          end
      else
          testlog("["..colorName(name).."] нету в списке бестолочей")
      end
    end
  end
end
SLASH_TBL_petuhdel1 = "/tbldelname"
SLASH_TBL_petuhdel2 = "/tbldel"
SLASH_TBL_petuhdel3 = "/tbldn"
SLASH_TBL_petuhdel4 = "/petuhdel"

----------------------------------------------------
-- добавить Фильтр по содержанию в нике
----------------------------------------------------
SlashCmdList["TBL_namecontainsadd"] = function(msg)
  if not msg or msg == "" then
    testlog("|cffff0000Неправильный формат ввода|r")
    return
  end
  for name in msg:gmatch("[^ ]+") do
    if name and utf8len(name) > 1 and utf8len(name) <= 12 then
      if not settings["petuhNameContainsList"][name:lower()] then
        testlog("Фильтр по содержанию в нике ["..name:lower().."] добавлен в список")
        settings["petuhNameContainsList"][name:lower()]=true
      else
        testlog("|cffff0000Фильтр по содержанию в нике ["..name:lower().."] уже в списке|r")
      end
    end
  end  
end
SLASH_TBL_namecontainsadd1 = "/tblnamecontainsadd"
SLASH_TBL_namecontainsadd2 = "/tblnca"

----------------------------------------------------
-- Вывод фильтров по содержимому в никах
----------------------------------------------------
SlashCmdList["TBL_namecontainslist"] = function(msg)
    local num = 0
    local count = tablelength(settings["petuhNameContainsList"])
    if count > 0 then
      testlog("|cffff0000Вывод фильтров по содержимому в никах, всего фильтров: "..count.."|r")
      for filter in pairs(settings["petuhNameContainsList"]) do
          num=num+1
          print(""..num..") |cffff0000["..filter.."]|r")
      end
    else
      testlog("|cff00ff00На данный момент нет фильтров по содержимому в никах|r")
    end
end
SLASH_TBL_namecontainslist1 = "/tblnamecontainslist"
SLASH_TBL_namecontainslist2 = "/tblncl"

----------------------------------------------------
-- удалить Фильтр по содержанию в нике
----------------------------------------------------
SlashCmdList["TBL_namecontainsremove"] = function(msg)
  if not msg or msg == "" then
    testlog("|cffff0000Неправильный формат ввода|r")
    return
  end
  for text in msg:gmatch("[^ ]+") do
    if text and utf8len(text) > 1 and utf8len(text) <= 12 then
      if settings["petuhNameContainsList"][text:lower()] then
        settings["petuhNameContainsList"][text:lower()]=nil
        testlog("Фильтр по содержанию в нике |cff00ff00["..text:lower().."]|r удален")
      else
        testlog("Фильтр по содержанию в нике |cff00ff00["..text:lower().."]|r отсутствует в списке")
      end
    end
  end
end
SLASH_TBL_namecontainsremove1 = "/tblnamecontainsremove"
SLASH_TBL_namecontainsremove2 = "/tblncr"

----------------------------------------------------
-- добавить Фильтр по содержанию в сообщении
----------------------------------------------------
SlashCmdList["TBL_msgcontainsadd"] = function(msg)
  if not msg or msg == "" then
    testlog("|cffff0000Неправильный формат ввода|r")
    return
  end
  for text in msg:gmatch("[^;]+") do
    if text and utf8len(text) > 1 and utf8len(text) <= 12 then
      if not settings["petuhMsgContainsList"][text:lower()] then
        testlog("Фильтр по содержанию в сообщении |cffff0000["..text:lower().."]|r добавлен в список")
        settings["petuhMsgContainsList"][text:lower()]=true
      else
        testlog("|cffff0000Фильтр по содержанию в сообщении ["..text:lower().."] уже был добавлен ранее|r")
      end
    end
  end  
end
SLASH_TBL_msgcontainsadd1 = "/tblmsgcontainsadd"
SLASH_TBL_msgcontainsadd2 = "/tblmca"

----------------------------------------------------
-- Вывод фильтров по содержимому в сообщениях
----------------------------------------------------
SlashCmdList["TBL_msgcontainslist"] = function(msg)
    local num = 0
    local count = tablelength(settings["petuhMsgContainsList"])
    if count > 0 then
      testlog("|cffff0000Вывод фильтров по содержимому в сообщениях, всего фильтров: "..count.."|r")
      for text in pairs(settings["petuhMsgContainsList"]) do
          num=num+1
          print(""..num..") |cffff0000["..text:lower().."]|r")
      end
    else
      testlog("|cff00ff00На данный момент нет фильтров по содержимому в сообщениях|r")
    end
end
SLASH_TBL_msgcontainslist1 = "/tblmsgcontainslist"
SLASH_TBL_msgcontainslist2 = "/tblmcl"

----------------------------------------------------
-- удалить Фильтр по содержанию в сообщении
----------------------------------------------------
SlashCmdList["TBL_msgcontainsremove"] = function(msg)
  if not msg or msg == "" then
    testlog("|cffff0000Неправильный формат ввода|r")
    return
  end
  for text in msg:gmatch("[^;]+") do
    if text and utf8len(text) > 1 and utf8len(text) <= 12 then
      if settings["petuhMsgContainsList"][text:lower()] then
          settings["petuhMsgContainsList"][text:lower()]=nil
          testlog("Фильтр по содержанию в сообщении |cff00ff00["..text:lower().."]|r удален")
      else
          testlog("Фильтр по содержанию в сообщении |cff00ff00["..text:lower().."]|r отсутствует в списке")
      end
    end
  end
end
SLASH_TBL_msgcontainsremove1 = "/tblmsgcontainsremove"
SLASH_TBL_msgcontainsremove2 = "/tblmcr"

----------------------------------------------------
-- добавить ник в список получателей нашей синхронизациии
----------------------------------------------------
SlashCmdList["TBL_tblsendsyncadd"] = function(msg)
  if not msg or msg == "" then
    testlog("|cffff0000Неправильный формат ввода|r")
    return
  end
  for name in msg:gmatch("[^ ]+") do
    if name and utf8len(name) > 1 and utf8len(name) <= 12 then
      if not settings["sendSyncNamesList"][name:lower()] then
        testlog("["..colorName(name).."] - будет получать наши ники для чс")
        settings["sendSyncNamesList"][name:lower()]=true
      else
        testlog("["..colorName(name).."] - уже получает ники наших чс-ников")
      end
    end
  end  
end
SLASH_TBL_tblsendsyncadd1 = "/tblsendsyncadd"
SLASH_TBL_tblsendsyncadd2 = "/tblssa"

----------------------------------------------------
-- удалить ник из списка получателей нашей синхронизациии
----------------------------------------------------
SlashCmdList["TBL_sendsyncdel"] = function(msg)
  if not msg or msg == "" then
    testlog("|cffff0000Неправильный формат ввода|r")
    return
  end
  for name in msg:gmatch("[^ ]+") do
    if name and utf8len(name) > 1 and utf8len(name) <= 12 then
      if settings["sendSyncNamesList"][name:lower()] then
          settings["sendSyncNamesList"][name:lower()]=nil
          testlog("["..colorName(name).."] - больше не будет получать ники чс-ников от нас") 
      else
          testlog("["..colorName(name).."] - нету в списке получателей наших чс-ников")
      end
    end
  end
end
SLASH_TBL_sendsyncdel1 = "/tblsendsyncdel"
SLASH_TBL_sendsyncdel2 = "/tblssd"

----------------------------------------------------
-- удалить ник из списка автопринятия синхронизациии
----------------------------------------------------
SlashCmdList["TBL_autosyncdel"] = function(msg)
  if not msg or msg == "" then
    testlog("|cffff0000Неправильный формат ввода|r")
    return
  end
  for name in msg:gmatch("[^ ]+") do
    if name and utf8len(name) > 1 and utf8len(name) <= 12 then
      if settings["autoAcceptSyncNamesList"][name:lower()] then
          settings["autoAcceptSyncNamesList"][name:lower()]=nil
          testlog("От ["..colorName(name).."] более не принимаем ники для чс автоматом") 
      else
          testlog("["..colorName(name).."] нету в списке автопринятия чс-ников")
      end
    end
  end
end
SLASH_TBL_autosyncdel1 = "/tblautosyncdel"
SLASH_TBL_autosyncdel2 = "/tblasd"

----------------------------------------------------
-- задать макс длину заметки при отображении в чате
----------------------------------------------------
SlashCmdList["TBL_chatnotemaxletters"] = function(msg)
  local num = tonumber(msg)
  if not num or num <= 0 then
    testlog("|cffff0000Неправильный формат ввода|r")
    return
  end
  settings["chatNoteMaxLettersLimitNum"] = num
  testlog(""..settings["chatNoteMaxLettersLimitNum"].." - новая макс длина заметки при отображении в чате") 
end
SLASH_TBL_chatnotemaxletters1 = "/tblchatnotemaxletters"
SLASH_TBL_chatnotemaxletters2 = "/tblcnml"

----------------------------------------------------
-- задать время в секундах спустя которое сообщение покинет кэш спама и сможет снова отображаться в чате при отправке автором
----------------------------------------------------
SlashCmdList["TBL_antispamsec"] = function(msg)
  local num = tonumber(msg)
  if not num or num <= 0 then
    testlog("|cffff0000Неправильный формат ввода|r")
    return
  end
  settings["spamFilterCDMaxSecNum"] = num
  testlog(""..settings["spamFilterCDMaxSecNum"].." - новое время в секундах спустя которое сообщение покидает кэш спама и будет отображаться в чате по отправке автором") 
end
SLASH_TBL_antispamsec1 = "/tblantispamsec" 
SLASH_TBL_antispamsec2 = "/tblass"
