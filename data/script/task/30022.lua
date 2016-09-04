--前线速递
RoleTaskInfo30022 =
{
	ring = 2,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	--颜色经验倍率
	color_rates = {1,	1.5,	2,		3,		6},
	--通行证经验倍率
	pass_rates = {1.2,	1.4,	1.6,	1.8,	1},
	--补给车
	guards = {
		{30,	61001,	61002,	61003,	61004,	61005},
		{40,	61006,	61007,	61008,	61009,	61010},
		{50,	61011,	61012,	61013,	61014,	61015},
		{60,	61016,	61017,	61018,	61019,	61020},
		{70,	61021,	61022,	61023,	61024,	61025},
		{80,	61026,	61027,	61028,	61029,	61030},
		{90,	61031,	61032,	61033,	61034,	61035},
		{100,	61036,	61037,	61038,	61039,	61040},
		{110,	61041,	61042,	61043,	61044,	61045},
		{120,	61046,	61047,	61048,	61049,	61050},
		{130,	61051,	61052,	61053,	61054,	61055},
		{140,	61056,	61057,	61058,	61059,	61060},
		{150,	61061,	61062,	61063,	61064,	61065},
	},
	--等级经验基本系数
	exp_mode = {
		{30,	1},
		{40,	1.2},
		{50,	1.4},
		{60,	1.6},
		{70,	2.1},
		{80,	2.6},
		{90,	2.9},
		{100,	3.2},
		{110,	3.4},
		{120,	3.6},
		{130,	3.8},
		{140,	4},
		{150,	4.2},
	},
	--押金
	foregift = {
		{21,    30,    1},
		{31,    40,    10},
		{41,    50,    50},
		{51,    60,    100},
		{61,    70,    200},
		{71,    80,    300},
		{81,    90,    400},
		{91,    100,   500},
		{101,   110,   600},
		{111,   120,   800},
		{121,   130,   1000},
		{131,   140,   1200},
		{141,   150,   1500},
	},
}

--////////////////////////////////////////////
--任务变量意义
--11 补给车是否被劫
--12 目标NPC ID
--13 目标NPC 地图ID
--14 押金
--15 通行证颜色
--17 凯丽处刷新颜色
--20 标记国运
--21 普鲁斯处刷新颜色
--22团员紫车处刷新颜色
--玩家变量
--200 通行证ID
--201 胶囊ID
--////////////////////////////////////////////

--任务简介
function RoleTaskInfo30022:GetTaskIntroText(uid)
	local msg =
		[[
title(前线速递)
body(
blankline()   在goto(60000,3)处接取光明骑士团的补给车，并将它押送到指定的目的地。
blankline()   每次接取前线速递任务需消耗45体力值，可获取1.5倍经验或丰厚道具奖励。
blankline()   每天可完成2次，hot(周日可额外完成1次)。周日完成任务所获得的数字，将在周六抽奖时使用。
blankline()   exp(大量)
)
]]
	return parseToDesc(msg)
end

--任务经验
function RoleTaskInfo30022:GetTaskBaseExp(uid)
	--75*短期化系数*(30+人物等级^1.5)*颜色加成*次数加成*通行证加成
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local expmode = 0
	for i = 1, table.getn(self.exp_mode) do
		if level <= self.exp_mode[i][1] then
			expmode = self.exp_mode[i][2]
			break
		end
	end
	local baseexp = math.floor(75*expmode * (30 + level^1.5))
	local curRound, curRing = GetTaskCurRoundAndRing(uid, 30022)
	local timerate = ((curRing-1)*0.2+1)
	local color = s_getTaskValue(uid,30022,TaskValue_Color)
	if color == nil then color = 0 end
	local pass_color = s_getTaskVar(uid,30022,15)
	local pass = 1
	if pass_color > 0 then
		pass = self.pass_rates[pass_color]
	end
	local exp = math.floor(baseexp * self.color_rates[color+1] * pass * timerate)
	--接任务经验显示正确
	if s_getTaskValue(uid,30022,TaskValue_Process) == TaskProcess_None then
		--local itemid = RoleTaskInfo30022:CheckPutPass(uid)
		local itemid = s_getVar(uid,30022,200)--s_getTaskVar(uid,30022,16)
		if itemid ~= VALUE_FAIL then
			local quality = s_getItemValue(uid,itemid,Item_Attribute_Quality)
			exp = exp * self.pass_rates[quality+1]
		end
		local capsuleid = s_getVar(uid,30022,201)
		if capsuleid ~= 0 then
			local color = RoleTaskInfo30022:GetColorByCapsule(uid,capsuleid)
			exp = exp * self.color_rates[color + 1]
		end
		exp = math.floor(exp)
	end
	return exp
end


