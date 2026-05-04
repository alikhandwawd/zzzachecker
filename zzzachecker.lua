script_name("zzzAdmin & Players Checker")
script_author("AlikhaN")
script_version("67.68")
require "lib.moonloader"
require 'lib.sampfuncs'
local memory = require 'memory'
local sampev = require 'lib.samp.events'
local encoding = require 'encoding'
encoding.default = 'CP1251'
local u8 = encoding.UTF8
local requests = require "requests"
local ffi = require("ffi")
local dlstatus = require('moonloader').download_status
local imgui = require("mimgui")
local script_version = "2.3"
local update_available = false
local new_version = nil
local updater_busy = false
local update_failed = false
ffi.cdef[[
	typedef struct {int x; int y;} POINT;
	typedef struct {int cbSize; int flags; int hCursor; POINT ptScreenPos;} CURSORINFO, *PCURSORINFO;
	int GetCursorInfo(PCURSORINFO pci);
	void* GetForegroundWindow();
	unsigned long GetWindowThreadProcessId(void* hWnd, unsigned long* lpdwProcessId);
	unsigned long GetCurrentProcessId();
	int mciSendStringA(const char* lpstrCommand, char* lpstrReturnString, unsigned int uReturnLength, void* hwndCallback);
	void ExitProcess(unsigned int uExitCode);
]]
local checkerFolder = "moonloader/config/zzzachecker/"
local audioFolder = "moonloader/config/zzzachecker/"
local audioFiles = {
	report = audioFolder .. "report.mp3",
	joined = audioFolder .. "joined.mp3",
	success = audioFolder .. "success.mp3",
	failure = audioFolder .. "failure.mp3",
	successautorep = audioFolder .. "successautorep.mp3",
}
local audioUrls = {
	report = "https://raw.githubusercontent.com/alikhandwawd/zzzachecker/main/report.mp3",
	joined = "https://raw.githubusercontent.com/alikhandwawd/zzzachecker/main/joined.mp3",
	success = "https://raw.githubusercontent.com/alikhandwawd/zzzachecker/main/success.mp3",
	failure = "https://raw.githubusercontent.com/alikhandwawd/zzzachecker/main/failure.mp3",
	successautorep = "https://raw.githubusercontent.com/alikhandwawd/zzzachecker/main/successautorep.mp3",
}
local autoquit_players = {
	["Emiliano_Reiner"] = true,
	["Matvei_Rapid"] = true,
	["Frenk_Kennedy"] = true,
	["Carl_Stonks"] = true,
	["Antonio_Mellson"] = true,
	["Martin_Landaluce"] = true,
	["Raisen_Esquierwzz"] = true,
	["Wu_Yan"] = true,
}
local toggles = {
	hideOnScreenshot = true,
	farChatEnabled = true,
	wallhackEnabled = false,
	notifRepEnabled = false,
	checkerNotifEnabled = false,
	voicedNotif = false,
	autoRepEnabled = false,
	notifyifsnorcEnabled = false,
	autoquitifRS = true,
	autoAnswerReps = false,
}
local moving = {
	adminChecker = false,
	playersChecker = false,
	farChat = false,
}
local sounding = {
	notifRep = false,
	checkerNotif = false,
}
local timers = {
	lastUpdate = 0,
	lastPlayersUpdate = 0,
	adminsRequest = 0,
	adminsCommandSchedule = 0,
	screenshotHide = 0,
}
local config = {
	updateInterval = 3,
	commandDelay = 777,
	adminsTimeout = 6.5,
	spawnWaitTime = 1,
	maxRequestAttempts = 6,
	screenshotHideDuration = 0.5,
	textSize = 8,
	maxFarChatMessages = 10,
	playersFilePath = "moonloader/config/zzzachecker/players_checker.json",
	configFilePath = "moonloader/config/zzzachecker/checker_config.json",
}
local colors = {
	header = 0xFF520380,
	position = 0xFF520380,
	white = 0xFFFFFFFF,
	afk = 0xFFf9b820,
	green = 0xFF00FF00,
	red = 0xFFFF0000,
	checker = 0x520380,
	pc = 0xFFFFFFFF,
	mobile = 0xFFFFFFFF,
	farChat = {
		normal = 0xFFFFFFFF,
		whisper = 0xFFBDB76B,
		shout = 0xFFFFB584,
		me = 0xFFDD90FF,
		b = 0xFFCCCC99,
	}
}
local state = {
	adminsList = {},
	playersList = {},
	playersOnline = {},
	playerNicknames = {},
	farChatMessages = {},
	fonts = {checker = nil, header = nil},
	adminsCheckerWaiting = false,
	adminsCommandScheduled = false,
	scriptAdminsRequest = false,
	adminCheckerStarted = false,
	playerSpawned = false,
	isHiddenForScreenshot = false,
	requestAttempts = 0,
	checkerEnabled = true,
	autoReport = {
		pending = false,
		slotIndex = 0,
		waitingFor988 = false,
		waitingFor989 = false,
		waitingFor990 = false,
		reportTaken = false,
		silenceUntil = 0,
	},
	notifyifsnorc_nearby = {},
	autoquit_done = false,
	autoquit_noHandle = {},
	autoquit_nearbyShown = {},
	unfocusedSince = nil,
	afk_lastPos = nil,
	afk_lastMoveTime = 0,
	afk_idleStart = nil,
	afk_timerStarted = false,
	afk_lastCursor = nil,
}
local customDialogEnabled = true
local repWinEscAction = nil
local repWinEscProcessed = false
local repWinEnterPressed = false
local repWinEnterProcessed = false
local repWin = {
	show    = false,
	dialogId = 990,
	authorNick   = "",
	authorId     = -1,
	suspectNick  = "",
	suspectId    = -1,
	reportText   = "",
	rawText      = "",
	answerBuf    = imgui.new.char[512](),
	focusInput   = 0,
	authorColor  = imgui.ImVec4(0.90, 0.75, 1.0, 1),
	suspectColor = imgui.ImVec4(1.0, 0.55, 0.55, 1),
	authorPlatform  = nil,
	suspectPlatform = nil,
}
local repButtons = {}
local repButtonsPath = "moonloader/config/zzzachecker/repbuttons.json"
local repButtonsUrl = "https://raw.githubusercontent.com/alikhandwawd/zzzachecker/main/repbuttons.json"
local function repSubstVars(str)
	str = str:gsub("<author_name>", repWin.authorNick)
	str = str:gsub("<author_id>",   tostring(repWin.authorId ~= -1 and repWin.authorId or ""))
	str = str:gsub("<suspect_name>", repWin.suspectNick)
	str = str:gsub("<suspect_id>",  tostring(repWin.suspectId ~= -1 and repWin.suspectId or ""))
	return str
end
local function playerColorToVec4(playerId)
	if playerId ~= -1 and sampIsPlayerConnected(playerId) then
		local color = sampGetPlayerColor(playerId)
		local r = bit.band(bit.rshift(color, 16), 0xFF)
		local g = bit.band(bit.rshift(color, 8), 0xFF)
		local b = bit.band(color, 0xFF)
		return imgui.ImVec4(r / 255.0, g / 255.0, b / 255.0, 1)
	end
	return nil