function RoleTaskInfo30022:GetTaskExp(uid)
	local exp = self:GetTaskBaseExp(uid)
	local tiledtimes = 1
	if s_getVar(uid, 30022, TvarIndex_TiledMode) == 1 then
		if s_getVar(uid, 30022, TvarIndex_TiledTimes) == 1 then tiledtimes = 1.5 end
	end
	exp = math.floor(exp * tiledtimes)
	return exp
end

--掉落的货物对应的经验
function RoleTaskInfo30022:GetTaskExp_Drop(uid,color)
	--75*短期化系数*(30+人物等级^1.5)*颜色加成*次数加成*通行证加成
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local expmode = 0
	for i = 1, table.getn(self.exp_mode) do
		if level <= self.exp_mode[i][1] then
			expmode = self.exp_mode[i][2]
			break
		end
	end
	if color == nil then color = 0 end
	local baseexp = math.floor(75*expmode * (30 + level^1.5))
	local exp = math.floor(baseexp * self.color_rates[color+1])
	return exp
end


--获得交付目标NPC
function RoleTaskInfo30022:GetTargetNpc(uid)
	local npc = s_getTaskVar(uid,30022,12)
	local mapid = s_getTaskVar(uid,30022,13)
	if npc ~= 0 and mapid ~= 0 then
		return  npc,mapid
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local target = 0
	local map = 0
	if level <= 30 then
		target = 60052
		map = 4
	elseif level <= 50 then
		target = 167
		map = 6
	elseif level <= 150 then
		target = 169
		map = 7
	end
	s_addTaskVar(uid,30022,12,target)
	s_addTaskVar(uid,30022,13,map)
	return target,map
end

--任务追踪
function RoleTaskInfo30022:GetTaskTraceText(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level >= 51 then
		if s_getTaskVar(uid,30022,17) == 0 and s_getTaskVar(uid,30022,21) == 0 then
			local msg = [[body( 17:00-22:00可投保：goto(226,3)         物资装填：goto(167,6)           goto(227,7)         任务回复：goto(%u,%u))]]
			local npcid,mapid = RoleTaskInfo30022:GetTargetNpc(uid)
			msg = string.format(msg,npcid,mapid)
			return parseToDesc(msg)
		elseif s_getTaskVar(uid,30022,17) == 1 and s_getTaskVar(uid,30022,21) == 0 then
			local msg = [[body( 17:00-22:00可投保：goto(226,3)         物资装填：goto(227,7)         任务回复：goto(%u,%u))]]
			local npcid,mapid = RoleTaskInfo30023:GetTargetNpc(uid)
			msg = string.format(msg,npcid,mapid)
			return parseToDesc(msg)
		end
	end
	local msg = [[body(任务回复：goto(%u,%u))]]
	local npcid,mapid = RoleTaskInfo30022:GetTargetNpc(uid)
	msg = string.format(msg,npcid,mapid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	msg = parseToDesc(msg)
	return msg
end

--任务描述
function RoleTaskInfo30022:GetSubTaskDescText(uid, taskid, subtaskid)
	local target,map = RoleTaskInfo30022:GetTargetNpc(uid)
	local text = nil
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
		text = subinfo.desctext
	end
	if text == nil or text == "" then return end
	text = string.gsub(text,"99999",target)
	text = string.gsub(text,"66666",map)
	local foregift = RoleTaskInfo30022:GetTaskForegift(uid)
	text = string.gsub(text,"$FOREGIFT",foregift)
	local offline = s_getVar(uid,8,1)*0.1
	text = string.gsub(text,"$OFFLINE",offline)
	return text
end

--押金
function RoleTaskInfo30022:GetTaskForegift(uid)
	local foregift = s_getTaskVar(uid,30022,14)
	if foregift == 0 then
		foregift = 20
		local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
		local info = self.foregift
		for i = 1, table.getn(info) do
			if level >= info[i][1] and level <= info[i][2] then
				foregift = info[i][3]
				break
			end
		end
	end
	if s_getTaskVar(uid,30022,11) ~= 1 then
		return foregift
	else
		return math.floor(foregift * 0.2)
	end
end

--每天次数
function RoleTaskInfo30022:RefreshTaskRing(uid)
	--速递日可完成4次
	local weekday = s_getCurTime(TIME_CURWDAYS)
	if weekday == 0 then
		self.ring = 3
		return
	end
	self.ring = 2
	return
end

--获得补给车ID
function RoleTaskInfo30022:GetGuardID(uid,color)
	if color == -1 then	return 61071 end --破损的
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local guards = self.guards
	for i = 1, table.getn(self.guards) do
		if level <=  guards[i][1] then
			return guards[i][color+2]
		end
	end
end

--检查是否可以接受任务
function RoleTaskInfo30022:CheckAccept(uid)
	RoleTaskInfo30022:RefreshTaskRing(uid)
	local process = s_getTaskValue(uid,30022,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local process = s_getTaskValue(uid,30023,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local pretask = s_getTaskValue(uid,30022,TaskValue_PreTask)
	if pretask ~= nil and pretask ~= 0 then
		local process = s_getTaskValue(uid,pretask,TaskValue_Process)
		if process ~= TaskProcess_Done then
			return VALUE_FAIL
		end
	end

	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minLevel = s_getTaskValue(uid,30022,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,30022,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 30022) == VALUE_FAIL then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30022:CheckAcceptTiled1(uid)
	return self:CheckAccept(uid)
end

--显示通行证和胶囊界面
function RoleTaskInfo30022:ShowAcceptWithItem(uid)
	if c_checkGuard(uid, 1) ~= VALUE_OK then return end

	local foregift = RoleTaskInfo30022:GetTaskForegift(uid)
	if s_getMoney(uid,MoneyType_Money) < foregift then
		local msg = string.format("接取该任务需要押金银币%d文，当前押金不足，无法接取。",foregift)
		s_sysInfo(uid,msg)
		return VALUE_FAIL
	end
	local msg = [[body(在领取补给车前，放入不同颜色的通行证，可以提高前线速递任务的经验奖励。通行证会在领取补给车的同时被扣除。blankline()在领取补给车前，放入不同颜色的储色胶囊，可以指定所领取补给车的颜色。储色胶囊将会在领取补给车的同时被扣除。blankline()hot(点击确定进入接受任务界面。))]]
	msg = parseToTalk(msg)

	ShowTaskPack2(uid,"运镖",msg,"确定","请放入通行证:","请放入储色胶囊:","31145","31123:31122:31121","RoleTaskInfo30022:ShowAccept($1,$2,$3)")

end

function RoleTaskInfo30022:ShowAcceptWithItemTiled1_1(uid)
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_USABLE_TILED_POINT) < 45 then
		s_sysInfo(uid,"体力值不足45点，无法接取任务。")
		return VALUE_FAIL
	end
	s_addVar(uid, 30022, TvarIndex_TiledTimes, 1)
	s_addVar(uid, 30022, TvarIndex_TiledMode, 1)
	self:ShowAcceptWithItem(uid)
end

function RoleTaskInfo30022:ShowAcceptWithItemTiled1_2(uid)
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_USABLE_TILED_POINT) < 45 then
		s_sysInfo(uid,"体力值不足45点，无法接取任务。")
		return VALUE_FAIL
	end
	s_addVar(uid, 30022, TvarIndex_TiledTimes, 1)
	s_addVar(uid, 30022, TvarIndex_TiledMode, 2)
	self:ShowAcceptWithItem(uid)
end

--接受任务对话
function RoleTaskInfo30022:ShowAccept(uid,passid,capsuleid)
	if passid == nil then passid = 0 end
	if passid == 0 then
		s_addVar(uid,30022,200,0)
	else
		s_addVar(uid,30022,200,passid)
	end
	if capsuleid == 0 then
		s_addVar(uid,30022,201,0)
	else
		s_addVar(uid,30022,201,capsuleid)
	end
	local msg = GetSubTaskAcceptText(uid,30022, 1)
	local foregift = RoleTaskInfo30022:GetTaskForegift(uid)
	msg = string.gsub(msg,"$FOREGIFT",foregift)
	local call = string.format("RoleTaskInfo30022:StartFreshColor($1,%u,%u)",passid,capsuleid)
	--有颜色胶囊的不再走摇颜色
	if capsuleid > 0 then
		call = string.format("RoleTaskInfo30022:AddTaskWithCapsule($1,%u,%u)",passid,capsuleid)
	end
	ShowNpcMenuBottomStyle(uid,msg,"接受(3)",call,"离开(3)")
end

--开始摇颜色
function RoleTaskInfo30022:StartFreshColor(uid,passid,capsuleid)
	local rates1 = {3900, 4000, 1500, 500, 100}
	local rates2 = {0,	  6500, 2500, 850, 150}
	local rates = rates1
	--[[local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local step = s_getEvent(Relation_Country,homeland,CountryEv_GuoYun)
	if step == EventStep_Run then
	rates = rates2
	end--]]
	local color = 0
	local rand = math.random(1,10000)
	if rand <= rates[1] then
		color = 0
	elseif rand <= (rates[1] + rates[2]) then
		color = 1
	elseif rand <= (rates[1] + rates[2] + rates[3]) then
		color = 2
	elseif rand <= (rates[1] + rates[2] + rates[3] + rates[4]) then
		color = 3
	else
		color = 4
		local mycrops = s_getCorpsId(uid)
		if mycrops ~= 0 and mycrops ~= nil then
			local name = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_NAME)
			s_corpsInfo(mycrops,"真幸运，你们团的"..name.."换出了一辆紫色补给车，现在赶到"..name.."的身边，可以在紫色补给车处额外换一次补给车颜色(该团员补给车需处于非合体状态)。",ChatPos_Important + ChatPos_Pop)
		end
	end
	if GLOBAL_GUARD_VALUE == 1 then
		local curRound,curRing = GetTaskCurRoundAndRing(uid, 30022)
		local times = curRing
		if times == 1 and color < 1 then
			color = 1
			s_sysInfo(uid,"难得今天这么热闹,你帮我护送个蓝色补给车吧")
		end
		if times == 2 and color < 2 then
			color = 2
			s_sysInfo(uid,"难得今天这么热闹,你帮我护送个黄色补给车吧")
		end
		if times == 3 and color < 3 then
			color = 3
			s_sysInfo(uid,"难得今天这么热闹,你帮我护送个绿色补给车吧")
		end
	end
	if s_getCountryVar(13,13,2) == 1 then
		if color < 2 then
			color = 2
		end
	end
	RoleTaskInfo30022:AddTask(uid,{passid,capsuleid},{color,0})
end

--接受任务（颜色胶囊）
function RoleTaskInfo30022:AddTaskWithCapsule(uid,passid,capsuleid)
	local param = {passid,capsuleid}
	local param_ext = {0, 0}
	RoleTaskInfo30022:AddTask(uid,param,param_ext)
end

--接受任务
function RoleTaskInfo30022:AddTask(uid,param,param_ext)
	local passid = param[1]
	local capsuleid = param[2]
	local color = param_ext[1]
	local forceoff = param_ext[2]
	if forceoff > 0 then
		color = TaskColor_White
	end
	--检查今天是否可以使用胶囊
	if capsuleid ~= 0 and capsuleid ~= nil then
		local today = s_getCurTime(TIME_ALLDAYS)
		local lastday = s_getVar(uid,100,6)
		if today == lastday then
			s_sysInfo(uid,"今天已经使用过胶囊,不可以再使用")
			return VALUE_FAIL
		end
		if RoleTaskInfo30022:GetColorByCapsule(uid,capsuleid) == TaskColor_White then
			s_sysInfo(uid,"储色胶囊不正确")
			return VALUE_FAIL
		end
	end

	--检查通行证合法性
	if passid ~= 0 and passid ~= nil then
		local baseid = s_getItemValue(uid,passid,Item_Base_ID)
		if RoleTaskInfo30022:CheckPassValid(uid,baseid,passid) ~= VALUE_OK then
			s_sysInfo(uid,"该通行证不可使用")
			return VALUE_FAIL
		end
	end

	if RoleTaskInfo30022:CheckAccept(uid) ~= VALUE_OK then
		return VALUE_FAIL
	end
	if c_checkGuard(uid, 1) ~= VALUE_OK then
		return VALUE_FAIL
	end
	local foregift = RoleTaskInfo30022:GetTaskForegift(uid)
	if s_removeMoney(uid,MoneyType_Money,foregift,"前线速递押金") ~= VALUE_OK then
		local msg = string.format("接取该任务需要押金银币%d，当前押金不足，无法接取。",foregift)
		s_sysInfo(uid,msg)
		return VALUE_FAIL
	end

	if capsuleid ~= 0 and capsuleid ~= nil then
		--color = s_getItemValue(uid,capsuleid,Item_Attribute_Quality)
		color = RoleTaskInfo30022:GetColorByCapsule(uid,capsuleid)
	end
	local guardid = RoleTaskInfo30022:GetGuardID(uid,color)
	local endnpc = RoleTaskInfo30022:GetTargetNpc(uid)
	local dropexp = RoleTaskInfo30022:GetTaskExp_Drop(uid,color)
	local npc = s_summonGuard(uid,guardid,30022,endnpc,foregift,dropexp)
	if npc == 0 or npc == nil then
		s_sysInfo(uid,"补给车召唤失败")
		return VALUE_FAIL
	end
	--加血
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countrystate = s_getCountryState(homeland)
	if countrystate == CountryStateWeak then
		--[[
		s_addValue(SCENE_ENTRY_NPC,npc,VALUE_TYPE_MAXHP_ADD_PER,5000)
		local maxhp = s_getValue(SCENE_ENTRY_NPC,npc,VALUE_TYPE_MAXHP)
		s_addValue(SCENE_ENTRY_NPC,npc,VALUE_TYPE_HP,math.floor(maxhp*0.5))
		]]
		s_addbuff(SCENE_ENTRY_NPC,npc,105,5000,10)
	end
	if color == TaskColor_Purple then
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELADN_NAME)
		s_worldEvent("<p><n color=GXColorYellow>" .. homeland .. "的</n><q buttonid=6005 ownerid=" .. uid .. ">" .. name .. "</q><n color=GXColorYellow>获得了一辆紫色的补给车！</n></p>")
	end

	OnOfflineTaskExpEvent(uid,1)
	s_addVar(uid,8,101,s_getCurTime(TIME_ALLDAYS))

	AddRoleSubTask(uid,30022,1,1,1,color)
	s_addTaskVar(uid,30022,14,foregift)
	s_addTaskVar(uid,30022,MvarIndex_Hourglass,0)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,21) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,21)
	end
	s_addbuff(SCENE_ENTRY_PLAYER,uid,21,1,60*60)
	if capsuleid ~= nil and capsuleid ~= 0 then
		s_deleteItemByThisID(uid,capsuleid,1,"RoleTaskInfo30022")
		s_addVar(uid,100,6,today)
	end

	--扣体力
	if s_getVar(uid, 30022, TvarIndex_TiledTimes) == 1 then
		s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 45)
	end

	--检查是否使用通行证
	if passid ~= VALUE_FAIL and passid ~= nil then
		local thisid = passid
		local pass_color = s_getItemValue(uid,thisid,Item_Attribute_Quality)
		if s_deleteItemByThisID(uid,thisid,1,"RoleTaskInfo30022") == VALUE_OK then
			s_addTaskVar(uid,30022,15,pass_color+1)
			--s_addTaskVar(uid,30022,16,passid)
			--重新计算任务经验(通行证影响经验)
			s_addTaskVar(uid,30022,MvarIndex_Exp,0)
			local text = GetSubTaskDescText(uid,30022,1)
			s_setTaskValue(uid,30022,TaskValue_Desc,text,1)
		end
	end
	--国家发布时间，做标记
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local step = s_getEvent(Relation_Country,homeland,CountryEv_GuoYun)
	if step == EventStep_Run then
		s_addTaskVar(uid,30022,20,1)
	end
	return VALUE_OK