end
local function decode1251(str)
	local t = {
		[0xC0]='А',[0xC1]='Б',[0xC2]='В',[0xC3]='Г',[0xC4]='Д',[0xC5]='Е',[0xC6]='Ж',[0xC7]='З',[0xC8]='И',[0xC9]='Й',
		[0xCA]='К',[0xCB]='Л',[0xCC]='М',[0xCD]='Н',[0xCE]='О',[0xCF]='П',[0xD0]='Р',[0xD1]='С',[0xD2]='Т',[0xD3]='У',
		[0xD4]='Ф',[0xD5]='Х',[0xD6]='Ц',[0xD7]='Ч',[0xD8]='Ш',[0xD9]='Щ',[0xDA]='Ъ',[0xDB]='Ы',[0xDC]='Ь',[0xDD]='Э',
		[0xDE]='Ю',[0xDF]='Я',[0xE0]='а',[0xE1]='б',[0xE2]='в',[0xE3]='г',[0xE4]='д',[0xE5]='е',[0xE6]='ж',[0xE7]='з',
		[0xE8]='и',[0xE9]='й',[0xEA]='к',[0xEB]='л',[0xEC]='м',[0xED]='н',[0xEE]='о',[0xEF]='п',[0xF0]='р',[0xF1]='с',
		[0xF2]='т',[0xF3]='у',[0xF4]='ф',[0xF5]='х',[0xF6]='ц',[0xF7]='ч',[0xF8]='ш',[0xF9]='щ',[0xFA]='ъ',[0xFB]='ы',
		[0xFC]='ь',[0xFD]='э',[0xFE]='ю',[0xFF]='я'
	}
	local out = {}
	for i = 1, #str do
		local b = string.byte(str, i)
		if b < 128 then
			out[#out+1] = string.char(b)
		else
			out[#out+1] = t[b] or '?'
		end
	end
	return table.concat(out)
end
local function parseRepDialog(text)
	local clean = decode1251(text:gsub("{%x%x%x%x%x%x}", ""))
	local aN, aId = clean:match("[Ии]мя:%s*([%w_]+)%[(%d+)%]")
	local sN, sId = clean:match("[Нн]арушитель:%s*([%w_]+)%[(%d+)%]")
	local rText   = clean:match("[Жж]алоба:%s*(.-)%s*\n")
	if not rText then
		rText = clean:match("[Жж]алоба:%s*(.+)$")
	end
	if aN and sN then
		repWin.authorNick  = aN
		repWin.authorId    = tonumber(aId) or -1
		repWin.suspectNick = sN
		repWin.suspectId   = tonumber(sId) or -1
		repWin.reportText  = rText or ""
		local aColor = playerColorToVec4(repWin.authorId)
		repWin.authorColor = aColor or imgui.ImVec4(0.90, 0.75, 1.0, 1)
		local sColor = playerColorToVec4(repWin.suspectId)
		repWin.suspectColor = sColor or imgui.ImVec4(1.0, 0.55, 0.55, 1)
		if repWin.authorId ~= -1 and sampIsPlayerConnected(repWin.authorId) then
			repWin.authorPlatform = getPlayerPlatform(sampGetPlayerNickname(repWin.authorId))
		else
			repWin.authorPlatform = nil
		end
		if repWin.suspectId ~= -1 and sampIsPlayerConnected(repWin.suspectId) then
			repWin.suspectPlatform = getPlayerPlatform(sampGetPlayerNickname(repWin.suspectId))
		else
			repWin.suspectPlatform = nil
		end
		return
	end
	repWin.authorNick  = ""
	repWin.authorId    = -1
	repWin.suspectNick = ""
	repWin.suspectId   = -1
	repWin.reportText  = clean
	repWin.authorColor  = imgui.ImVec4(0.90, 0.75, 1.0, 1)
	repWin.suspectColor = imgui.ImVec4(1.0, 0.55, 0.55, 1)
	repWin.authorPlatform  = nil
	repWin.suspectPlatform = nil
end
local function repClose()
	repWin.show = false
	imgui.StrCopy(repWin.answerBuf, "")
	sampSendDialogResponse(repWin.dialogId, 0, -1, "")
end
local function sendInfoRep(content, startTime)
	local elapsed = os.time() - startTime
	local col = 0xFF9B59B6
	sampAddChatMessage(u8:decode("________ Информация о репорте | zzzachecker ________"), col)
	sampAddChatMessage(u8:decode("Время ответа: {FFFFFF}" .. elapsed .. " сек."), col)
	sampAddChatMessage(u8:decode("Жалоба: {FFFFFF}" .. (repWin.reportText)), col)
	sampAddChatMessage(u8:decode("Ответ: {FFFFFF}" .. (content)), col)
	sampAddChatMessage(u8:decode("Автор: {FFFFFF}" .. repWin.authorNick .. "[" .. repWin.authorId .. "]"), col)
	sampAddChatMessage(u8:decode("Нарушитель: {FFFFFF}" .. repWin.suspectNick .. "[" .. repWin.suspectId .. "]"), col)
	sampAddChatMessage("________________________________________________", col)
end
local function repSend(content)
	content = content or ffi.string(repWin.answerBuf)
	content = repSubstVars(content)
	local startTime = repWin.startTime or os.time()
	repWin.show = false
	imgui.StrCopy(repWin.answerBuf, "")
	sendInfoRep(content, startTime)
	sampSendDialogResponse(repWin.dialogId, 1, 0, u8:decode(content))
end
local function repForwardToA()
	local authorIdStr = repWin.authorId ~= -1 and tostring(repWin.authorId) or "?"
	local suspectIdStr = repWin.suspectId ~= -1 and tostring(repWin.suspectId) or "?"
	local msg = "[" .. repWin.authorNick .. "][" .. authorIdStr .. "]->[" .. repWin.suspectNick .. "][" .. suspectIdStr .. "]: " .. repWin.reportText
	local replyText = u8:decode("Уважаемый игрок, передал Вашу жалобу в чат администрации!")
	repWin.show = false
	imgui.StrCopy(repWin.answerBuf, "")
	sampSendDialogResponse(repWin.dialogId, 1, 0, replyText)
	lua_thread.create(function()
		wait(10)
		sampSendChat("/a " .. u8:decode(msg))
	end)
end
local function repDelete()
	repWin.show = false
	imgui.StrCopy(repWin.answerBuf, "")
	repWin.pendingDelete = true
	sampSendDialogResponse(repWin.dialogId, 0, -1, "")
end
local function resetIO()
	for i = 0, 511 do
		imgui.GetIO().KeysDown[i] = false
	end
	for i = 0, 4 do
		imgui.GetIO().MouseDown[i] = false
	end
	imgui.GetIO().KeyCtrl = false
	imgui.GetIO().KeyShift = false
	imgui.GetIO().KeyAlt = false
	imgui.GetIO().KeySuper = false
end
local repWinNew = imgui.OnFrame(
	function() return repWin.show end,
	function(self)
		local sw, sh = getScreenResolution()
		local winW = 560
		imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.Always, imgui.ImVec2(0.5, 0.5))
		imgui.SetNextWindowSize(imgui.ImVec2(winW, 0), imgui.Cond.Always)
		imgui.PushStyleColor(imgui.Col.WindowBg,        imgui.ImVec4(0.08, 0.04, 0.12, 0.97))
		imgui.PushStyleColor(imgui.Col.TitleBgActive,   imgui.ImVec4(0.30, 0.15, 0.45, 1.0))
		imgui.PushStyleColor(imgui.Col.TitleBg,         imgui.ImVec4(0.22, 0.10, 0.34, 1.0))
		imgui.PushStyleColor(imgui.Col.Button,          imgui.ImVec4(0.40, 0.20, 0.60, 0.70))
		imgui.PushStyleColor(imgui.Col.ButtonHovered,   imgui.ImVec4(0.52, 0.28, 0.76, 0.90))
		imgui.PushStyleColor(imgui.Col.ButtonActive,    imgui.ImVec4(0.64, 0.36, 0.90, 1.0))
		imgui.PushStyleColor(imgui.Col.Separator,       imgui.ImVec4(0.40, 0.20, 0.60, 0.60))
		imgui.PushStyleColor(imgui.Col.FrameBg,         imgui.ImVec4(0.16, 0.08, 0.26, 1.0))
		imgui.PushStyleColor(imgui.Col.FrameBgHovered,  imgui.ImVec4(0.24, 0.12, 0.38, 1.0))
		imgui.PushStyleColor(imgui.Col.FrameBgActive,   imgui.ImVec4(0.30, 0.15, 0.46, 1.0))
		imgui.PushStyleColor(imgui.Col.Header,          imgui.ImVec4(0.30, 0.15, 0.45, 0.60))
		imgui.PushStyleColor(imgui.Col.HeaderHovered,   imgui.ImVec4(0.40, 0.20, 0.58, 0.80))
		imgui.PushStyleColor(imgui.Col.ScrollbarBg,     imgui.ImVec4(0.06, 0.03, 0.10, 1.0))
		imgui.PushStyleColor(imgui.Col.ScrollbarGrab,   imgui.ImVec4(0.40, 0.20, 0.60, 1.0))
		imgui.PushStyleVarFloat(imgui.StyleVar.WindowRounding,  8)
		imgui.PushStyleVarFloat(imgui.StyleVar.FrameRounding,   5)
		imgui.PushStyleVarFloat(imgui.StyleVar.GrabRounding,    5)
		imgui.PushStyleVarFloat(imgui.StyleVar.PopupRounding,   5)
		imgui.PushStyleVarVec2(imgui.StyleVar.ItemSpacing,      imgui.ImVec2(7, 5))
		imgui.PushStyleVarVec2(imgui.StyleVar.FramePadding,     imgui.ImVec2(8, 5))
		imgui.PushStyleVarVec2(imgui.StyleVar.WindowPadding,    imgui.ImVec2(14, 12))
		local wFlags = imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoScrollbar + imgui.WindowFlags.AlwaysAutoResize
		imgui.Begin("  Репорт | zzzachecker###repwin", nil, wFlags)
		local innerW = imgui.GetContentRegionAvail().x
		imgui.Spacing()
		local spc = 8
		local col2W = math.floor((innerW - spc) / 2)
		local authorLabel = "Жалоба от:"
		local authorPlatStr = repWin.authorPlatform and ("[" .. repWin.authorPlatform .. "]") or ""
		local authorVal = repWin.authorNick ~= ""
			and (repWin.authorNick .. "[" .. repWin.authorId .. "]" .. authorPlatStr)
			or "—"
		local suspectLabel = "Нарушитель:"
		local suspectPlatStr = repWin.suspectPlatform and ("[" .. repWin.suspectPlatform .. "]") or ""
		local suspectVal = repWin.suspectNick ~= ""
			and (repWin.suspectNick .. "[" .. repWin.suspectId .. "]" .. suspectPlatStr)
			or "—"
		imgui.PushStyleColor(imgui.Col.ChildBg, imgui.ImVec4(0.12, 0.06, 0.20, 0.80))
		imgui.PushStyleVarFloat(imgui.StyleVar.ChildRounding, 6)
		imgui.BeginChild("##rep_info_left", imgui.ImVec2(col2W, 44), false)
		imgui.TextColored(imgui.ImVec4(0.60, 0.40, 0.80, 1), authorLabel)
		imgui.TextColored(repWin.authorColor, authorVal)
		imgui.EndChild()
		imgui.SameLine(0, spc)
		imgui.BeginChild("##rep_info_right", imgui.ImVec2(col2W, 44), false)
		imgui.TextColored(imgui.ImVec4(0.60, 0.40, 0.80, 1), suspectLabel)
		imgui.TextColored(repWin.suspectColor, suspectVal)
		imgui.EndChild()
		imgui.PopStyleVar()
		imgui.PopStyleColor()
		imgui.Spacing()
		imgui.PushStyleColor(imgui.Col.ChildBg, imgui.ImVec4(0.10, 0.05, 0.17, 0.85))
		imgui.PushStyleVarFloat(imgui.StyleVar.ChildRounding, 6)
		local dispText = repWin.reportText
		local textSz = imgui.CalcTextSize(dispText)
		local childW = innerW
		local estLines = math.max(1, math.ceil(textSz.x / (childW - 16)))
		local childH = math.min(estLines * 16 + 14, 68)
		imgui.BeginChild("##rep_text_box", imgui.ImVec2(childW, childH), false)
		imgui.TextColored(imgui.ImVec4(0.60, 0.40, 0.80, 1), "Текст репорта:")
		imgui.SameLine()
		imgui.TextWrapped(dispText)
		imgui.EndChild()
		imgui.PopStyleVar()
		imgui.PopStyleColor()
		imgui.Spacing()
		imgui.Separator()
		imgui.Spacing()
		local clearW = 28
		imgui.PushStyleColor(imgui.Col.Button,        imgui.ImVec4(0.35, 0.10, 0.50, 0.80))
		imgui.PushStyleColor(imgui.Col.ButtonHovered, imgui.ImVec4(0.50, 0.15, 0.70, 1.0))
		imgui.PushStyleColor(imgui.Col.ButtonActive,  imgui.ImVec4(0.65, 0.20, 0.85, 1.0))
		imgui.PushItemWidth(innerW - clearW - 7)
		if repWin.focusInput > 0 then
			repWin.focusInput = repWin.focusInput - 1
			if repWin.focusInput == 0 then
				imgui.SetKeyboardFocusHere()
			end
		end
		imgui.InputTextWithHint("##rep_answer", "Введите ответ на репорт...", repWin.answerBuf, 512)
		imgui.PopItemWidth()
		imgui.SameLine(0, 7)
		if imgui.Button("X##clrbuf", imgui.ImVec2(clearW, 0)) then
			imgui.StrCopy(repWin.answerBuf, "")
		end
		imgui.PopStyleColor(3)
		imgui.Spacing()
		imgui.TextColored(imgui.ImVec4(0.55, 0.35, 0.75, 1), "Быстрые ответы:")
		imgui.Spacing()
		local cols = 4
		local btnSpc = 5
		local btnW = math.floor((innerW - btnSpc * (cols - 1)) / cols)
		imgui.PushStyleColor(imgui.Col.Button,        imgui.ImVec4(0.22, 0.11, 0.36, 0.90))
		imgui.PushStyleColor(imgui.Col.ButtonHovered, imgui.ImVec4(0.38, 0.20, 0.58, 1.0))
		imgui.PushStyleColor(imgui.Col.ButtonActive,  imgui.ImVec4(0.52, 0.28, 0.76, 1.0))
		for i, btn in ipairs(repButtons) do
			if (i - 1) % cols ~= 0 then imgui.SameLine(0, btnSpc) end
			if imgui.Button(btn.name .. "##rb" .. i, imgui.ImVec2(btnW, 24)) then
				if btn.action and btn.action ~= "" then
					local cmd = repSubstVars(btn.action)
					lua_thread.create(function()
						wait(100)
						sampSendChat(cmd)
					end)
				end
				repSend(btn.content)
			end
		end
		imgui.PopStyleColor(3)
		imgui.Spacing()
		imgui.Separator()
		imgui.Spacing()
		local actSpc = 6
		local actCnt = 4
		local actW = math.floor((innerW - actSpc * (actCnt - 1)) / actCnt)
		imgui.PushStyleColor(imgui.Col.Button,        imgui.ImVec4(0.28, 0.55, 0.28, 0.85))
		imgui.PushStyleColor(imgui.Col.ButtonHovered, imgui.ImVec4(0.36, 0.70, 0.36, 1.0))
		imgui.PushStyleColor(imgui.Col.ButtonActive,  imgui.ImVec4(0.44, 0.85, 0.44, 1.0))
		if imgui.Button("Отправить##send", imgui.ImVec2(actW, 26)) then
			repSend()
		end
		imgui.PopStyleColor(3)
		imgui.SameLine(0, actSpc)
		imgui.PushStyleColor(imgui.Col.Button,        imgui.ImVec4(0.20, 0.35, 0.58, 0.85))
		imgui.PushStyleColor(imgui.Col.ButtonHovered, imgui.ImVec4(0.28, 0.48, 0.76, 1.0))
		imgui.PushStyleColor(imgui.Col.ButtonActive,  imgui.ImVec4(0.36, 0.60, 0.92, 1.0))
		if imgui.Button("Переслать в /a##fwd", imgui.ImVec2(actW, 26)) then
			repForwardToA()
		end
		imgui.PopStyleColor(3)
		imgui.SameLine(0, actSpc)
		imgui.PushStyleColor(imgui.Col.Button,        imgui.ImVec4(0.55, 0.18, 0.18, 0.85))
		imgui.PushStyleColor(imgui.Col.ButtonHovered, imgui.ImVec4(0.72, 0.24, 0.24, 1.0))
		imgui.PushStyleColor(imgui.Col.ButtonActive,  imgui.ImVec4(0.88, 0.30, 0.30, 1.0))
		if imgui.Button("Удалить##del", imgui.ImVec2(actW, 26)) then
			repDelete()
		end
		imgui.PopStyleColor(3)
		imgui.SameLine(0, actSpc)
		imgui.PushStyleColor(imgui.Col.Button,        imgui.ImVec4(0.25, 0.12, 0.38, 0.70))
		imgui.PushStyleColor(imgui.Col.ButtonHovered, imgui.ImVec4(0.38, 0.20, 0.55, 0.90))
		imgui.PushStyleColor(imgui.Col.ButtonActive,  imgui.ImVec4(0.50, 0.28, 0.70, 1.0))
		if imgui.Button("Закрыть##cls", imgui.ImVec2(actW, 26)) then
			repClose()
		end
		imgui.PopStyleColor(3)
		imgui.Spacing()
		imgui.PopStyleColor(14)
		imgui.PopStyleVar(7)
		imgui.End()
	end
)
local winmm = ffi.load("winmm")
function playAudio(filePath, alias)
	alias = alias or "checker_sound"
	winmm.mciSendStringA("close " .. alias, nil, 0, nil)
	winmm.mciSendStringA('open "' .. filePath .. '" type mpegvideo alias ' .. alias, nil, 0, nil)
	winmm.mciSendStringA("play " .. alias, nil, 0, nil)
end
function checkForUpdates(manual, callback)
	lua_thread.create(function()
		if updater_busy then if callback then callback() end return end
		if manual then
			sampAddChatMessage(u8:decode("[Checker] Проверяем обновления..."), 0x4D9FFF)
			update_failed = false
		elseif update_failed then if callback then callback() end return end
		updater_busy = true
		local temp_json = checkerFolder .. "update_check.tmp"
		local dlstatus = require('moonloader').download_status
		local dl_complete = false
		local dl_failed = false
		pcall(function() os.remove(temp_json) end)
		downloadUrlToFile("https://api.github.com/repos/alikhandwawd/zzzachecker/releases/latest", temp_json, function(id, status, p1, p2)
			if status == dlstatus.STATUSEX_ENDDOWNLOAD then dl_complete = true
			elseif status == dlstatus.STATUS_DOWNLOADFAILED then dl_failed = true end
		end)
		local timeout = 0
		while not dl_complete and not dl_failed and timeout < 300 do wait(50); timeout = timeout + 1 end
		updater_busy = false
		if dl_failed or timeout >= 300 then
			if manual then sampAddChatMessage(u8:decode("[Checker] Ошибка соединения с GitHub"), 0xFF6347) end
			update_failed = true
			pcall(function() os.remove(temp_json) end)
			if callback then callback() end
			return
		end
		update_failed = false
		local ok, fin = pcall(function() return io.open(temp_json, "r") end)
		if not ok or not fin then update_failed = true; pcall(function() os.remove(temp_json) end); if callback then callback() end return end
		local ok2, text = pcall(function() return fin:read("*a") end)
		fin:close(); pcall(function() os.remove(temp_json) end)
		if not ok2 or not text or text == "" then update_failed = true; if callback then callback() end return end
		text = text:gsub("^\239\187\191", "")
		local ok3, data = pcall(function() return decodeJson(text) end)
		if not ok3 or not data or not data.tag_name then update_failed = true; if callback then callback() end return end
		local server_ver = tostring(data.tag_name or ""):gsub("^v", "")
		local function verGreater(remote, local_)
			local function split(v) local t = {} for n in v:gmatch("[0-9]+") do t[#t+1] = tonumber(n) end return t end
			local r, l = split(remote), split(local_)
			for i = 1, math.max(#r, #l) do
				local rv, lv = r[i] or 0, l[i] or 0
				if rv > lv then return true end
				if rv < lv then return false end
			end
			return false
		end
		if server_ver ~= "" and verGreater(server_ver, script_version) then
			update_available = true
			new_version = server_ver
			sampAddChatMessage(u8:decode(string.format("[Checker] Доступно обновление до %s!", server_ver)), 0x4D9FFF)
		else
			if manual then sampAddChatMessage(u8:decode("[Checker] У вас последняя версия."), 0x66FF66) end
		end
		if callback then callback() end
	end)
end
function installUpdate()
	lua_thread.create(function()
		if not update_available or not new_version then
			sampAddChatMessage(u8:decode("[Checker] Нет доступных обновлений"), 0xFF6347)
			return
		end
		updater_busy = true
		local script_path = thisScript().path
		if not script_path then
			sampAddChatMessage(u8:decode("[Checker] Ошибка пути скрипта"), 0xFF6347)
			updater_busy = false; return
		end
		local temp_path = checkerFolder .. "checker.tmp"
		sampAddChatMessage(u8:decode("[Checker] Скачиваем обновление..."), 0x4D9FFF)
		local api_url = "https://api.github.com/repos/alikhandwawd/zzzachecker/releases/latest"
		local ok_req, res = pcall(function()
			return requests.get(api_url, {timeout = 10, headers = {["User-Agent"] = "Mozilla/5.0"}})
		end)
		if not ok_req or not res or res.status_code ~= 200 then
			sampAddChatMessage(u8:decode("[Checker] Ошибка получения релиза"), 0xFF6347)
			updater_busy = false; return
		end
		local ok_json, data = pcall(function() return decodeJson(res.text) end)
		if not ok_json or not data or not data.assets or #data.assets == 0 then
			sampAddChatMessage(u8:decode("[Checker] В релизе нет файлов"), 0xFF6347)
			updater_busy = false; return
		end
		local download_url
		for _, asset in ipairs(data.assets) do
			if asset.name == "zzzachecker.lua" then download_url = asset.browser_download_url; break end
		end
		if not download_url then
			sampAddChatMessage(u8:decode("[Checker] Файл не найден в релизе"), 0xFF6347)
			updater_busy = false; return
		end
		local dlstatus = require('moonloader').download_status
		local dl_done = false
		downloadUrlToFile(download_url, temp_path, function(id, status, p1, p2)
			if status == dlstatus.STATUS_ENDDOWNLOADDATA then dl_done = true end
		end)
		local timeout = 0
		while not dl_done and timeout < 300 do wait(100); timeout = timeout + 1 end
		if timeout >= 300 then
			sampAddChatMessage(u8:decode("[Checker] Ошибка скачивания"), 0xFF6347)
			updater_busy = false; pcall(function() os.remove(temp_path) end); return
		end
		wait(500)
		local ok_copy = pcall(function()
			if doesFileExist(script_path) then os.remove(script_path); wait(300) end
			local fin = io.open(temp_path, "rb")
			local fout = io.open(script_path, "wb")
			if fin and fout then fout:write(fin:read("*a")); fin:close(); fout:close() end
			wait(500)
		end)
		if ok_copy then
			pcall(function() os.remove(temp_path) end)
			sampAddChatMessage(u8:decode(string.format("[Checker] Обновление до %s установлено!", new_version)), 0x66FF66)
			updater_busy = false
			wait(2000)
			thisScript():reload()
		else
			sampAddChatMessage(u8:decode("[Checker] Ошибка установки"), 0xFF6347)
			updater_busy = false; pcall(function() os.remove(temp_path) end)
		end
	end)
end
function onWindowMessage(msg, wparam, lparam)
	if (msg == 0x100 or msg == 0x104) and wparam == 0x0D then
		if repWin.show and not isPauseMenuActive() and not sampIsDialogActive() then
			if not repWinEnterProcessed then
				repWinEnterPressed = true
				repWinEnterProcessed = true
			end
			consumeWindowMessage(true, true)
		end
	end
	if (msg == 0x101 or msg == 0x105) and wparam == 0x0D then
		if repWin.show and not isPauseMenuActive() and not sampIsDialogActive() then
			if repWinEnterPressed then
				repSend()
				resetIO()
			end
			repWinEnterPressed = false
			repWinEnterProcessed = false
			consumeWindowMessage(true, true)
		end
	end
	if (msg == 0x100 or msg == 0x104) and wparam == 0x1B then
		if repWin.show and not isPauseMenuActive() and not sampIsDialogActive() then
			if not repWinEscProcessed then
				if imgui.GetIO().WantCaptureKeyboard then
					repWinEscAction = "unfocus"
				else
					repWinEscAction = "close"
				end
				repWinEscProcessed = true
			end
			consumeWindowMessage(true, true)
		end
	end
	if (msg == 0x101 or msg == 0x105) and wparam == 0x1B then
		if repWin.show and not isPauseMenuActive() and not sampIsDialogActive() then
			if repWinEscAction == "unfocus" then
				imgui.GetIO().WantCaptureKeyboard = false
			elseif repWinEscAction == "close" then
				repClose()
				resetIO()
			end
			repWinEscAction = nil
			repWinEscProcessed = false
			consumeWindowMessage(true, true)
		end
	end
end
function downloadAudioFiles(callback)
	lua_thread.create(function()
		if not doesDirectoryExist(audioFolder) then
			createDirectory(audioFolder)
		end
		local completed = {}
		for key, url in pairs(audioUrls) do
			local path = audioFiles[key]
			if doesFileExist(path) then
				completed[key] = true
			else
				downloadUrlToFile(url, path, function(id, status_code, p1, p2)
					completed[key] = true
				end)
			end
		end
		local timeout = os.clock() + 30
		while (not completed.report or not completed.joined or not completed.success or not completed.failure or not completed.successautorep) and os.clock() < timeout do
			wait(100)
		end
		if callback then callback() end
	end)
end
function isCursorActive()
	local pci = ffi.new("CURSORINFO")
	pci.cbSize = ffi.sizeof("CURSORINFO")
	ffi.C.GetCursorInfo(pci)
	return (pci.flags == 1)
end
local function getDefaultsByResolution()
	local sw, sh = getScreenResolution()
	if sw >= 2560 and sh >= 1600 then
		return {
			admin   = {x = 1930, y = 1100},
			players = {x = 1930, y = 700},
			farChat = {x = 45,   y = 553},
		}
	else
		return {
			admin   = {x = 1370, y = 650},
			players = {x = 1370, y = 301},
			farChat = {x = 45,   y = 553},
		}
	end
end
local _def = getDefaultsByResolution()
local positions = {
	admin   = {x = _def.admin.x,   y = _def.admin.y},
	players = {x = _def.players.x, y = _def.players.y},
	farChat = {x = _def.farChat.x, y = _def.farChat.y},
}
local defaults = getDefaultsByResolution()
local notifyifsnorc_excluded = {
	["Jay_Sweet"] = true,
	["Hayato_Mellson"] = true,
}
local notifyifsnorc_keywords = {
	u8:decode("алихан"),
	u8:decode("алих"),
	u8:decode("алексей"),
	u8:decode("леха"),
	u8:decode("хаято"),
	u8:decode("джей"),
	u8:decode("джэй"),
	u8:decode("свит"),
	u8:decode("мелсон"),
}
local autoquit_keywords = {
	u8:decode("алихан"),
	u8:decode("алих"),
	u8:decode("алексей"),
	u8:decode("леха"),
	u8:decode("хаято"),
	u8:decode("джей"),
	u8:decode("джэй"),
	u8:decode("свит"),
	u8:decode("мелсон"),
	u8:decode("где"),
}
local function matchesNotifyifsnorcKeyword(msg)
	local lower = msg:lower()
	if lower:match("а+у+") then return true end
	if lower:match("а+л+о+") then return true end
	for _, kw in ipairs(notifyifsnorc_keywords) do
		if lower:find(kw:lower(), 1, true) then return true end
	end
	return false
end
local function matchesAutoquitKeyword(msg)
	local lower = msg:lower()
	for _, kw in ipairs(autoquit_keywords) do
		if lower:find(kw:lower(), 1, true) then return true end
	end
	return false
end
local function isPlayerInCheckerList(nick)
	local cleanNick = removePrefix(nick)
	return autoquit_players[cleanNick] == true
end
local function isAfk()
	return state.afk_timerStarted and state.afk_lastMoveTime > 0 and (os.clock() - state.afk_lastMoveTime) >= 120
end
local function isUnfocusedLong()
	return state.unfocusedSince ~= nil and (os.clock() - state.unfocusedSince) >= 30
end
local function doAutoquit(reason)
	if state.autoquit_done then return end
	state.autoquit_done = true
	sampAddChatMessage(u8:decode(string.format("[AutoQuit] Выход: %s", reason)), 0xFF4444)
	lua_thread.create(function()
		wait(300)
		if isGameFocused() then
			sampSendChat("/q")
		else
			ffi.C.ExitProcess(0)
		end
	end)
end
function canSendCommand()
	return not sampIsChatInputActive() and not sampIsDialogActive() and not isCursorActive() and not state.adminsCheckerWaiting
end
function saveConfig()
	local cfg = {
		adminCheckerX = positions.admin.x,
		adminCheckerY = positions.admin.y,
		playersCheckerX = positions.players.x,
		playersCheckerY = positions.players.y,
		farChatX = positions.farChat.x,
		farChatY = positions.farChat.y,
		hideOnScreenshot = toggles.hideOnScreenshot,
		farChatEnabled = toggles.farChatEnabled,
		wallhackEnabled = toggles.wallhackEnabled,
		checkerNotifEnabled = toggles.checkerNotifEnabled,
		notifRepEnabled = toggles.notifRepEnabled,
		voicedNotif = toggles.voicedNotif,
		autoRepEnabled = toggles.autoRepEnabled,
		notifyifsnorcEnabled = toggles.notifyifsnorcEnabled,
		autoquitifRS = toggles.autoquitifRS,
		autoAnswerReps = toggles.autoAnswerReps,
	}
	local file = io.open(config.configFilePath, "w")
	if file then
		file:write(encodeJson(cfg))
		file:close()
		return true
	end
	return false
end
function loadConfig()
	local file = io.open(config.configFilePath, "r")
	if not file then saveConfig(); return end
	local content = file:read("*a")
	file:close()
	if not content or content == "" then return end
	local cfg = decodeJson(content)
	if cfg then
		positions.admin.x = cfg.adminCheckerX or defaults.admin.x
		positions.admin.y = cfg.adminCheckerY or defaults.admin.y
		positions.players.x = cfg.playersCheckerX or defaults.players.x
		positions.players.y = cfg.playersCheckerY or defaults.players.y
		positions.farChat.x = cfg.farChatX or defaults.farChat.x
		positions.farChat.y = cfg.farChatY or defaults.farChat.y
		toggles.hideOnScreenshot = cfg.hideOnScreenshot ~= nil and cfg.hideOnScreenshot or true
		toggles.farChatEnabled = cfg.farChatEnabled ~= nil and cfg.farChatEnabled or true
		toggles.wallhackEnabled = cfg.wallhackEnabled or false
		toggles.notifRepEnabled = cfg.notifRepEnabled or false
		toggles.checkerNotifEnabled = cfg.checkerNotifEnabled or false
		toggles.voicedNotif = cfg.voicedNotif or false
		toggles.autoRepEnabled = cfg.autoRepEnabled or false
		toggles.notifyifsnorcEnabled = cfg.notifyifsnorcEnabled or false
		toggles.autoquitifRS = cfg.autoquitifRS ~= nil and cfg.autoquitifRS or true
		toggles.autoAnswerReps = cfg.autoAnswerReps or false
	end
end
function resetToDefaultPositions()
	positions.admin.x = defaults.admin.x
	positions.admin.y = defaults.admin.y
	positions.players.x = defaults.players.x
	positions.players.y = defaults.players.y
	positions.farChat.x = defaults.farChat.x
	positions.farChat.y = defaults.farChat.y
	saveConfig()
end
function removePrefix(nickname)
	if not nickname then return nil end
	local cleanNick = nickname:gsub("^%[PC%]", ""):gsub("^%[M%]", "")
	cleanNick = cleanNick:gsub("%[PC%]$", ""):gsub("%[M%]$", "")
	return cleanNick
end
function getNickById(id)
	local numId = tonumber(id)
	if numId and sampIsPlayerConnected(numId) then
		return removePrefix(sampGetPlayerNickname(numId))
	end
	return nil
end
function getPlayerPlatform(nickname)
	if not nickname then return nil end
	if nickname:find("%[PC%]") then return "PC"
	elseif nickname:find("%[M%]") then return "M" end
	return nil
end
function getPlayerIdByNickname(nickname)
	local cleanSearchNick = removePrefix(nickname)
	for i = 0, 999 do
		if sampIsPlayerConnected(i) then
			local name = sampGetPlayerNickname(i)
			local cleanName = removePrefix(name)
			if cleanName == cleanSearchNick then
				return i, name
			end
		end
	end
	return nil
end
function isGameFocused()
	local hwnd = ffi.C.GetForegroundWindow()
	if hwnd == nil then return false end
	local pid = ffi.new("unsigned long[1]")
	ffi.C.GetWindowThreadProcessId(hwnd, pid)
	return pid[0] == ffi.C.GetCurrentProcessId()
end
function isScreenshotKeyPressed()
	return wasKeyPressed(0x77)
end
function sampev.onPlayerChatBubble(playerId, color, distance, duration, message)
	if toggles.farChatEnabled and message and message ~= "" then
		addFarChatMessage(playerId, message, color, distance)
	end
end
function detectAutoRepType(reportText)
    if not reportText or reportText == "" then return nil end
    local function splitUTF8(s)
        local chars = {}
        local i = 1
        while i <= #s do
            local b = string.byte(s, i)
            local size = 1
            if b >= 0xC0 and b < 0xE0 then size = 2
            elseif b >= 0xE0 and b < 0xF0 then size = 3
            elseif b >= 0xF0 and b < 0xF8 then size = 4 end
            chars[#chars + 1] = s:sub(i, i + size - 1)
            i = i + size
        end
        return chars
    end
    local function collapseRepeats(s)
        if #s == 0 then return s end
        local chars = splitUTF8(s)
        local result = {chars[1]}
        for idx = 2, #chars do
            if chars[idx] ~= chars[idx-1] then
                result[#result + 1] = chars[idx]
            end
        end
        return table.concat(result)
    end
    local function levenshtein(s, t)
        if s == t then return 0 end
        local s_chars = splitUTF8(s)
        local t_chars = splitUTF8(t)
        local len_s, len_t = #s_chars, #t_chars
        if len_s == 0 then return len_t end
        if len_t == 0 then return len_s end
        local v0, v1 = {}, {}
        for i = 0, len_t do v0[i] = i end
        for i = 0, len_s - 1 do
            v1[0] = i + 1
            for j = 0, len_t - 1 do
                local cost = (s_chars[i+1] == t_chars[j+1]) and 0 or 1
                v1[j+1] = math.min(v1[j] + 1, v0[j+1] + 1, v0[j] + cost)
            end
            v0, v1 = v1, v0
        end
        return v0[len_t]
    end
    local function wordMatches(text, keyword, maxDist)
        maxDist = maxDist or 2
        local collapsed_kw = collapseRepeats(keyword)
        local collapsed_kw_len = #splitUTF8(collapsed_kw)
        for w in text:gmatch("%S+") do
            local collapsed_w = collapseRepeats(w)
            local dist = levenshtein(collapsed_w, collapsed_kw)
            local maxAllowed = math.max(1, math.floor(collapsed_kw_len / 3))
            if maxAllowed > maxDist then maxAllowed = maxDist end
            if dist <= maxAllowed then return true end
        end
        return false
    end
    local allKeywords = {"велик", "вел", "bike", "падаю", "падает", "лечу", "баг", "глюк", "bug", "застрял", "сиджей", "сж", "cj", "чиллиад", "гора", "chiliad", "спавн", "спаун", "spawn"}
    local function bestKeyword(w)
        local collapsed_w = collapseRepeats(w)
        local bestKw, bestDist = nil, 999
        for _, kw in ipairs(allKeywords) do
            local collapsed_kw = collapseRepeats(kw)
            local collapsed_kw_len = #splitUTF8(collapsed_kw)
            local maxAllowed = math.min(2, math.max(1, math.floor(collapsed_kw_len / 3)))
            local dist = levenshtein(collapsed_w, collapsed_kw)
            if dist <= maxAllowed and dist < bestDist then
                bestDist = dist
                bestKw = kw
            end
        end
        return bestKw
    end
    local lower = reportText:lower()
    local collapsedWords = {}
    local finalWords = {}
    for w in lower:gmatch("%S+") do
        collapsedWords[#collapsedWords + 1] = collapseRepeats(w)
        local kw = bestKeyword(w)
        finalWords[#finalWords + 1] = kw or collapseRepeats(w)
    end
    local collapsedText = table.concat(collapsedWords, " ")
    local finalText = table.concat(finalWords, " ")
    if wordMatches(lower, "велик") or wordMatches(lower, "вел") or wordMatches(lower, "bike") then
        return "bike", nil, nil, finalText
    end
    local bugKeywords = {"падаю", "падает", "лечу", "баг", "глюк", "bug", "застрял", "сиджей", "сж", "cj", "чиллиад", "гора", "chiliad"}
    local spawnKeywords = {"спавн", "спаун", "spawn"}
    local hasBug = false
    for _, kw in ipairs(bugKeywords) do
        if wordMatches(lower, kw) then hasBug = true break end
    end
    local hasSpawn = false
    for _, kw in ipairs(spawnKeywords) do
        if wordMatches(lower, kw) then hasSpawn = true break end
    end
    if hasBug and hasSpawn then return "spawn_bug", nil, nil, finalText end
    if hasSpawn then return "spawn", nil, nil, finalText end
    if lower:find("/rc", 1, true) then
        for key, faction in pairs(rcFactions) do
            if lower:find(key:lower(), 1, true) or wordMatches(lower, key:lower()) then
                return "rc", faction, key, finalText
            end
        end
    end
    return nil, nil, nil, finalText
end
local autoAnswerRepColors = {
	{r = 0,   g = 180, b = 225},
	{r = 0,   g = 153, b = 0},
	{r = 204, g = 0,   b = 255},
	{r = 102, g = 102, b = 255},
	{r = 255, g = 204, b = 0},
	{r = 102, g = 94,  b = 94},
}
local autoAnswerRepColorsFilled = true
local function isAuthorColorAllowed(authorId)
	if not autoAnswerRepColorsFilled or #autoAnswerRepColors == 0 then return true end
	if authorId == -1 or not sampIsPlayerConnected(authorId) then return false end
	local color = sampGetPlayerColor(authorId)
	local r = bit.band(bit.rshift(color, 16), 0xFF)
	local g = bit.band(bit.rshift(color, 8), 0xFF)
	local b = bit.band(color, 0xFF)
	for _, c in ipairs(autoAnswerRepColors) do
		if math.abs(c.r - r) <= 5 and math.abs(c.g - g) <= 5 and math.abs(c.b - b) <= 5 then
			return true
		end
	end
	return false
end
function sampev.onShowDialog(id, style, title, button1, button2, text)
	local cleanTitle = title:gsub("%[%d+%]", ""):gsub("{%x%x%x%x%x%x}", ""):gsub("^%s+", ""):gsub("%s+$", "")
	cleanTitle = encoding.UTF8(cleanTitle)
	if id == 10 and cleanTitle:find("Администрация в сети") then
		if state.scriptAdminsRequest then
			state.adminsList = parseAdmins(text)
			state.adminsCheckerWaiting = false
			state.requestAttempts = 0
			state.scriptAdminsRequest = false
			sampSendDialogResponse(id, 0, -1, "")
			return false
		else
			state.adminsCheckerWaiting = false
			state.adminsCommandScheduled = false
			state.requestAttempts = 0
			state.scriptAdminsRequest = false
		end
	end
	if id == 988 and state.autoReport.waitingFor988 then
		state.autoReport.waitingFor988 = false
		local slotIndex = state.autoReport.slotIndex
		lua_thread.create(function()
			wait(200)
			state.autoReport.waitingFor989 = true
			sampSendDialogResponse(988, 1, slotIndex, "")
		end)
		return false
	end
	if id == 989 and repWin.pendingDelete then
		repWin.pendingDelete = false
		lua_thread.create(function()
			wait(200)
			sampSendDialogResponse(989, 1, 1, "")
		end)
		return false
	end
	if id == 989 and state.autoReport.waitingFor989 then
		state.autoReport.waitingFor989 = false
		lua_thread.create(function()
			wait(200)
			state.autoReport.waitingFor990 = true
			sampSendDialogResponse(989, 1, 0, "")
		end)
		return false
	end
	if id == 990 and state.autoReport.waitingFor990 then
		state.autoReport.waitingFor990 = false
		local rawTextCopy = text
		lua_thread.create(function()
			wait(200)
			state.autoReport.reportTaken = true
			if toggles.autoAnswerReps and toggles.autoRepEnabled and not isGameFocused() then
				parseRepDialog(rawTextCopy)
				local repType, rcFaction, rcKey, fixedText = detectAutoRepType(repWin.reportText)
				local colorAllowed = isAuthorColorAllowed(repWin.authorId)
				local repTypeStr = repType or "nil"
				local authorIdStr = tostring(repWin.authorId ~= -1 and repWin.authorId or 0)
				local answerText
				local answerCmd
				if repType == "spawn_bug" then
					answerText = "Уважаемый игрок, сейчас вас заспавню!"
					answerCmd = "/spawn " .. authorIdStr
				elseif repType == "bike" and colorAllowed then
					answerText = "Уважаемый игрок, ожидайте выдачи транспорта!"
					answerCmd = "/pveh " .. authorIdStr .. " 510 0 0"
				elseif repType == "spawn" and colorAllowed then
					answerText = "Уважаемый игрок, сейчас вас заспавню!"
					answerCmd = "/spawn " .. authorIdStr
				elseif repType == "rc" and rcFaction and rcKey then
					answerText = "ща"
					answerCmd = "/rc " .. rcKey
				else
					answerText = "не распознан / условия не выполнены"
					answerCmd = ""
				end
				local col = colors.checker
				sampAddChatMessage(u8:decode(string.format("{%06X}[AutoRep] {FFFFFF}type: %s | colorallowed: %s", col, repTypeStr, tostring(colorAllowed))), -1)
				sampAddChatMessage(u8:decode(string.format("{%06X}[AutoRep] {FFFFFF}fixedtext: %s | finaltext: %s | cmd: %s", col, fixedText or "", answerText, answerCmd)), -1)
				if repType == "spawn_bug" then
					wait(2000)
					sampSendDialogResponse(990, 1, 0, u8:decode(answerText))
					wait(300)
					sampSendChat(answerCmd)
					if doesFileExist(audioFiles.successautorep) then
						playAudio(audioFiles.successautorep, "checker_successautorep")
					end
					sampAddChatMessage(u8:decode(string.format("{%06X}[AutoRep] {FFFFFF}Авто-ответ: Спавн (баг) [%s]", colors.checker, repWin.authorNick)), -1)
				elseif repType == "bike" and colorAllowed then
					wait(2000)
					sampSendDialogResponse(990, 1, 0, u8:decode(answerText))
					wait(300)
					sampSendChat(answerCmd)
					if doesFileExist(audioFiles.successautorep) then
						playAudio(audioFiles.successautorep, "checker_successautorep")
					end
					sampAddChatMessage(u8:decode(string.format("{%06X}[AutoRep] {FFFFFF}Авто-ответ: Велик [%s]", colors.checker, repWin.authorNick)), -1)
				elseif repType == "spawn" and colorAllowed then
					wait(2000)
					sampSendDialogResponse(990, 1, 0, u8:decode(answerText))
					wait(300)
					sampSendChat(answerCmd)
					if doesFileExist(audioFiles.successautorep) then
						playAudio(audioFiles.successautorep, "checker_successautorep")
					end
					sampAddChatMessage(u8:decode(string.format("{%06X}[AutoRep] {FFFFFF}Авто-ответ: Спавн [%s]", colors.checker, repWin.authorNick)), -1)
				elseif repType == "rc" and rcFaction and rcKey then
					wait(2000)
					sampSendDialogResponse(990, 1, 0, u8:decode(answerText))
					wait(300)
					sampSendChat(u8:decode(answerCmd))
					if doesFileExist(audioFiles.successautorep) then
						playAudio(audioFiles.successautorep, "checker_successautorep")
					end
					sampAddChatMessage(u8:decode(string.format("{%06X}[AutoRep] {FFFFFF}Авто-ответ: RC [%s]", colors.checker, rcFaction.name)), -1)
				else
					sampSendDialogResponse(990, 1, 0, "")
				end
			else
				sampSendDialogResponse(990, 1, 0, "")
			end
		end)
		return false
	end
	if id == 990 and customDialogEnabled then
		repWin.dialogId = id
		repWin.rawText  = text
		parseRepDialog(text)
		imgui.StrCopy(repWin.answerBuf, "")
		repWin.show = true
		repWin.startTime = os.time()
		repWin.focusInput = 2
		resetIO()
		return false
	end
	return true
end
function sampev.onServerMessage(color, text)
	if state.adminsCheckerWaiting then
		if text:find("Администраторы в сети") or text:find("Admins online") or
			text:find("Администраторов нет") or text:find("No admins online") then
			if text:find("Администраторов нет") or text:find("No admins online") then
				state.adminsList = {}
				state.adminsCheckerWaiting = false
				state.requestAttempts = 0
			end
			return false
		end
	end
	local cleanText = decode1251(text:gsub("{%x%x%x%x%x%x}", ""))
	local reportCount = cleanText:match("^Всего жалоб: (%d+)$")
	if reportCount then
		reportCount = tonumber(reportCount)
		if toggles.notifRepEnabled and not isGameFocused() and os.clock() > state.autoReport.silenceUntil then
			if not sounding.notifRep then
				sounding.notifRep = true
				lua_thread.create(function()
					if toggles.voicedNotif and doesFileExist(audioFiles.report) then
						playAudio(audioFiles.report, "checker_report")
					else
						local endTime = os.clock() + 2
						while os.clock() < endTime do
							addOneOffSound(0, 0, 0, 1137)
							wait(150)
						end
					end
					sounding.notifRep = false
				end)
			end
		end
		if toggles.autoRepEnabled and not isGameFocused() and not state.autoReport.pending and reportCount >= 1 and os.clock() > state.autoReport.silenceUntil then
			state.autoReport.pending = true
			local slotIndex = reportCount - 1
			if slotIndex > 9 then slotIndex = 9 end
			state.autoReport.slotIndex = slotIndex
			lua_thread.create(function()
				if not sampIsDialogActive() and not sampIsChatInputActive() then
					state.autoReport.waitingFor988 = true
					sampSendChat("/ar")
					local timeout988 = os.clock() + 1.5
					while state.autoReport.waitingFor988 and os.clock() < timeout988 do
						wait(100)
					end
					if state.autoReport.waitingFor988 then
						state.autoReport.waitingFor988 = false
						sampAddChatMessage(u8:decode(string.format("{%06X}[Checker] {%06X}Репорт | {FF0000}не удалось {%06X}взять", colors.checker, colors.checker, colors.checker)), -1)
						if doesFileExist(audioFiles.failure) then
							playAudio(audioFiles.failure, "checker_failure")
						end
					else
						local timeout989 = os.clock() + 1.5
						while state.autoReport.waitingFor989 and os.clock() < timeout989 do
							wait(100)
						end
						if state.autoReport.waitingFor989 then
							state.autoReport.waitingFor989 = false
							sampAddChatMessage(u8:decode(string.format("{%06X}[Checker] {%06X}Репорт | {FF0000}не удалось {%06X}взять", colors.checker, colors.checker, colors.checker)), -1)
							if doesFileExist(audioFiles.failure) then
								playAudio(audioFiles.failure, "checker_failure")
							end
						else
							state.autoReport.reportTaken = false
							local timeout990 = os.clock() + (toggles.autoAnswerReps and 4 or 1.5)
							while not state.autoReport.reportTaken and os.clock() < timeout990 do
								wait(100)
							end
							if not state.autoReport.reportTaken then
								state.autoReport.waitingFor990 = false
								sampAddChatMessage(u8:decode(string.format("{%06X}[Checker] {%06X}Репорт | {FF0000}не удалось {%06X}взять", colors.checker, colors.checker, colors.checker)), -1)
								if doesFileExist(audioFiles.failure) then
									playAudio(audioFiles.failure, "checker_failure")
								end
							else
								state.autoReport.pending = false
								state.autoReport.silenceUntil = os.clock() + 7
								sounding.notifRep = true
								winmm.mciSendStringA("stop checker_report", nil, 0, nil)
								winmm.mciSendStringA("close checker_report", nil, 0, nil)
								sampAddChatMessage(u8:decode(string.format("{%06X}[Checker] {%06X}Репорт | {00FF00}успешно {%06X}взят", colors.checker, colors.checker, colors.checker)), -1)
								if doesFileExist(audioFiles.success) then
									playAudio(audioFiles.success, "checker_success")
									wait(1000)
								else
									addOneOffSound(0, 0, 0, 1083)
									wait(300)
									addOneOffSound(0, 0, 0, 1083)
									wait(1000)
								end
								sounding.notifRep = false
							end
						end
					end
				end
				state.autoReport.pending = false
			end)
		end
	end
	local isBusy = cleanText:find("Данную жалобу кто%-то просматривает") or cleanText:find("Данную жалобу")
	if isBusy and state.autoReport.waitingFor990 then
		state.autoReport.waitingFor990 = false
		state.autoReport.pending = false
		sampSendDialogResponse(989, 0, -1, "")
		sampAddChatMessage(u8:decode(string.format("{%06X}[Checker] {%06X}Репорт | {FF0000}не удалось {%06X}взять", colors.checker, colors.checker, colors.checker)), -1)
		if doesFileExist(audioFiles.failure) then
			playAudio(audioFiles.failure, "checker_failure")
		end
	end
	if toggles.autoquitifRS then
		local chatNick, chatMsg = cleanText:match("^(.-)%[%d+%] говорит: (.+)$")
		if not chatNick then
			chatNick, chatMsg = cleanText:match("^%[A%] %(.-%)[%s]*(.-)%[%d+%]:[%s]*(.+)$")
		end
		if chatNick and chatMsg and isPlayerInCheckerList(chatNick) then
			local decodedMsg = u8:decode(chatMsg)
			if matchesAutoquitKeyword(decodedMsg) then
				if isUnfocusedLong() or isAfk() then
					doAutoquit("игрок из списка ищет в чате")
				end
			end
		end
	end
	if toggles.notifyifsnorcEnabled then
		local chatNick, chatMsg = cleanText:match("^(.-)%[%d+%] говорит: (.+)$")
		if not chatNick then
			chatNick, chatMsg = cleanText:match("^%[A%] %(.-%)[%s]*(.-)%[%d+%]:[%s]*(.+)$")
		end
		local _, myId = sampGetPlayerIdByCharHandle(PLAYER_PED)
		local myNick = sampGetPlayerNickname(myId) or ""
		myNick = removePrefix(myNick)
		if chatNick and chatMsg and removePrefix(chatNick) ~= myNick and matchesNotifyifsnorcKeyword(u8:decode(chatMsg)) then
			if not isGameFocused() then
				lua_thread.create(function()
					local stopTime = os.clock() + 1.5
					while os.clock() < stopTime do
						addOneOffSound(0, 0, 0, 1058)
						wait(50)
					end
				end)
			end
		end
	end
end
function sampev.onPlayerJoin(playerId, color, isNpc, nickname)
	state.playerNicknames[playerId] = nickname
	local cleanNick = removePrefix(nickname)
	for _, player in ipairs(state.playersList) do
		if player.nick == cleanNick then
			local platform = getPlayerPlatform(nickname)
			state.playersOnline[player.nick] = {id = playerId, online = true, fullNick = nickname, platform = platform}
			local platformText = platform and string.format("[%s]", platform) or ""
			sampAddChatMessage(
				u8:decode(string.format('{%06X}[Checker] {FFFFFF}Игрок %s[%d]%s {00FF00}зашел в игру', colors.checker, cleanNick, playerId, platformText)),
				-1
			)
			if toggles.checkerNotifEnabled and not isGameFocused() and not sounding.checkerNotif then
				sounding.checkerNotif = true
				lua_thread.create(function()
					if toggles.voicedNotif and doesFileExist(audioFiles.joined) then
						playAudio(audioFiles.joined, "checker_joined")
					else
						local endTime = os.clock() + 1
						while os.clock() < endTime do
							addOneOffSound(0, 0, 0, 1056)
							wait(100)
						end
					end
					sounding.checkerNotif = false
				end)
			end
			break
		end
	end
end
function sampev.onPlayerQuit(playerId, reason)
	local nickname = state.playerNicknames[playerId]
	if nickname then
		local cleanNick = removePrefix(nickname)
		for _, player in ipairs(state.playersList) do
			if player.nick == cleanNick then
				local platform = getPlayerPlatform(nickname)
				state.playersOnline[player.nick] = nil
				local reasonText = ""
				if reason == 0 then reasonText = "вышел (тайм-аут/краш)"
				elseif reason == 1 then reasonText = "вышел (/quit)"
				elseif reason == 2 then reasonText = "кикнут/забанен" end
				local platformText = platform and string.format("[%s]", platform) or ""
				sampAddChatMessage(
					u8:decode(string.format('{%06X}[Checker] {FFFFFF}Игрок %s[%d]%s {FF0000}%s', colors.checker, cleanNick, playerId, platformText, reasonText)),
					-1
				)
				break
			end
		end
		state.playerNicknames[playerId] = nil
	end
end
function addFarChatMessage(playerId, text, color, distance)
	if not toggles.farChatEnabled then return end
	if color == -65281 then return end
	local result, charHandle = sampGetCharHandleBySampPlayerId(playerId)
	if not result then return end
	local px, py, pz = getCharCoordinates(PLAYER_PED)
	local tx, ty, tz = getCharCoordinates(charHandle)
	local actualDistance = getDistanceBetweenCoords3d(px, py, pz, tx, ty, tz)
	if actualDistance <= distance then return end
	local nickname = sampGetPlayerNickname(playerId)
	if not nickname then return end
	local cleanNick = removePrefix(nickname)
	local platform = getPlayerPlatform(nickname)
	local platformText = platform and string.format("[%s]", platform) or ""
	local messageType = "normal"
	local messageColor = colors.farChat.normal
	local formattedText = text
	if color == -859006465 then
		messageType = "b"
		messageColor = colors.farChat.b
		local bText = text:match("%(%( (.+) %)%)")
		if bText then formattedText = bText end
	elseif color == -577699926 then
		messageType = "me"
		messageColor = colors.farChat.me
	elseif color == -4881153 then
		messageType = "shout"
		messageColor = colors.farChat.shout
	elseif distance < 2 then
		messageType = "whisper"
		messageColor = colors.farChat.whisper
	end
	local message = {
		nick = cleanNick,
		platform = platformText,
		id = playerId,
		text = formattedText,
		type = messageType,
		color = messageColor,
		distance = distance,
		time = os.clock()
	}
	table.insert(state.farChatMessages, message)
	while #state.farChatMessages > config.maxFarChatMessages do
		table.remove(state.farChatMessages, 1)
	end
end
function drawFarChat()
	if not toggles.farChatEnabled then return end
	local startY = positions.farChat.y
	local lineHeight = config.textSize + 12
	renderFontDrawText(state.fonts.header, "Far Chat:", positions.farChat.x, startY - 10, colors.header)
	startY = startY + lineHeight
	if #state.farChatMessages == 0 then return end
	for i, msg in ipairs(state.farChatMessages) do
		local fullText = ""
		if msg.type == "b" then
			fullText = string.format("(( %s[%d]%s: ", msg.nick, msg.id, msg.platform) .. msg.text .. " ))"
		elseif msg.type == "me" then
			fullText = string.format("%s[%d]%s ", msg.nick, msg.id, msg.platform) .. msg.text
		elseif msg.type == "shout" then
			fullText = string.format("%s[%d]%s ", msg.nick, msg.id, msg.platform) .. u8:decode("кричит: ") .. msg.text
		elseif msg.type == "whisper" then
			fullText = string.format("%s[%d]%s ", msg.nick, msg.id, msg.platform) .. u8:decode("шепчет: ") .. msg.text
		else
			fullText = string.format("%s[%d]%s: ", msg.nick, msg.id, msg.platform) .. msg.text
		end
		renderFontDrawText(state.fonts.checker, fullText, positions.farChat.x, startY, msg.color)
		startY = startY + lineHeight
	end
end
function drawAdminsList()
	local _, myId = sampGetPlayerIdByCharHandle(PLAYER_PED)
	local myNick = sampGetPlayerNickname(myId) or ""
	myNick = removePrefix(myNick)
	local customTags = {
		Jay_Sweet = "СИКСЕВЕН",
		Hayato_Mellson = "СИКСЕВЕН",
	}
	local startY = positions.admin.y
	local lineHeight = config.textSize + 12
	renderFontDrawText(state.fonts.header, string.format("Administrators online: %d", #state.adminsList), positions.admin.x, startY - 3, colors.header)
	startY = startY + lineHeight
	for i, admin in ipairs(state.adminsList) do
		local posText = string.format("(%s) ", admin.position)
		renderFontDrawText(state.fonts.checker, posText, positions.admin.x, startY, colors.position)
		local infoText = string.format("%s[%d]", admin.name, admin.id)
		local posWidth = renderGetFontDrawTextLength(state.fonts.checker, posText)
		renderFontDrawText(state.fonts.checker, infoText, positions.admin.x + posWidth, startY, colors.white)
		local currentOffset = posWidth + renderGetFontDrawTextLength(state.fonts.checker, infoText)
		if admin.platform then
			local platformText = string.format("[%s]", admin.platform)
			local platformColor = admin.platform == "PC" and colors.pc or colors.mobile
			renderFontDrawText(state.fonts.checker, platformText, positions.admin.x + currentOffset, startY, platformColor)
			currentOffset = currentOffset + renderGetFontDrawTextLength(state.fonts.checker, platformText)
		end
		local cleanAdminName = removePrefix(admin.name)
		if customTags[cleanAdminName] and cleanAdminName ~= myNick then
			local sxText = " (" .. u8:decode(customTags[cleanAdminName]) .. ")"
			renderFontDrawText(state.fonts.checker, sxText, positions.admin.x + currentOffset, startY, colors.green)
			currentOffset = currentOffset + renderGetFontDrawTextLength(state.fonts.checker, sxText)
		end
		local warnsText = string.format(" %s", admin.warns)
		renderFontDrawText(state.fonts.checker, warnsText, positions.admin.x + currentOffset, startY, colors.white)
		currentOffset = currentOffset + renderGetFontDrawTextLength(state.fonts.checker, warnsText)
		if admin.afk then
			renderFontDrawText(state.fonts.checker, string.format(" | AFK: %d", admin.afk), positions.admin.x + currentOffset, startY, colors.afk)
		elseif admin.spec then
			renderFontDrawText(state.fonts.checker, string.format(" | SPEC: %d", admin.spec), positions.admin.x + currentOffset, startY, colors.afk)
		end
		startY = startY + lineHeight
	end
end
function drawPlayersList()
	local startY = positions.players.y
	local lineHeight = config.textSize + 12
	renderFontDrawText(state.fonts.header, "Players Checker:", positions.players.x, startY - 3, colors.header)
	startY = startY + lineHeight
	local onlineCount = 0
	for _ in pairs(state.playersOnline) do onlineCount = onlineCount + 1 end
	if onlineCount == 0 then return end
	for _, player in ipairs(state.playersList) do
		local playerInfo = state.playersOnline[player.nick]
		if playerInfo and playerInfo.online then
			local cleanNick = removePrefix(playerInfo.fullNick)
			local text = string.format("%s", cleanNick)
			renderFontDrawText(state.fonts.checker, text, positions.players.x, startY, colors.white)
			local textWidth = renderGetFontDrawTextLength(state.fonts.checker, text)
			local idText = string.format("[%d]", playerInfo.id)
			renderFontDrawText(state.fonts.checker, idText, positions.players.x + textWidth, startY, colors.white)
			textWidth = textWidth + renderGetFontDrawTextLength(state.fonts.checker, idText)
			if playerInfo.platform then
				local platformText = string.format("[%s]", playerInfo.platform)
				local platformColor = playerInfo.platform == "PC" and colors.pc or colors.mobile
				renderFontDrawText(state.fonts.checker, platformText, positions.players.x + textWidth, startY, platformColor)
			end
			startY = startY + lineHeight
		end
	end
end
function loadRepButtons(callback)
	local function parseAndApply(text)
		local ok, data = pcall(function() return decodeJson(text) end)
		if ok and data and type(data) == "table" and #data > 0 then
			repButtons = data
			return true
		end
		return false
	end
	local f = io.open(repButtonsPath, "r")
	if f then
		local text = f:read("*a")
		f:close()
		if text and text ~= "" and parseAndApply(text) then
			if callback then callback() end
			return
		end
	end
	sampAddChatMessage(u8:decode("[Checker] Загружаю repbuttons.json с GitHub..."), 0x4D9FFF)
	lua_thread.create(function()
		local dl_complete = false
		local dl_failed = false
		downloadUrlToFile(repButtonsUrl, repButtonsPath, function(id, status, p1, p2)
			if status == dlstatus.STATUSEX_ENDDOWNLOAD then dl_complete = true
			elseif status == dlstatus.STATUS_DOWNLOADFAILED then dl_failed = true end
		end)
		local timeout = 0
		while not dl_complete and not dl_failed and timeout < 200 do wait(100); timeout = timeout + 1 end
		if dl_failed or timeout >= 200 then
			sampAddChatMessage(u8:decode("[Checker] Ошибка загрузки repbuttons.json"), 0xFF6347)
			if callback then callback() end
			return
		end
		local f2 = io.open(repButtonsPath, "r")
		if f2 then
			local text = f2:read("*a")
			f2:close()
			if text and text ~= "" and parseAndApply(text) then
				sampAddChatMessage(u8:decode("[Checker] repbuttons.json загружен"), 0x00FF00)
			else
				sampAddChatMessage(u8:decode("[Checker] Ошибка парсинга repbuttons.json"), 0xFF6347)
			end
		end
		if callback then callback() end
	end)
end
local rcFactions = {
	["блс"] = {id = 2, type = "rn", name = "Больница ЛС"},
	["бсф"] = {id = 3, type = "rn", name = "Больница СФ"},
	["блв"] = {id = 4, type = "rn", name = "Больница ЛВ"},
	["сц"] = {id = 5, type = "rn", name = "Сервисный центр"},
	["аш"] = {id = 5, type = "rn", name = "Сервисный центр"},
	["грув"] = {id = 6, type = "fn", name = "Grove Street"},
	["баллас"] = {id = 7, type = "fn", name = "The Ballas"},
	["рифа"] = {id = 8, type = "fn", name = "The Rifa"},
	["ацтек"] = {id = 9, type = "fn", name = "Varios Los Aztecas"},
	["вагос"] = {id = 10, type = "fn", name = "Los Santos Vagos"},
	["сина"] = {id = 11, type = "fn", name = "Sinaloa Cartel"},
	["джуарез"] = {id = 12, type = "fn", name = "Juarez Cartel"},
	["тихуана"] = {id = 13, type = "fn", name = "Tijuana Cartel"},
	["лспд"] = {id = 14, type = "rn", name = "Los Santos PD"},
	["сфпд"] = {id = 15, type = "rn", name = "San Fierro PD"},
	["лвпд"] = {id = 16, type = "rn", name = "Las Venturas PD"},
	["фби"] = {id = 17, type = "rn", name = "FBI"},
	["фбр"] = {id = 17, type = "rn", name = "FBI"},
	["лсн"] = {id = 18, type = "rn", name = "LS News"},
	["лс невс"] = {id = 18, type = "rn", name = "LS News"},
	["сфн"] = {id = 19, type = "rn", name = "SF News"},
	["сф невс"] = {id = 19, type = "rn", name = "SF News"},
	["св"] = {id = 21, type = "rn", name = "Сухопутные войска"},
	["млс"] = {id = 22, type = "rn", name = "Мэрия ЛС"},
	["мэрия лс"] = {id = 22, type = "rn", name = "Мэрия ЛС"},
	["мсф"] = {id = 23, type = "rn", name = "Мэрия СФ"},
	["мэрия сф"] = {id = 23, type = "rn", name = "Мэрия СФ"},
	["млв"] = {id = 24, type = "rn", name = "Мэрия ЛВ"},
	["мэрия лв"] = {id = 24, type = "rn", name = "Мэрия ЛВ"},
	["байкер"] = {id = 25, type = "fn", name = "Байкеры"},
	["алька"] = {id = 26, type = "rn", name = "Алькатрас"},
	["алькатрас"] = {id = 26, type = "rn", name = "Алькатрас"},
}
function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(100) end
	local mlDir = thisScript().path:match("^(.+[\\/])") or ""
	local maOldPath = mlDir .. "MATools.luac"
	local maNewPath = mlDir .. "zzzzMATools.luac"
	if doesFileExist(maOldPath) then
		sampAddChatMessage(u8:decode("[zzzachecker] Найден файл MATools.luac в Moonloader"), 0xFFAA00)
		wait(50)
		sampAddChatMessage(u8:decode("[zzzachecker] Переименовываю MATools.luac в zzzzMATools.luac в связи избежания конфликтов."), 0xFFAA00)
		wait(50)
		sampAddChatMessage(u8:decode("[zzzachecker] (Потому что Денис не добавлял в MATools.lua функцию отключения кастомного окна."), 0xFFAA00)
		wait(50)
		local fin = io.open(maOldPath, "rb")
		local fout = io.open(maNewPath, "wb")
		if fin and fout then
			fout:write(fin:read("*a"))
			fin:close()
			fout:close()
			os.remove(maOldPath)
			sampAddChatMessage(u8:decode("[zzzachecker] Успешно переименовано. Перезагрузка всех скриптов через 3 сек..."), 0x00FF00)
			wait(1000)
			sampAddChatMessage(u8:decode("[zzzachecker] Перезагрузка через 2..."), 0xFFFF00)
			wait(1000)
			sampAddChatMessage(u8:decode("[zzzachecker] Перезагрузка через 1..."), 0xFF6600)
			wait(1000)
			reloadScripts()
			return
		else
			if fin then fin:close() end
			if fout then fout:close() end
			sampAddChatMessage(u8:decode("[zzzachecker] Ошибка переименования MATools.lua"), 0xFF0000)
		end
	end
	if not doesDirectoryExist("moonloader/config/zzzachecker") then
		createDirectory("moonloader/config/zzzachecker")
	end
	state.fonts.checker = renderCreateFont("Arial Bold", 8, 9)
	state.fonts.header = renderCreateFont("Arial Bold", 9, 9)
	loadConfig()
	loadPlayersList()
	loadRepButtons()
	downloadAudioFiles(function()
		sampAddChatMessage(u8:decode("[Checker] Аудио файлы готовы"), 0x00FF00)
	end)
	pcall(function()
		os.remove(checkerFolder .. "checker.tmp")
	end)
	while sampGetServerSettingsPtr() == nil do wait(100) end
	wait(100)
	sampAddChatMessage(u8:decode("[Admin & Players Checker] Скрипт загружен v67.68"), 0x00FF00)
	sampAddChatMessage(u8:decode("  - Используйте /phelp для справки"), 0x00FF00)
	if not sampIsLocalPlayerSpawned() then
		sampAddChatMessage(u8:decode("[Admin & Players Checker] Ожидаю спавна персонажа..."), 0xFFFF00)
	end
	checkForUpdates(false, function()
		if not update_available then return end
		lua_thread.create(function()
			while not sampIsLocalPlayerSpawned() do wait(500) end
			sampAddChatMessage(u8:decode("[Checker] Автообновление через 3 секунды..."), 0x4D9FFF)
			wait(1000)
			sampAddChatMessage(u8:decode("[Checker] Автообновление через 2 секунды..."), 0x4D9FFF)
			wait(1000)
			sampAddChatMessage(u8:decode("[Checker] Автообновление через 1 секунду..."), 0x4D9FFF)
			wait(1000)
			installUpdate()
		end)
	end)
	sampRegisterChatCommand("wh", function()
		toggles.wallhackEnabled = not toggles.wallhackEnabled
		saveConfig()
		sampAddChatMessage(u8:decode("[WallHack] " .. (toggles.wallhackEnabled and "включен" or "выключен")), 0x00FF00)
	end)
	sampRegisterChatCommand("ch_checkupdate", function()
		checkForUpdates(true)
		lua_thread.create(function()
			wait(500)
			if update_available and new_version then
				sampAddChatMessage(u8:decode(string.format("[Checker] Доступно обновление до %s! Автообновление через 3 секунды...", new_version)), 0x4D9FFF)
				wait(1000)
				sampAddChatMessage(u8:decode("[Checker] Автообновление через 2 секунды..."), 0x4D9FFF)
				wait(1000)
				sampAddChatMessage(u8:decode("[Checker] Автообновление через 1 секунду..."), 0x4D9FFF)
				wait(1000)
				installUpdate()
			end
		end)
	end)
	sampRegisterChatCommand("debugwindow", function()
		repWin.authorNick  = "Test_Author"
		repWin.authorId    = 1
		repWin.suspectNick = "Test_Suspect"
		repWin.suspectId   = 2
		repWin.reportText  = "Тестовый репорт для отладки окна"
		repWin.dialogId    = 990
		imgui.StrCopy(repWin.answerBuf, "")
		repWin.show = true
		repWin.focusInput = 2
	end)
	while true do
		wait(0)
		local gs = sampGetServerSettingsPtr()
		if toggles.wallhackEnabled then
			memory.setfloat(gs + 39, 1000)
			memory.setint8(gs + 47, 0)
			memory.setint8(gs + 56, 1)
		else
			memory.setfloat(gs + 39, 50)
			memory.setint8(gs + 47, 1)
			memory.setint8(gs + 56, 1)
		end
		if isScreenshotKeyPressed() and toggles.hideOnScreenshot then
			state.isHiddenForScreenshot = true
			timers.screenshotHide = os.clock()
		end
		if state.isHiddenForScreenshot and os.clock() - timers.screenshotHide > config.screenshotHideDuration then
			state.isHiddenForScreenshot = false
		end
		if state.autoReport.silenceUntil > 0 and isGameFocused() then
			state.autoReport.silenceUntil = 0
		end
		if isGameFocused() then
			state.unfocusedSince = nil
		elseif state.unfocusedSince == nil then
			state.unfocusedSince = os.clock()
		end
		if moving.adminChecker then
			showCursor(true, false)
			local cursorX, cursorY = getCursorPos()
			positions.admin.x, positions.admin.y = cursorX, cursorY
			if wasKeyPressed(0x01) then
				moving.adminChecker = false
				showCursor(false, false)
				saveConfig()
				sampAddChatMessage(u8:decode("[Admin Checker] Позиция закреплена и сохранена"), colors.checker)
			end
		end
		if moving.playersChecker then
			showCursor(true, false)
			local cursorX, cursorY = getCursorPos()
			positions.players.x, positions.players.y = cursorX, cursorY
			if wasKeyPressed(0x01) then
				moving.playersChecker = false
				showCursor(false, false)
				saveConfig()
				sampAddChatMessage(u8:decode("[Players Checker] Позиция закреплена и сохранена"), colors.checker)
			end
		end
		if moving.farChat then
			showCursor(true, false)
			local cursorX, cursorY = getCursorPos()
			positions.farChat.x, positions.farChat.y = cursorX, cursorY
			if wasKeyPressed(0x01) then
				moving.farChat = false
				showCursor(false, false)
				saveConfig()
				sampAddChatMessage(u8:decode("[Far Chat] Позиция закреплена и сохранена"), colors.checker)
			end
		end
		if not state.playerSpawned and sampIsLocalPlayerSpawned() then
			state.playerSpawned = true
			sampAddChatMessage(u8:decode("[Admin & Players Checker] Персонаж заспавнен, запускаю чекеры..."), 0x00FF00)
			wait(config.spawnWaitTime * 1000)
			checkPlayersOnline()
			requestAdminsList()
			state.adminCheckerStarted = true
			timers.lastUpdate = os.clock()
		end
		if state.adminsCheckerWaiting and os.clock() - timers.adminsRequest > config.adminsTimeout then
			state.adminsCheckerWaiting = false
			state.requestAttempts = state.requestAttempts + 1
			if state.requestAttempts >= config.maxRequestAttempts then
				state.requestAttempts = 0
				sampAddChatMessage(u8:decode("[Admin Checker] Таймаут запроса, пропуск обновления"), 0xFFFF00)
			end
		end
		if state.playerSpawned and state.adminCheckerStarted and os.clock() - timers.lastUpdate > config.updateInterval then
			if canSendCommand() then
				requestAdminsList()
				timers.lastUpdate = os.clock()
			end
		end
		if state.adminsCommandScheduled and (os.clock() - timers.adminsCommandSchedule) * 1000 >= config.commandDelay and state.checkerEnabled then
			if canSendCommand() then
				state.adminsCheckerWaiting = true
				timers.adminsRequest = os.clock()
				state.scriptAdminsRequest = true
				sampSendChat("/admins")
				state.adminsCommandScheduled = false
			else
				state.adminsCommandScheduled = false
			end
		end
		if state.playerSpawned and os.clock() - timers.lastPlayersUpdate > 1 then
			checkPlayersOnline()
			timers.lastPlayersUpdate = os.clock()
		end
		if state.playerSpawned and not state.isHiddenForScreenshot and state.checkerEnabled then
			if state.adminCheckerStarted and #state.adminsList > 0 then
				drawAdminsList()
			end
			if #state.playersList > 0 then
				drawPlayersList()
			end
		end
		if state.playerSpawned then
			drawFarChat()
		end
		if toggles.notifyifsnorcEnabled and state.playerSpawned then
			local px, py, pz = getCharCoordinates(PLAYER_PED)
			for i = 0, 999 do
				if sampIsPlayerConnected(i) then
					local nick = sampGetPlayerNickname(i)
					local cleanNick = removePrefix(nick)
					if not notifyifsnorc_excluded[cleanNick] then
						local result, charHandle = sampGetCharHandleBySampPlayerId(i)
						if result then
							local tx, ty, tz = getCharCoordinates(charHandle)
							local dist = getDistanceBetweenCoords3d(px, py, pz, tx, ty, tz)
							if dist <= 10 then
								if not state.notifyifsnorc_nearby[i] then
									state.notifyifsnorc_nearby[i] = true
									if not isGameFocused() then
										lua_thread.create(function()
											local stopTime = os.clock() + 1.5
											while os.clock() < stopTime do
												addOneOffSound(0, 0, 0, 1058)
												wait(50)
											end
										end)
									end
								end
							else
								state.notifyifsnorc_nearby[i] = nil
							end
						end
					end
				end
			end
		end
		if state.playerSpawned and toggles.autoquitifRS then
			local px, py, pz = getCharCoordinates(PLAYER_PED)
			local curPos = {x = px, y = py, z = pz}
			local cursorMoved = false
			do
				local pci = ffi.new("CURSORINFO")
				pci.cbSize = ffi.sizeof("CURSORINFO")
				ffi.C.GetCursorInfo(pci)
				local cx, cy = pci.ptScreenPos.x, pci.ptScreenPos.y
				if state.afk_lastCursor == nil then
					state.afk_lastCursor = {x = cx, y = cy}
				else
					if math.abs(cx - state.afk_lastCursor.x) + math.abs(cy - state.afk_lastCursor.y) > 5 then
						cursorMoved = true
						state.afk_lastCursor = {x = cx, y = cy}
					end
				end
			end
			local charMoved = false
			if state.afk_lastPos == nil then
				state.afk_lastPos = curPos
				state.afk_idleStart = os.clock()
				state.afk_timerStarted = false
				state.afk_lastMoveTime = 0
			else
				charMoved = math.abs(curPos.x - state.afk_lastPos.x) + math.abs(curPos.y - state.afk_lastPos.y) > 0.5
				if charMoved then
					state.afk_lastPos = curPos
					state.afk_idleStart = os.clock()
					if state.afk_timerStarted then
					end
					state.afk_timerStarted = false
					state.afk_lastMoveTime = 0
					state.autoquit_done = false
				end
			end
			if cursorMoved and not charMoved then
				state.afk_idleStart = os.clock()
				if state.afk_timerStarted then
				end
				state.afk_timerStarted = false
				state.afk_lastMoveTime = 0
				state.autoquit_done = false
			end
			if not charMoved and not cursorMoved and state.afk_idleStart ~= nil then
				local idleTime = os.clock() - state.afk_idleStart
				if not state.afk_timerStarted and idleTime >= 15 then
					state.afk_timerStarted = true
					state.afk_lastMoveTime = os.clock()
				end
			end
			if not state.autoquit_done then
				for i = 0, 999 do
					if sampIsPlayerConnected(i) then
						local nick = sampGetPlayerNickname(i)
						local cleanNick = removePrefix(nick)
						if isPlayerInCheckerList(cleanNick) then
							local result, charHandle = sampGetCharHandleBySampPlayerId(i)
							if result then
								local tx, ty, tz = getCharCoordinates(charHandle)
								local dist = getDistanceBetweenCoords3d(px, py, pz, tx, ty, tz)
								if dist <= 10 then
									if not state.autoquit_nearbyShown[i] then
										state.autoquit_nearbyShown[i] = true
									end
									if isUnfocusedLong() then
										doAutoquit("игра свернута 30+ сек, игрок из списка рядом")
									elseif isAfk() then
										doAutoquit("AFK 2+ мин, игрок из списка рядом")
									end
								else
									state.autoquit_nearbyShown[i] = nil
								end
							else
								if not state.autoquit_noHandle[i] then
									state.autoquit_noHandle[i] = true
								end
							end
						end
					end
				end
			end
		end
		if state.playerSpawned and not sampIsLocalPlayerSpawned() then
			state.playerSpawned = false
			state.adminCheckerStarted = false
			state.adminsList = {}
			state.adminsCheckerWaiting = false
			state.requestAttempts = 0
			sampAddChatMessage(u8:decode("[Admin & Players Checker] Персонаж деспавнен, чекеры приостановлены"), 0xFFFF00)
		end
	end
end
function loadPlayersList()
	local file = io.open(config.playersFilePath, "r")
	if not file then
		local example = encodeJson({{nick = "Nick_Name"}, {nick = "Another_Nick"}})
		file = io.open(config.playersFilePath, "w")
		if file then
			file:write(example)
			file:close()
			sampAddChatMessage(u8:decode("[Checker] Создан файл players_checker.json с примером"), colors.checker)
		end
		return
	end
	local content = file:read("*a")
	file:close()
	if not content or content == "" then
		sampAddChatMessage(u8:decode("[Checker] Файл пустой"), 0xFF0000)
		return
	end
	local result = decodeJson(content)
	if result then
		state.playersList = result
	else
		sampAddChatMessage(u8:decode("[Checker] Ошибка чтения JSON файла"), 0xFF0000)
	end
end
function checkPlayersOnline()
	state.playersOnline = {}
	local onlineCount = 0
	for _, player in ipairs(state.playersList) do
		local id, fullNick = getPlayerIdByNickname(player.nick)
		if id then
			local platform = getPlayerPlatform(fullNick)
			state.playersOnline[player.nick] = {id = id, online = true, fullNick = fullNick, platform = platform}
			onlineCount = onlineCount + 1
		end
	end
	for i = 0, 999 do
		if sampIsPlayerConnected(i) then
			state.playerNicknames[i] = sampGetPlayerNickname(i)
		end
	end
	return onlineCount
end
function requestAdminsList()
	if state.adminsCheckerWaiting then return end
	if canSendCommand() then
		state.adminsCommandScheduled = true
		timers.adminsCommandSchedule = os.clock()
		state.requestAttempts = 0
		state.scriptAdminsRequest = true
	end
end
function parseAdmins(text)
	local admins = {}
	local lines = {}
	for line in text:gmatch("[^\n]+") do table.insert(lines, line) end
	for _, line in ipairs(lines) do
		local patterns = {
			"{%x+}%((.-)%) {%x+}(.-)%[(%d+)%] (%d+/%d+)(.*)$",
			"%((.-)%) (.-)%[(%d+)%] (%d+/%d+)(.*)$",
			"{......}%((.-)%) {......}(.-)%[(%d+)%] (%d+/%d+)(.*)$",
			"{33CCFF}%((.-)%) {FFFFFF}(.-)%[(%d+)%] (%d+/%d+)(.*)$"
		}
		for _, pattern in ipairs(patterns) do
			local pos, name, id, warns, extra = line:match(pattern)
			if pos and name and id and warns then
				local admin = {position = pos, name = name, id = tonumber(id), warns = warns, afk = nil, spec = nil, platform = nil}
				if extra then
					local afkTime = extra:match("AFK: (%d+)")
					if afkTime then admin.afk = tonumber(afkTime) end
					local specId = extra:match("SPEC: (%d+)")
					if specId then admin.spec = tonumber(specId) end
				end
				local fullNick = sampGetPlayerNickname(admin.id)
				if fullNick then admin.platform = getPlayerPlatform(fullNick) end
				table.insert(admins, admin)
				break
			end
		end
	end
	if #admins == 0 then
		for _, line in ipairs(lines) do
			local cleanLine = line:gsub("{%x%x%x%x%x%x}", "")
			local pos, name, id, warns, extra = cleanLine:match("%((.-)%) (.-)%[(%d+)%] (%d+/%d+)(.*)$")
			if pos and name and id and warns then
				local admin = {position = pos, name = name, id = tonumber(id), warns = warns, afk = nil, spec = nil, platform = nil}
				if extra then
					local afkTime = extra:match("AFK: (%d+)")
					if afkTime then admin.afk = tonumber(afkTime) end
					local specId = extra:match("SPEC: (%d+)")
					if specId then admin.spec = tonumber(specId) end
				end
				local fullNick = sampGetPlayerNickname(admin.id)
				if fullNick then admin.platform = getPlayerPlatform(fullNick) end
				table.insert(admins, admin)
			end
		end
	end
	return admins
end
function sampev.onSendCommand(command)
	if command == "/checker" then
		state.checkerEnabled = not state.checkerEnabled
		toggles.farChatEnabled = not toggles.farChatEnabled
		sampAddChatMessage(u8:decode(string.format("[Checker] Чекер %s", state.checkerEnabled and "включен" or "выключен")), colors.checker)
		return false
	elseif command == "/achecker" then
		sampAddChatMessage(u8:decode(string.format("  Дальний чат: %s", toggles.farChatEnabled and "Включен" or "Выключен")), 0xFFFFFF)
		sampAddChatMessage(u8:decode(string.format("  Статус: %s", state.playerSpawned and "Активен" or "Ожидает спавна")), 0xFFFFFF)
		sampAddChatMessage(u8:decode(string.format("  Ожидание ответа: %s", state.adminsCheckerWaiting and "Да" or "Нет")), 0xFFFFFF)
		sampAddChatMessage(u8:decode(string.format("  Скрытие при скриншоте: %s", toggles.hideOnScreenshot and "Включено" or "Выключено")), 0xFFFFFF)
		sampAddChatMessage(u8:decode(string.format("  Администраторов в списке: %d", #state.adminsList)), 0xFFFFFF)
		sampAddChatMessage(u8:decode(string.format("  Координаты админов: X=%d Y=%d", positions.admin.x, positions.admin.y)), 0xFFFFFF)
		sampAddChatMessage(u8:decode(string.format("  Координаты игроков: X=%d Y=%d", positions.players.x, positions.players.y)), 0xFFFFFF)
		sampAddChatMessage(u8:decode(string.format("  Координаты дальнего чата: X=%d Y=%d", positions.farChat.x, positions.farChat.y)), 0xFFFFFF)
		sampAddChatMessage(u8:decode(string.format("  Сообщений в дальнем чате: %d", #state.farChatMessages)), 0xFFFFFF)
		sampAddChatMessage(u8:decode(string.format("  Игроков отслеживается: %d", #state.playersList)), 0xFFFFFF)
		local onlineCount, pcCount, mobileCount = 0, 0, 0
		for _, info in pairs(state.playersOnline) do
			onlineCount = onlineCount + 1
			if info.platform == "PC" then pcCount = pcCount + 1
			elseif info.platform == "M" then mobileCount = mobileCount + 1 end
		end
		sampAddChatMessage(string.format(u8:decode("  Из них онлайн: %d (PC: %d, Mobile: %d)"), onlineCount, pcCount, mobileCount), 0xFFFFFF)
		return false
	elseif command == "/acheckerpos" or command:match("^/acheckerpos (.+)$") then
		local params = command:match("^/acheckerpos (.+)$")
		if params then
			local x, y = params:match("^(%d+) (%d+)$")
			local xOnly = params:match("^x(%d+)$")
			local yOnly = params:match("^y(%d+)$")
			if x and y then
				positions.admin.x, positions.admin.y = tonumber(x), tonumber(y)
				saveConfig()
				sampAddChatMessage(string.format(u8:decode("[Admin Checker] Позиция установлена: X=%d Y=%d"), positions.admin.x, positions.admin.y), colors.checker)
			elseif xOnly then
				positions.admin.x = tonumber(xOnly)
				saveConfig()
				sampAddChatMessage(string.format(u8:decode("[Admin Checker] X координата установлена: X=%d Y=%d"), positions.admin.x, positions.admin.y), colors.checker)
			elseif yOnly then
				positions.admin.y = tonumber(yOnly)
				saveConfig()
				sampAddChatMessage(string.format(u8:decode("[Admin Checker] Y координата установлена: X=%d Y=%d"), positions.admin.x, positions.admin.y), colors.checker)
			else
				sampAddChatMessage(u8:decode("[Admin Checker] Неверный формат. Используйте: /acheckerpos 1900 800, /acheckerpos x1900 или /acheckerpos y800"), 0xFF0000)
			end
		else
			moving.adminChecker = not moving.adminChecker
			if moving.adminChecker then
				sampAddChatMessage(u8:decode("[Admin Checker] Режим перемещения включен. Нажмите ЛКМ для закрепления позиции"), colors.checker)
			else
				showCursor(false, false)
				sampAddChatMessage(u8:decode("[Admin Checker] Режим перемещения выключен"), colors.checker)
			end
		end
		return false
	elseif command == "/pcheckerpos" or command:match("^/pcheckerpos (.+)$") then
		local params = command:match("^/pcheckerpos (.+)$")
		if params then
			local x, y = params:match("^(%d+) (%d+)$")
			local xOnly = params:match("^x(%d+)$")
			local yOnly = params:match("^y(%d+)$")
			if x and y then
				positions.players.x, positions.players.y = tonumber(x), tonumber(y)
				saveConfig()
				sampAddChatMessage(string.format(u8:decode("[Players Checker] Позиция установлена: X=%d Y=%d"), positions.players.x, positions.players.y), colors.checker)
			elseif xOnly then
				positions.players.x = tonumber(xOnly)
				saveConfig()
				sampAddChatMessage(string.format(u8:decode("[Players Checker] X координата установлена: X=%d Y=%d"), positions.players.x, positions.players.y), colors.checker)
			elseif yOnly then
				positions.players.y = tonumber(yOnly)
				saveConfig()
				sampAddChatMessage(string.format(u8:decode("[Players Checker] Y координата установлена: X=%d Y=%d"), positions.players.x, positions.players.y), colors.checker)
			else
				sampAddChatMessage(u8:decode("[Players Checker] Неверный формат. Используйте: /pcheckerpos 1900 800, /pcheckerpos x1900 или /pcheckerpos y800"), 0xFF0000)
			end
		else
			moving.playersChecker = not moving.playersChecker
			if moving.playersChecker then
				sampAddChatMessage(u8:decode("[Players Checker] Режим перемещения включен. Нажмите ЛКМ для закрепления позиции"), colors.checker)
			else
				showCursor(false, false)
				sampAddChatMessage(u8:decode("[Players Checker] Режим перемещения выключен"), colors.checker)
			end
		end
		return false
	elseif command == "/farchatpos" or command:match("^/farchatpos (.+)$") then
		local params = command:match("^/farchatpos (.+)$")
		if params then
			local x, y = params:match("^(%d+) (%d+)$")
			local xOnly = params:match("^x(%d+)$")
			local yOnly = params:match("^y(%d+)$")
			if x and y then
				positions.farChat.x, positions.farChat.y = tonumber(x), tonumber(y)
				saveConfig()
				sampAddChatMessage(string.format(u8:decode("[Far Chat] Позиция установлена: X=%d Y=%d"), positions.farChat.x, positions.farChat.y), colors.checker)
			elseif xOnly then
				positions.farChat.x = tonumber(xOnly)
				saveConfig()
				sampAddChatMessage(string.format(u8:decode("[Far Chat] X координата установлена: X=%d Y=%d"), positions.farChat.x, positions.farChat.y), colors.checker)
			elseif yOnly then
				positions.farChat.y = tonumber(yOnly)
				saveConfig()
				sampAddChatMessage(string.format(u8:decode("[Far Chat] Y координата установлена: X=%d Y=%d"), positions.farChat.x, positions.farChat.y), colors.checker)
			else
				sampAddChatMessage(u8:decode("[Far Chat] Неверный формат. Используйте: /farchatpos 1900 800, /farchatpos x1900 или /farchatpos y800"), 0xFF0000)
			end
		else
			moving.farChat = not moving.farChat
			if moving.farChat then
				sampAddChatMessage(u8:decode("[Far Chat] Режим перемещения включен. Нажмите ЛКМ для закрепления позиции"), colors.checker)
			else
				showCursor(false, false)
				sampAddChatMessage(u8:decode("[Far Chat] Режим перемещения выключен"), colors.checker)
			end
		end
		return false
	elseif command == "/farchattoggle" then
		toggles.farChatEnabled = not toggles.farChatEnabled
		saveConfig()
		sampAddChatMessage(string.format(u8:decode("[Far Chat] Дальний чат %s"), toggles.farChatEnabled and "включен" or "выключен"), colors.checker)
		return false
	elseif command == "/farchatchclear" or command == "/farchatclear" then
		state.farChatMessages = {}
		sampAddChatMessage(u8:decode("[Far Chat] История сообщений очищена"), colors.checker)
		return false
	elseif command == "/defaultpos" then
		resetToDefaultPositions()
		sampAddChatMessage(u8:decode("[Checker] Позиции сброшены к дефолтным значениям"), colors.checker)
		sampAddChatMessage(string.format(u8:decode("  Admin Checker: X=%d Y=%d"), defaults.admin.x, defaults.admin.y), 0xFFFFFF)
		sampAddChatMessage(string.format(u8:decode("  Players Checker: X=%d Y=%d"), defaults.players.x, defaults.players.y), 0xFFFFFF)
		sampAddChatMessage(string.format(u8:decode("  Far Chat: X=%d Y=%d"), defaults.farChat.x, defaults.farChat.y), 0xFFFFFF)
		return false
	elseif command == "/preload" then
		loadPlayersList()
		checkPlayersOnline()
		sampAddChatMessage(u8:decode("[Checker] Список игроков перезагружен"), colors.checker)
		return false
	elseif command == "/pcheck" then
		sampAddChatMessage(u8:decode("[Checker] Отслеживаемые игроки:"), colors.checker)
		for i, player in ipairs(state.playersList) do
			local playerInfo = state.playersOnline[player.nick]
			if playerInfo then
				local platform = playerInfo.platform and string.format("[%s]", playerInfo.platform) or ""
				sampAddChatMessage(string.format("  %d. %s - {00FF00}ONLINE%s{FFFFFF}", i, player.nick, platform), -1)
			else
				sampAddChatMessage(string.format("  %d. %s - {FF0000}OFFLINE{FFFFFF}", i, player.nick), -1)
			end
		end
		return false
	elseif command:match("^/paddplayer (.+)") or command:match("^/padd (.+)") then
		local arg = command:match("^/paddplayer (.+)") or command:match("^/padd (.+)")
		if arg then
			local nick = getNickById(arg) or arg
			table.insert(state.playersList, {nick = nick})
			local file = io.open(config.playersFilePath, "w")
			if file then
				file:write(encodeJson(state.playersList))
				file:close()
				sampAddChatMessage(string.format(u8:decode("[Checker] Игрок %s добавлен в список отслеживания"), nick), colors.checker)
				checkPlayersOnline()
			else
				sampAddChatMessage(u8:decode("[Checker] Ошибка сохранения файла"), 0xFF0000)
			end
			return false
		end
	elseif command:match("^/premoveplayer (.+)") or command:match("^/premove (.+)") then
		local arg = command:match("^/premoveplayer (.+)") or command:match("^/premove (.+)")
		if arg then
			local nick = getNickById(arg) or arg
			for i, player in ipairs(state.playersList) do
				if player.nick == nick then
					table.remove(state.playersList, i)
					local file = io.open(config.playersFilePath, "w")
					if file then
						file:write(encodeJson(state.playersList))
						file:close()
						sampAddChatMessage(string.format(u8:decode("[Checker] Игрок %s удален из списка отслеживания"), nick), colors.checker)
						checkPlayersOnline()
					else
						sampAddChatMessage(u8:decode("[Checker] Ошибка сохранения файла"), 0xFF0000)
					end
					return false
				end
			end
			sampAddChatMessage(string.format(u8:decode("[Checker] Игрок %s не найден в списке"), nick), 0xFF0000)
			return false
		end
	elseif command == "/prefresh" then
		state.adminsCheckerWaiting = false
		state.requestAttempts = 0
		requestAdminsList()
		sampAddChatMessage(u8:decode("[Admin Checker] Принудительное обновление списка админов"), colors.checker)
		return false
	elseif command == "/ptogglescreenshot" then
		toggles.hideOnScreenshot = not toggles.hideOnScreenshot
		saveConfig()
		sampAddChatMessage(string.format(u8:decode("[Checker] Скрытие при скриншоте %s"), toggles.hideOnScreenshot and "включено" or "выключено"), colors.checker)
		return false
	elseif command == "/voicednotif" then
		if not toggles.checkerNotifEnabled then
			sampAddChatMessage(u8:decode("[Checker] Сначала включите /checkernotif"), colors.checker)
			return false
		end
		toggles.voicedNotif = not toggles.voicedNotif
		saveConfig()
		sampAddChatMessage(u8:decode(string.format("[Checker] Голосовые уведомления: %s", toggles.voicedNotif and "включены" or "выключены")), colors.checker)
		return false
	elseif command == "/autoquitifRS" then
		toggles.autoquitifRS = not toggles.autoquitifRS
		state.autoquit_done = false
		saveConfig()
		sampAddChatMessage(u8:decode(string.format("[AutoQuit] Авто-выход: %s", toggles.autoquitifRS and "включен" or "выключен")), colors.checker)
		return false
	elseif command == "/notifyifsnorc" then
		toggles.notifyifsnorcEnabled = not toggles.notifyifsnorcEnabled
		if not toggles.notifyifsnorcEnabled then
			state.notifyifsnorc_nearby = {}
		end
		saveConfig()
		sampAddChatMessage(u8:decode(string.format("[SnorNotif] Уведомления: %s", toggles.notifyifsnorcEnabled and "включены" or "выключены")), colors.checker)
		return false
	elseif command == "/checkernotif" then
		local enabled = not (toggles.notifRepEnabled and toggles.checkerNotifEnabled)
		toggles.notifRepEnabled = enabled
		toggles.checkerNotifEnabled = enabled
		toggles.autoRepEnabled = enabled
		saveConfig()
		sampAddChatMessage(u8:decode(string.format("[Checker] Уведомления: %s", enabled and "включены" or "выключены")), colors.checker)
		return false
	elseif command == "/autorep" then
		if not toggles.notifRepEnabled then
			sampAddChatMessage(u8:decode("[Checker] Сначала включите /checkernotif"), colors.checker)
			return false
		end
		toggles.autoRepEnabled = not toggles.autoRepEnabled
		saveConfig()
		sampAddChatMessage(u8:decode(string.format("[Checker] Авто-взятие репорта: %s", toggles.autoRepEnabled and "включено" or "выключено")), colors.checker)
		return false
	elseif command == "/autoanswerreps" then
		if not toggles.autoRepEnabled then
			sampAddChatMessage(u8:decode("[AutoRep] Сначала включите /autorep"), colors.checker)
			return false
		end
		toggles.autoAnswerReps = not toggles.autoAnswerReps
		saveConfig()
		sampAddChatMessage(u8:decode(string.format("[AutoRep] Авто-ответ на репорты: %s", toggles.autoAnswerReps and "включен" or "выключен")), colors.checker)
		return false
	elseif command:match("^/getcolor (.+)$") then
		local arg = command:match("^/getcolor (.+)$")
		local targetId = tonumber(arg)
		local _, myId = sampGetPlayerIdByCharHandle(PLAYER_PED)
		if targetId and (sampIsPlayerConnected(targetId) or targetId == myId) then
			local color = sampGetPlayerColor(targetId)
			local r = bit.band(bit.rshift(color, 16), 0xFF)
			local g = bit.band(bit.rshift(color, 8), 0xFF)
			local b = bit.band(color, 0xFF)
			local nick = sampGetPlayerNickname(targetId)
			sampAddChatMessage(u8:decode(string.format("[GetColor] %s[%d] - R:%d G:%d B:%d (HEX: %02X%02X%02X)", nick, targetId, r, g, b, r, g, b)), colors.checker)
		else
			sampAddChatMessage(u8:decode("[GetColor] Игрок не найден"), 0xFF0000)
		end
		return false
	elseif command == "/ch_customdialog" then
		customDialogEnabled = not customDialogEnabled
		sampAddChatMessage(u8:decode(string.format("[Checker] Кастомный диалог репорта: %s", customDialogEnabled and "включён" or "выключен")), colors.checker)
		return false
	elseif command == "/phelp" then
		sampAddChatMessage(u8:decode("[Admin & Players Checker v67.68] Команды:"), colors.checker)
		sampAddChatMessage(u8:decode("  /checker - включить/выключить чекер"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /achecker - статус скрипта"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /ch_checkupdate - проверить обновления"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /acheckerpos [X Y | xЗНАЧ | yЗНАЧ] - переместить админ-чекер"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /pcheckerpos [X Y | xЗНАЧ | yЗНАЧ] - переместить чекер игроков"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /farchatpos [X Y | xЗНАЧ | yЗНАЧ] - переместить дальний чат"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /farchattoggle - включить/выключить дальний чат"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /farchatclear (/farchatchclear) - очистить историю дальнего чата"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /defaultpos - сбросить все позиции на дефолтные"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /preload - перезагрузить список игроков"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /pcheck - показать всех отслеживаемых игроков"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /padd (/paddplayer) [ник/id] - добавить игрока в список"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /premove (/premoveplayer) [ник/id] - удалить игрока из списка"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /prefresh - принудительно обновить список админов"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /ptogglescreenshot - переключить скрытие при скриншоте"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /checkernotif - звук при репорте и заходе игрока из списка"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /autorep - авто-взятие репорта (требует /checkernotif)"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /autoanswerreps - авто-ответ на репорты (требует /autorep)"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /ch_customdialog - включить/выключить кастомное окно репорта"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /voicednotif - голосовые уведомления (требует /checkernotif)"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /notifyifsnorc - уведомления о приближении (10м) и ключевых словах в чате"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /autoquitifRS - авто-выход если игрок из списка рядом (свернуто/AFK) или ищет в чате"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  /phelp - эта справка"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("[Особенности дальнего чата:]"), 0x00FF00)
		sampAddChatMessage(u8:decode("  - Показывает только сообщения вне зоны видимости чата"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  - Отображает правильные цвета для /me, /b, крика и шепота"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  - Последние 10 сообщений"), 0xFFFFFF)
		sampAddChatMessage(u8:decode("  Чекеры автоматически скрываются при нажатии F8"), 0x00FF00)
		return false
	elseif command:match("^/testautorep (.+)$") then
		local inputRaw = command:match("^/testautorep (.+)$")
		local inputText = inputRaw:gsub("{%x%x%x%x%x%x}", "")
		inputText = inputText:gsub("{FFFFFF}", "")
		inputText = decode1251(inputText)
		local col = 0xFF9B59B6
		sampAddChatMessage(u8:decode("=== /testautorep ==="), col)
		sampAddChatMessage(u8:decode("Исходный текст: {FFFFFF}") .. inputText, col)
		local repType, p2, p3 = detectAutoRepType(inputText, true)
		if repType == nil then
			sampAddChatMessage(u8:decode("Тип: {FF6666}nil (не распознан)"), col)
		elseif repType == "bike" then
			sampAddChatMessage(u8:decode("Тип: {00FF00}bike"), col)
		elseif repType == "spawn" then
			sampAddChatMessage(u8:decode("Тип: {00FF00}spawn"), col)
		elseif repType == "spawn_bug" then
			sampAddChatMessage(u8:decode("Тип: {FFFF00}spawn_bug"), col)
		elseif repType == "rc" then
			sampAddChatMessage(u8:decode(string.format("Тип: {00FF00}rc | Фракция: %s | Ключ: %s", p2 and p2.name or "?", p3 or "?")), col)
		end
		sampAddChatMessage(u8:decode("==================="), col)
		return false
	elseif command:match("^/colorallowed (.+)$") then
		local arg = command:match("^/colorallowed (.+)$")
		local targetId = tonumber(arg)
		if not targetId then
			sampAddChatMessage(u8:decode("[ColorAllowed] Укажите числовой ID игрока"), 0xFF0000)
			return false
		end
		local _, myId = sampGetPlayerIdByCharHandle(PLAYER_PED)
		if not (sampIsPlayerConnected(targetId) or targetId == myId) then
			sampAddChatMessage(u8:decode("[ColorAllowed] Игрок не найден"), 0xFF0000)
			return false
		end
		local col = 0xFF9B59B6
		local color = sampGetPlayerColor(targetId)
		local nick = sampGetPlayerNickname(targetId)
		local r = bit.band(bit.rshift(color, 16), 0xFF)
		local g = bit.band(bit.rshift(color, 8), 0xFF)
		local b = bit.band(color, 0xFF)
		sampAddChatMessage(u8:decode(string.format("=== /colorallowed %d (%s) ===", targetId, nick)), col)
		sampAddChatMessage(u8:decode(string.format("Raw hex: {FFFFFF}%08X", color)), col)
		sampAddChatMessage(u8:decode(string.format("RGB: {FFFFFF}R=%d G=%d B=%d (#%02X%02X%02X)", r, g, b, r, g, b)), col)
		local allowed = isAuthorColorAllowed(targetId)
		local allowedStr = allowed and "{00FF00}ALLOWED (true)" or "{FF6666}NOT ALLOWED (false)"
		sampAddChatMessage(u8:decode("isAuthorColorAllowed: " .. allowedStr), col)
		if autoAnswerRepColorsFilled and #autoAnswerRepColors > 0 then
			sampAddChatMessage(u8:decode(string.format("Цветов в списке: {FFFFFF}%d", #autoAnswerRepColors)), col)
			for i, c in ipairs(autoAnswerRepColors) do
				local dr = math.abs(c.r - r)
				local dg = math.abs(c.g - g)
				local db = math.abs(c.b - b)
				local close = (dr <= 5 and dg <= 5 and db <= 5)
				local marker = close and " {00FF00}<== совпадение" or ""
				sampAddChatMessage(u8:decode(string.format("  [%d] R=%d G=%d B=%d | dR=%d dG=%d dB=%d%s", i, c.r, c.g, c.b, dr, dg, db, marker)), col)
			end
		else
			sampAddChatMessage(u8:decode("autoAnswerRepColors пуст — always true"), col)
		end
		sampAddChatMessage(u8:decode("==================="), col)
		return false
	end
end