end
--官员显示交付任务
function RoleTaskInfo30022:CheckShowFinish2(uid,npcid)
	RoleTaskInfo30022:RefreshTaskRing(uid)
	local process = s_getTaskValue(uid,30022,TaskValue_Process)
	if process == TaskProcess_None then
		return VALUE_FAIL
	end
	--[[
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < minlevel then
	return VALUE_FAIL
	end
	if level > maxlevel then
	return VALUE_FAIL
	end
	]]
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland ~= curcountry then
		return VALUE_FAIL
	end
	local fun = s_getFunction(uid,Relation_Country)
	if fun ~= FunctionType_Common then
		return VALUE_OK
	end
	local corps = s_getCorpsId(uid)
	if corps == 0 or corps == nil then
		return VALUE_FAIL
	end
	local homeland =s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if corps ~= s_getCountryVar(homeland,1,79) and corps ~= s_getCountryVar(homeland,1,83) then
		return VALUE_FAIL
	end
	return VALUE_OK
end
--是否显示交付任务
function RoleTaskInfo30022:CheckShowFinish(uid,npcid)
	RoleTaskInfo30022:RefreshTaskRing(uid)
	local process = s_getTaskValue(uid,30022,TaskValue_Process)
	if process == TaskProcess_None then
		return VALUE_FAIL
	end
	--[[
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < minlevel then
	return VALUE_FAIL
	end
	if level > maxlevel then
	return VALUE_FAIL
	end
	]]
	local target = s_getTaskVar(uid,30022,12)
	if target ~= npcid then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--官员托运完成任务
function RoleTaskInfo30022:ShowFinish2(uid)
	s_changeGuardTargetNpc(uid,30022,218)
	RoleTaskInfo30022:ShowFinish(uid)
end

--显示完成任务对话
function RoleTaskInfo30022:ShowFinish(uid)
	--没有镖车，提示玩家放弃任务
	local guard = s_getGuardID(uid)
	if guard  == 0 then
		s_sysInfo(uid,"镖车丢失,任务失败，请删除任务后重新接取 ")
		return
	end
	s_resetTrafficType(uid)
	local msg = GetSubTaskFinishText(uid,30022,1)
	local call = "RoleTaskInfo30022:FinishTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"完成(3)",call,"离开(3)")
end

--避免CommonTaskReward
function RoleTaskInfo30022:TaskReward(uid, taskid, subtaskid)
end

function RoleTaskInfo30022:FinishTask(uid)
	if s_commitGuard(uid,30022) ~= VALUE_OK then
		s_sysInfo(uid,"补给车还没有护送回来")
		return
	end
	local color = s_getTaskValue(uid,30022,TaskValue_Color)
	local username = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_NAME)
	if color == 0 then
		s_debug(username.."完成白色低等级前线速递")
	elseif color == 1 then
		s_debug(username.."完成蓝色低等级前线速递")
	elseif color == 2 then
		s_debug(username.."完成黄色低等级前线速递")
	elseif color == 3 then
		s_debug(username.."完成绿色低等级前线速递")
	elseif color == 4 then
		s_debug(username.."完成紫色低等级前线速递")
	end
	--返还押金
	local foregift = RoleTaskInfo30022:GetTaskForegift(uid)
	local exp = GetTaskExp(uid,30022) --获得经验

	local offline = s_getVar(uid,8,1)*0.1
	if offline ~= 0 then
		s_addVar(uid,8,1,0)
		local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
		local expmode = 0
		for i = 1, table.getn(self.exp_mode) do
			if level <= self.exp_mode[i][1] then
				expmode = self.exp_mode[i][2]
				break
			end
		end
		local exp = math.floor(75 * expmode * 1.5*offline*(30+level^1.5))
		s_refreshExp(uid,exp,ExpType_OptionalTask,30022)
		s_sysInfo(uid,"获得经验累积补偿:" .. exp,ChatPos_MsgBox)
	end

	if s_getTaskVar(uid,30022,11) == 1 then
		foregift = 0
		exp = math.floor(exp * 0.6)
	end
	s_refreshExp(uid,exp,ExpType_OptionalTask,30022)

	exp = self:GetTaskBaseExp(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local worldlevel = s_getWorldLevel()
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countrystate = s_getCountryState(homeland)
	local rate = GetWorldLevelExp(level,worldlevel,countrystate)
	local worldexp = math.floor(exp*rate*0.01)
	if worldexp ~= 0 then
		s_refreshExp(uid,worldexp,ExpType_OptionalTask,30022)
		s_sysInfo(uid,"获得人类进程及国家状态经验加成:" .. worldexp)
	end

	--国家发布时间获得额外奖励
	local step = s_getEvent(Relation_Country,homeland,CountryEv_GuoYun)
	local step1 = s_getEvent(Relation_World,homeland,WorldEv_Time)
	if step == EventStep_Run and s_getTaskVar(uid,30022,20) == 1 then
		local extra_exp = math.floor(exp*0.5)
		s_refreshExp(uid,extra_exp,ExpType_OptionalTask,30022)
		s_sysInfo(uid,"国家运输时间获得额外经验奖励为"..extra_exp)
		if s_getVar(uid,130,14) == 0 then
			s_addVar(uid,130,14,1)
			s_addVar(uid,130,200,s_getVar(uid,130,200)+1)
			s_debugUser(uid,"国家活力点，国运，参与度：1")
		end
	elseif step ~= EventStep_Run and step1 ~= EventStep_Run then
		local specialbuff = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,31071)
		if specialbuff ~= nil and specialbuff ~= 0 then
			local extra_exp = math.floor(exp*0.5)
			s_refreshExp(uid,extra_exp,ExpType_OptionalTask,30022)
			s_sysInfo(uid,"特殊状态额外经验加成"..extra_exp)
		end
	end

	if step1 == EventStep_Run and (step ~= EventStep_Run or s_getTaskVar(uid,30022,20) ~= 1) then
		local extra_exp = math.floor(exp*0.5)
		s_refreshExp(uid,extra_exp,ExpType_OptionalTask,30022)
		s_sysInfo(uid,"系统活动时间获得额外经验奖励为"..extra_exp)
	end
	if foregift > 0 then
		s_addMoney(uid,MoneyType_Money,foregift,"前线速递押金返还")
	end

	--投保获得额外经验
	if s_getEscort(uid) ~= 0 then
		local extra_exp = math.floor(exp*0.35)
		s_refreshExp(uid,extra_exp,ExpType_OptionalTask,30022)
		if s_getEscort(uid) == s_getCountryVar(homeland,1,79) then
			s_addCountryVar(homeland,1,81,s_getCountryVar(homeland,1,81)+1)
		elseif s_getEscort(uid) == s_getCountryVar(homeland,1,83) then
			s_addCountryVar(homeland,1,85,s_getCountryVar(homeland,1,85)+1)
		end
		s_sysInfo(uid,"投保佣兵公会，成功运输获得额外经验"..extra_exp)
	end
	--清除数据
	s_clearEscort(uid)

	if level > 50 then
		if foregift == 0 then
			s_addVar(uid,1,74,s_getVar(uid,1,74)+6)
		else
			if s_getTaskVar(uid,30022,18) == 0 then
				local color = s_getTaskValue(uid,30022,TaskValue_Color)
				if color == 0 then
					s_addVar(uid,1,74,s_getVar(uid,1,74)+4)
				elseif color == 1 then
					s_addVar(uid,1,74,s_getVar(uid,1,74)+2)
				elseif color == 2 then
					s_addVar(uid,1,74,s_getVar(uid,1,74)+0)
				elseif color == 3 then
					if s_getVar(uid,1,74) >= 4 then
						s_addVar(uid,1,74,s_getVar(uid,1,74)-4)
					else
						s_addVar(uid,1,74,0)
					end
				elseif color == 4 then
					if s_getVar(uid,1,74) >= 10 then
						s_addVar(uid,1,74,s_getVar(uid,1,74)-10)
					else
						s_addVar(uid,1,74,0)
					end
				end
			end
		end
	end
	if s_getVar(uid,1,74) > 100 then
		s_addVar(uid,1,74,100)
	end

	--国运期间，增加支持度变量
	local step = s_getEvent(Relation_Country,homeland,CountryEv_GuoYun)
	if step == EventStep_Run then
		local var = s_getCountryVar(homeland,1,7)
		s_addCountryVar(homeland,1,7,1+var)
	end
	--发放获得经验的道具
	Dealtaskexpitem(uid)
	--体力宝箱
	if s_getVar(uid, 30022, TvarIndex_TiledMode) == 2 then
		s_addItem(uid,29303,0,1,0,"1-1","RoleTaskInfo30022")
	end

	--活力点
	s_addVigorPoint(uid, 11)
	s_debugUser(uid,"完成国运任务，获得11点活力点")

	--成就计数
	local color = s_getTaskValue(uid,30022,TaskValue_Color)
	if color >= 2 then
		AddAchieveTaskOperate(uid,40001,1)
	end
	--完成引导任务
	local curRound,curRing = GetTaskCurRoundAndRing(uid, 30022)
	if curRing == 1 then
		AddRoleTaskOperate(uid,13031)
	elseif curRing == 2 then
		AddRoleTaskOperate(uid,13032)
	elseif curRing == 3 then
		AddRoleTaskOperate(uid,13033)
	elseif curRing == 4 then
		AddRoleTaskOperate(uid,13034)
	end

	--周日速递日给予速递卡
	local weekday = s_getCurTime(TIME_CURWDAYS)
	if weekday == 0 then
		s_addLuckyCard(uid,0)
	end

	s_addTaskVar(uid,30022,17,0)
	s_addTaskVar(uid,30022,21,0)
	s_addTaskVar(uid,30022,18,0)
	s_addTaskVar(uid,30022,22,0)
	FinishRoleTask(uid,30022)
	local process = s_getTaskValue(uid,30308,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30308)
	end
	--AddRoleTaskOperate(uid,3811)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,21) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,21)
	end
	s_addActivePoint(uid,ActivePointType_Task,25)
	s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_EXP_MEDAL,5)

	AddRoleTaskOperate(uid,15241)   --YY先锋任务
	local month = s_getCurTime(TIME_CURMONTHS) + 1
	local mday = s_getCurTime(TIME_CURMDAYS)
	--端午节活动
	--[[
	if level > 41 then
	if month == 6 and  (mday >= 16 and mday <= 30) then
	s_addItem(uid,31509,3,1,0,"1-1","菖蒲")
	--elseif month == 6 and  mday <= 9 then
	--s_addItem(uid,31509,3,1,0,"1-1","菖蒲")
	end
	end
	--]]

	--圣诞节活动
	--[[if month == 12 and  mday >= 21 then
	if s_getVar(uid,116,215) == 0 then
	s_addVar(uid,116,215,1)
	s_addItem(uid,55245,3,1,0,"1-1","魔法小金锤")
	end
	end
	if month == 1 and  mday <= 6 then
	if s_getVar(uid,116,215) == 0 then
	s_addVar(uid,116,215,1)
	s_addItem(uid,55245,3,1,0,"1-1","魔法小金锤")
	end
	end

	--劳动节活动
	if month == 4 and  mday >= 29 then
	s_addItem(uid,44091,3,1,0,"1-1","普通的劳动节种子")
	elseif month == 5 and  mday <= 5 then
	s_addItem(uid,44091,3,1,0,"1-1","普通的劳动节种子")
	end
	--]]
	--暑期活动
	if month == 7  then
		if  mday >= 14 and mday <= 28 then
			if  s_getVar(uid,116,431) == 0 then
				s_addVar(uid,116,431,1)
				s_addItem(uid,44091,3,1,0,"1-1","普通的暑期种子")
			end
		end
	end
	--万圣节活动

	--[[if level >=51 then
	if month == 6 then
	if mday >= 1 then
	if homeland == 2 then --天
	s_addItem(uid,55022,3,1,0,"","南瓜馅饼")
	elseif homeland == 3 then --火
	s_addItem(uid,55021,3,1,0,"","烘南瓜子")
	elseif homeland == 4 then --水
	s_addItem(uid,55025,3,1,0,"","苹果汁")
	elseif homeland == 5 then --沙
	s_addItem(uid,55023,3,1,0,"","粟米糖")
	elseif homeland == 6 then --风
	s_addItem(uid,55020,3,1,0,"","生姜饼")
	elseif homeland == 7 then --花
	s_addItem(uid,55024,3,1,0,"","太妃糖")
	end

	elseif month == 11 then
	if mday <= 4 then
	if homeland == 2 then --天
	s_addItem(uid,55022,3,1,0,"","南瓜馅饼")
	elseif homeland == 3 then --火
	s_addItem(uid,55021,3,1,0,"","烘南瓜子")
	elseif homeland == 4 then --水
	s_addItem(uid,55025,3,1,0,"","苹果汁")
	elseif homeland ==5 then --沙
	s_addItem(uid,55023,3,1,0,"","粟米糖")
	elseif homeland == 6 then --风
	s_addItem(uid,55020,3,1,0,"","生姜饼")
	elseif homeland == 7 then --花
	s_addItem(uid,55024,3,1,0,"","太妃糖")
	end
	end
	end
	end]]--
	--命运女神的垂青
	local process = s_getTaskValue(uid,30555,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30555)
	end
	local process = s_getTaskValue(uid,30565,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30565)
	end
	local process = s_getTaskValue(uid,30575,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30575)
	end
	local process = s_getTaskValue(uid,30585,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30585)
	end
	local process = s_getTaskValue(uid,30615,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30615)
	end
	local process = s_getTaskValue(uid,30635,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30635)
	end
	--完成前线速递任务得“幸运大礼包”
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local rand = math.random(1,100)
	if	rand <= 40 then
		s_addItem(uid,63394,3,1,0,"1-1","幸运大礼包")
		s_sysInfo(uid,"意外获得了1个幸运大礼包，快拆开看看吧！")
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>完成日常任务时，好运降临，获得丰厚道具！</n></p>",ChatPos_Sys)
	end
end

--获得对应的通行证
function RoleTaskInfo30022:CheckPassValid(uid,baseid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minlevel = s_getItemValue(uid,thisid,Item_Base_NeedLevel)
	local maxlevel = s_getItemValue(uid,thisid,Item_Base_MaxLevel)
	if level == nil or minlevel == nil or maxlevel == nil then return VALUE_FAIL end
	if level < minlevel or level >= maxlevel then
		return VALUE_FAIL
	end
	local passlist = {31145,31146}
	if FindInTable(passlist,baseid) ~= VALUE_OK then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--获得胶囊对应的镖车颜色
function RoleTaskInfo30022:GetColorByCapsule(uid,itemid)
	local baseid = s_getItemValue(uid,itemid,Item_Base_ID)
	if baseid == 31121 then
		return TaskColor_Yellow
	elseif baseid == 31122 then
		return TaskColor_Green
	elseif baseid == 31123 then
		return TaskColor_Purple
	else
		return TaskColor_White
	end
end

function RoleTaskInfo30022:OnDeleteTask(uid)
	--清除投保数据
	s_clearEscort(uid)
	s_killGuard(uid)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,21)
end

--完成次数
function RoleTaskInfo30022:OnTaskDailyChanged(uid)
	RefreshTaskDailyInfo(uid, 30063)
end


--NPC菜单
--AppendMenuToNpc(60000,"前线速递(2)","RoleTaskInfo30022:ShowAcceptWithItem($1)","RoleTaskInfo30022:CheckAccept($1)")
AppendMenuToNpc(60000,"前线速递- 45体力（1.5倍经验）(2)","RoleTaskInfo30022:ShowAcceptWithItemTiled1_1($1)","RoleTaskInfo30022:CheckAcceptTiled1($1)")
AppendMenuToNpc(60000,"前线速递- 45体力（1倍经验+宝箱）(2)","RoleTaskInfo30022:ShowAcceptWithItemTiled1_2($1)","RoleTaskInfo30022:CheckAcceptTiled1($1)")

--30及
AppendMenuToNpc(60052,"前线速递(2)","RoleTaskInfo30022:ShowFinish($1)","RoleTaskInfo30022:CheckShowFinish($1,60052)")
--50交付
AppendMenuToNpc(167,"前线速递(2)","RoleTaskInfo30022:ShowFinish($1)","RoleTaskInfo30022:CheckShowFinish($1,167)")
--80交付
AppendMenuToNpc(169,"前线速递(2)","RoleTaskInfo30022:ShowFinish($1)","RoleTaskInfo30022:CheckShowFinish($1,169)")
--官员交付
AppendMenuToNpc(218,"官员托运(2)","RoleTaskInfo30022:ShowFinish2($1)","RoleTaskInfo30022:CheckShowFinish2($1)")
