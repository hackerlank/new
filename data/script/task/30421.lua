--前线速递
RoleTaskInfo30421 =
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
	--押运车
	guards = {56019, 56020, 56021, 56022, 56023},
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
		{31,    40,    12},
		{41,    50,    25},
		{51,    60,    50},
		{61,    70,    100},
		{71,    80,    150},
		{81,    90,    200},
		{91,    100,   250},
		{101,   110,   300},
		{111,   120,   400},
		{121,   130,   500},
		{131,   140,   600},
		{141,   150,   750},
	},
	--运势刷出对应颜色车几率
	colorrate = {
		{70, 20, 10,  0,  0},
		{56, 30, 10,  3,  1},
		{38, 40, 15,  5,  2},
		{10, 50, 25, 10,  5},
		{ 0, 20, 50, 20, 10},
		{ 0,  0, 30, 50, 20},
	},
	--速递车血量受到人类进程加成系数
	hpAddRate = {0, 0, 0, 4000, 9000, 18000, 27000, 38000, 51000, 65000},
}

--////////////////////////////////////////////
--********任务变量意义*********
--11 押运车是否被劫
--12 目标NPC ID
--13 目标NPC 地图ID
--14 押金
--15 通行证颜色
--18 本次押运总押金
--20 - 24 队长接任务时队伍中所有队员的id
--30 - 34 队员20 - 24是否协助速递 1 协助速递
--41 - 44 玩家是否核对过货物，依次对应npc 60911, 60912, 60913, 60914，未访问 0， 访问过 1
--51 - 54 玩家是否刷新过押运车品质，依次对应npc 60911, 60912, 60913, 60914, 未刷新 0， 刷新过 1
--61 - 64 队员交付的押金
----*********玩家变量************
--21普鲁斯处刷新颜色
--22团员紫车处刷新颜色
--200 通行证ID
--201 胶囊ID
--////////////////////////////////////////////

--任务简介
function RoleTaskInfo30421:GetTaskIntroText(uid)
	local msg =
		[[
title(运镖)
body(
blankline()   在领取押运车前，放入不同颜色的通行证，可以提高前线速递任务的经验奖励。通行证会在领取补给车的同时被扣除。
blankline()
blankline()   在领取押运车前放入不同颜色的储色胶囊，可以指定所领取补给车的颜色。储色胶囊将会在领取补给车的同时被扣除。
blankline()
blankline()   exp(海量)
)
]]
	return parseToDesc(msg)
end

--任务经验
function RoleTaskInfo30421:GetTaskBaseExp(uid,level)
	--75*短期化系数*(30+人物等级^1.5)*颜色加成*通行证加成
	local expmode = 0
	for i = 1, table.getn(self.exp_mode) do
		if level <= self.exp_mode[i][1] then
			expmode = self.exp_mode[i][2]
			break
		end
	end
	local baseexp = math.floor(75*expmode * (30 + level^1.5))
	local color = s_getTaskValue(uid,30421,TaskValue_Color)
	if color == nil then color = 0 end
	local pass_color = s_getTaskVar(uid,30421,15)
	local pass = 1
	if pass_color > 0 then
		pass = self.pass_rates[pass_color]
	end
	local exp = math.floor(baseexp * self.color_rates[color+1] * pass)
	--接任务经验显示正确
	if s_getTaskValue(uid,30421,TaskValue_Process) == TaskProcess_None then
		local itemid = s_getVar(uid,30421,200)--s_getTaskVar(uid,30023,16)
		if itemid ~= VALUE_FAIL then
			local quality = s_getItemValue(uid,itemid,Item_Attribute_Quality)
			exp = exp * self.pass_rates[quality+1]
		end
		local capsuleid = s_getVar(uid,30421,201)
		if capsuleid ~= 0 then
			local color = RoleTaskInfo30421:GetColorByCapsule(uid,capsuleid)
			exp = exp * self.color_rates[color + 1]
		end
		exp = math.floor(exp)
	end
	return exp
end

function RoleTaskInfo30421:GetTaskExp(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = self:GetTaskBaseExp(uid,level)
	--体力点倍率现在统一 2倍
	local tiledtimes = 2
	exp = math.floor(exp * tiledtimes)
	return exp
end

--掉落的货物对应的经验
function RoleTaskInfo30421:GetTaskExp_Drop(uid,color)
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
function RoleTaskInfo30421:GetTargetNpc(uid)
	local npc = s_getTaskVar(uid,30421,12)
	local mapid = s_getTaskVar(uid,30421,13)
	if npc ~= 0 and mapid ~= 0 then
		return  npc,mapid
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	target = 60911
	map = 8
	s_addTaskVar(uid,30421,12,target)
	s_addTaskVar(uid,30421,13,map)
	return target,map
end

--任务追踪
function RoleTaskInfo30421:GetTaskTraceText(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level >= 71 then
		local msg = ""
		local msgGodess1 = ""
		local msgGodess2 = ""
		local msgGodess3 = ""
		local npcid,mapid = RoleTaskInfo30421:GetTargetNpc(uid)
		if s_getTaskVar(uid,30421,43) == 0 then
			msgGodess1 = "goto(60913,8)"
		end
		if s_getTaskVar(uid,30421,42) == 0 then
			msgGodess2 = "goto(60912,8)"
		end
		if s_getTaskVar(uid,30421,44) == 0 then
			msgGodess3 = "goto(60914,8)"
		end
		if  s_getTaskVar(uid,30421,42) == 1 and s_getTaskVar(uid,30421,43) == 1 and s_getTaskVar(uid,30421,44) == 1 then
			msg = [[body(任务回复：goto(%u,%u))]]
			msg = string.format(msg,npcid,mapid)
			return parseToDesc(msg)
		end
		msg = "body(去女神：" .. msgGodess1 .. msgGodess2 .. msgGodess3 .. "处核对货物，任务回复：goto(%u,%u))"
		msg = string.format(msg,npcid,mapid)
		return parseToDesc(msg)
	end
end

--任务描述
function RoleTaskInfo30421:GetSubTaskDescText(uid, taskid, subtaskid)
	local target,map = RoleTaskInfo30421:GetTargetNpc(uid)
	local text = nil
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
		text = subinfo.desctext
	end
	if text == nil or text == "" then return end
	text = string.gsub(text,"99999",target)
	text = string.gsub(text,"66666",map)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local foregift = RoleTaskInfo30421:GetTaskForegift(uid,level)
	text = string.gsub(text,"$FOREGIFT",foregift)
	return text
end

--押金
function RoleTaskInfo30421:GetTaskForegift(uid,level)
	if level == 0 or level == nil then
		level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	end
	local foregift = s_getTaskVar(uid,30421,14)
	if foregift == 0 then
		foregift = 20
		local info = self.foregift
		for i = 1, table.getn(info) do
			if level >= info[i][1] and level <= info[i][2] then
				foregift = info[i][3]
				break
			end
		end
	end
	if s_getTaskVar(uid,30421,11) ~= 1 then
		return foregift
	else
		return math.floor(foregift * 0.2)
	end
end

--获得押运车ID
function RoleTaskInfo30421:GetGuardID(color)
	if color == -1 then	return 56024 end --破损的
	local guards = self.guards
	--lua下标从1开始,白色为0所以+1
	return guards[color + 1]
end

--检查是否可以接受任务
function RoleTaskInfo30421:CheckAccept(uid)
	local process = s_getTaskValue(uid,30022,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end

	local process = s_getTaskValue(uid,30023,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end

	local process = s_getTaskValue(uid,30421,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end

	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minLevel = s_getTaskValue(uid,30421,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,30421,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30421:CheckAcceptTiled1(uid)
	return self:CheckAccept(uid)
end

--显示通行证和胶囊界面
function RoleTaskInfo30421:ShowAcceptWithItem(uid)
	if c_checkGuard(uid, 1) ~= VALUE_OK then return end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local foregift = RoleTaskInfo30421:GetTaskForegift(uid,level)
	if s_getMoney(uid,MoneyType_Money) < foregift then
		local msg = string.format("接取该任务需要押金银币%d，当前押金不足，无法接取。",foregift)
		s_sysInfo(uid,msg)
		return VALUE_FAIL
	end
	local msg = [[body(在领取押运车前，放入不同颜色的通行证，可以提高前线速递任务的经验奖励。通行证会在领取押运车的同时被扣除。blankline()在领取补给车前，放入不同颜色的储色胶囊，可以指定所领取补给车的颜色。储色胶囊将会在领取补给车的同时被扣除。blankline()hot(点击确定进入接受任务界面。))]]
	msg = parseToTalk(msg)
	ShowTaskPack2(uid,"帝都押运",msg,"确定","请放入通行证:","请放入储色胶囊:","31145","31123:31122:31121","RoleTaskInfo30421:ShowAccept($1,$2,$3)")
end

function RoleTaskInfo30421:ShowAcceptWithItemTiled1_1(uid)
	local hour = s_getCurTime(TIME_CURHOURS)
	if hour < 17 or hour >= 22 then
		s_messageBox(uid,"在指定时间内才可进行押运！")
		return VALUE_FAIL
	end

	if s_getVar(uid,116,130) >= 2 then
		s_messageBox(uid,"本周帝都押运次数已经用完，无法接取任务。")
		return VALUE_FAIL
	end

	if s_getVar(uid,116,133) > 0 then
		s_messageBox(uid,"今日帝都押运次数已经用完，无法接取任务。")
		return VALUE_FAIL
	end

	local teamid = s_getTeamID(uid)
	if teamid == 0 or uid ~= s_getTeamLeader(uid) then
		s_messageBox(uid,"只有队长才能接受押运委托！")
		return VALUE_FAIL
	end

	local member = s_getTeamEntry(SCENE_ENTRY_PLAYER,uid,0,1)
	if member and (table.getn(member) / 2) < 3 then
		s_messageBox(uid,"为保证安全，至少3人组队才能押运！")
		return VALUE_FAIL
	end

	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)

	local needMoney = 0
	for i = 1, table.getn(member), 2 do
		local member = member[i+1]
		if member then
			local level = s_getValue(SCENE_ENTRY_PLAYER,member, VALUE_TYPE_LEVEL)
			if level < 71 then
				s_messageBox(uid,"所有队员必须71级以上！")
				return VALUE_FAIL
			end

			local mhomeland = s_getValue(SCENE_ENTRY_PLAYER,member,VALUE_TYPE_HOMELAND)
			if homeland ~= mhomeland and s_isFriendCountry(homeland,mhomeland)  ~= VALUE_OK then
				s_messageBox(uid,"队伍中有非本国或者盟国的人，不可进行押运！")
				return VALUE_FAIL
			end
			local name = s_getValue(SCENE_ENTRY_PLAYER,member,VALUE_TYPE_NAME)

			if s_getVar(member,116,133) > 0 then
				local msg = string.format(name .. "今日参与次数已达上限，不可进行押运！")
				s_messageBox(uid,msg)
				return VALUE_FAIL
			end

			local process = s_getTaskValue(member,30022,TaskValue_Process)
			if process ~= TaskProcess_None then
				local msg = string.format(name .. "正在进行速递押运,不可再同时协助您！")
				s_messageBox(uid,msg)
				return VALUE_FAIL
			end

			local process = s_getTaskValue(member,30023,TaskValue_Process)
			if process ~= TaskProcess_None then
				local msg = string.format(name .. "正在进行速递押运,不可再同时协助您！")
				return VALUE_FAIL
			end

			if s_getVar(member,116,130) >= 2 then
				local msg = string.format(name .. "本周参与次数已达上限，不可进行押运！")
				s_sysInfo(uid,msg)
				return VALUE_FAIL
			end

			if s_getValue(SCENE_ENTRY_PLAYER,member,VALUE_TYPE_USABLE_TILED_POINT) < 45 then
				local msg = string.format(name .. "体力值不足45点，无法接取任务。")
				s_messageBox(uid,msg)
				return VALUE_FAIL
			end

			needMoney = RoleTaskInfo30421:GetTaskForegift(member,level)
			if s_getMoney(member,MoneyType_Money) < needMoney then
				local msg = string.format("您队伍中的 " .. name .. " 银币不足支付押金，不可进行押运！")
				s_messageBox(uid,msg)
				return VALUE_FAIL
			end
		end
	end

	--	s_registerRelationMsgBox(uid,Relation_Team,0,teamid,71,call,buttons,msgBoxInfo,60)
	self:ShowAcceptWithItem(uid)
end

--接受任务对话
function RoleTaskInfo30421:ShowAccept(uid,passid,capsuleid)
	if passid == nil then passid = 0 end
	if passid == 0 then
		s_addVar(uid,30421,200,0)
	else
		s_addVar(uid,30421,200,passid)
	end
	if capsuleid == 0 then
		s_addVar(uid,30421,201,0)
	else
		s_addVar(uid,30421,201,capsuleid)
	end
	local msg = GetSubTaskAcceptText(uid,30421,1)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local foregift = RoleTaskInfo30421:GetTaskForegift(uid,level)
	msg = string.gsub(msg,"$FOREGIFT",foregift)
	local call = string.format("RoleTaskInfo30421:StartFreshColor($1,%u,%u)",passid,capsuleid)
	--有颜色胶囊的不再走摇颜色
	if capsuleid > 0 then
		call = string.format("RoleTaskInfo30421:AddTaskWithCapsule($1,%u,%u)",passid,capsuleid)
	end
	ShowNpcMenuBottomStyle(uid,msg,"接受(3)",call,"离开(3)")
end

--开始摇颜色
function RoleTaskInfo30421:StartFreshColor(uid,passid,capsuleid)
	local furtune = s_getField(uid,UserVar_Fortune)
	local rates = self.colorrate[furtune]
	local color = 0
	local rand = math.random(1,100)
	local name = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_NAME)
	if rand <= rates[1] then
		color = 0
	elseif rand <= (rates[1] + rates[2]) then
		color = 1
	elseif rand <= (rates[1] + rates[2] + rates[3]) then
		color = 2
	elseif rand <= (rates[1] + rates[2] + rates[3] + rates[4]) then
		color = 3
		s_worldInfo("太幸运了，"..name.."的队伍在帝都接到绿色押运车！",ChatPos_Important + ChatPos_Sys)
	else
		color = 4
		s_worldInfo("太幸运了，"..name.."的队伍在帝都接到紫色押运车！",ChatPos_Important + ChatPos_Sys)
	end
	RoleTaskInfo30421:AddTask(uid,{passid,capsuleid},{color,0})
end

--接受任务（颜色胶囊）
function RoleTaskInfo30421:AddTaskWithCapsule(uid,passid,capsuleid)
	local param = {passid,capsuleid}
	local param_ext = {0, 0}
	RoleTaskInfo30421:AddTask(uid,param,param_ext)
end

--接受任务
function RoleTaskInfo30421:AddTask(uid,param,param_ext)
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
		if RoleTaskInfo30421:GetColorByCapsule(uid,capsuleid) == TaskColor_White then
			s_sysInfo(uid,"储色胶囊不正确")
			return VALUE_FAIL
		end
	end

	--检查通行证合法性
	if passid ~= 0 and passid ~= nil then
		local baseid = s_getItemValue(uid,passid,Item_Base_ID)
		if RoleTaskInfo30421:CheckPassValid(uid,baseid,passid) ~= VALUE_OK then
			s_sysInfo(uid,"该通行证不可使用")
			return VALUE_FAIL
		end
	end

	if RoleTaskInfo30421:CheckAccept(uid) ~= VALUE_OK then
		s_sysInfo(uid,"您当前无法接受帝都押运任务")
		return VALUE_FAIL
	end
	if c_checkGuard(uid, 1) ~= VALUE_OK then
		s_sysInfo(uid,"您当前已经接受了帝都押运任务，如果要新接任务，请先在任务界面删除掉之前未完成的任务！")
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local foregift = RoleTaskInfo30421:GetTaskForegift(uid,level)
	if s_removeMoney(uid,MoneyType_Money,foregift,"帝都押运速递押金") ~= VALUE_OK then
		local msg = string.format("接取该任务需要押金银币%d文，当前押金不足，无法接取。",foregift)
		s_sysInfo(uid,msg)
		return VALUE_FAIL
	end

	if capsuleid ~= 0 and capsuleid ~= nil then
		--color = s_getItemValue(uid,capsuleid,Item_Attribute_Quality)
		color = RoleTaskInfo30421:GetColorByCapsule(uid,capsuleid)
	end
	local guardid = RoleTaskInfo30421:GetGuardID(color)
	local endnpc = RoleTaskInfo30421:GetTargetNpc(uid)
	local dropexp = RoleTaskInfo30421:GetTaskExp_Drop(uid,color)
	local guardid = s_summonGuard(uid,guardid,30421,endnpc,foregift,dropexp)
	if guardid == 0 or guardid == nil then
		s_sysInfo(uid,"押运车召唤失败")
		return VALUE_FAIL
	end
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	s_setValue(SCENE_ENTRY_NPC,guardid,VALUE_TYPE_NPC_COUNTRY,homeland)
	local worldlevel = s_getWorldLevel()
	s_addbuff(SCENE_ENTRY_NPC,guardid,105,self.hpAddRate[worldlevel],10)
	if color == TaskColor_Purple then
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		local homelandName = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELADN_NAME)
		s_worldEvent("<p><n color=GXColorYellow>" .. homelandName .. "的</n><q buttonid=6005 ownerid=" .. uid .. ">" .. name .. "</q><n color=GXColorYellow>的队伍在帝都获得了一辆紫色的押运车！</n></p>")
	end

	AddRoleSubTask(uid,30421,1,3,0,color)
	s_addTaskVar(uid,30421,14,foregift)
	s_addTaskVar(uid,30421,18,s_getTaskVar(uid,30421,18) + foregift)

	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,21) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,21)
	end
	s_addbuff(SCENE_ENTRY_PLAYER,uid,21,1,60*60)

	if capsuleid ~= nil and capsuleid ~= 0 then
		s_deleteItemByThisID(uid,capsuleid,1,"RoleTaskInfo30421")
		s_addVar(uid,100,6,today)
	end

	--扣体力
	s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 45)

	--检查是否使用通行证
	if passid ~= VALUE_FAIL and passid ~= nil then
		local thisid = passid
		local pass_color = s_getItemValue(uid,thisid,Item_Attribute_Quality)
		if s_deleteItemByThisID(uid,thisid,1,"RoleTaskInfo30421") == VALUE_OK then
			s_addTaskVar(uid,30421,15,pass_color+1)
			--重新计算任务经验(通行证影响经验)
			s_addTaskVar(uid,30421,MvarIndex_Exp,0)
			local text = GetSubTaskDescText(uid,30421,1)
			s_setTaskValue(uid,30421,TaskValue_Desc,text,1)
		end
	end
	--每日帝都押运次数加1
	s_addVar(uid,116,130,s_getVar(uid,116,130) + 1)
	s_addVar(uid,116,133,s_getVar(uid,116,133) + 1)

	--邀请队员护送
	local leadername = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local buttons = "确定|3|Enter|取消|4|Esc"
	call = "InviteCallBack($1,$2," .. uid .. ")"

	local memberlist = s_getTeamEntry(SCENE_ENTRY_PLAYER,uid,0,1)
	local memberid = 0
	local memberNotLeader = {}
	for i = 1, table.getn(memberlist), 2 do
		memberid = memberlist[i+1]
		if memberid ~= uid and memberid ~= 0 then
			local level = s_getValue(SCENE_ENTRY_PLAYER,memberid,VALUE_TYPE_LEVEL)
			local msgBoxInfo = string.format(leadername .. "邀请您协助帝都押运，是否同意？（需支付" .. RoleTaskInfo30421:GetTaskForegift(memberid,level) .."银币）")
			table.insert(memberNotLeader,memberid)
			s_registerMsgBox(memberid,call,buttons,msgBoxInfo,60)
		end
	end

	for i = 1, #memberNotLeader do
		s_addTaskVar(uid,30421,19 + i,memberNotLeader[i])
	end

	return VALUE_OK
end

--邀请参加押运弹出对话框处理回调函数
function InviteCallBack(uid,result,teamleader)
	if uid == 0 or uid == nil then return end
	if teamleader == 0 or teamleader == nil then
		s_sysInfo(uid,"找不到队长，无法协助帝都押运！")
		return
	end
	if result == Button_Yes then
		if s_getTaskValue(teamleader,30421,TaskValue_Process) ~= TaskProcess_Doing and s_getTaskValue(teamleader,30421,TaskValue_Process) ~= TaskProcess_CanDone then
			s_sysInfo(uid,"邀请您协助的帝都押运已经完成！")
			return
		end
		for i = 20, 24 do
			--是队长接取任务时的组队成员
			if s_getTaskVar(teamleader,30421,i) == uid then
				--已经协助押运
				if s_getTaskVar(teamleader,30421,i+10) == 1 then
					s_sysInfo(uid,"您已经协助了本次押运！")
					return
				end
				local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
				local needMoney = RoleTaskInfo30421:GetTaskForegift(uid,level)
				if needMoney == 0 or needMoney == nil then
					s_sysInfo(uid,"无法获取需要的押金数量！")
					return
				end
				if s_removeMoney(uid,MoneyType_Money,needMoney,"帝都协助押运押金") ~= VALUE_OK then
					local msg = string.format("协助帝都押运需要押金银币%d文，当前押金不足，无法接取。",needMoney)
					s_sysInfo(uid,msg)
					return VALUE_FAIL
				else
					--记录玩家交的押金
					s_addTaskVar(teamleader,30421,i+40,needMoney)
					s_addTaskVar(teamleader,30421,18,s_getTaskVar(teamleader,30421,18) + needMoney)
					--扣体力
					s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 45)
					--将玩家协助速递标志置为1
					s_addTaskVar(teamleader,30421,i+10,1)
					--周帝都押运次数+1
					s_addVar(uid,116,130,s_getVar(uid,116,130)+1)
					--玩家本日参加帝都押运次数+1
					s_addVar(uid,116,133,1)
					s_sysInfo(uid,"您成功协助了本次帝都押运！",ChatPos_Sys + ChatPos_Important)
				end
				break
			end
		end
	end
end



--是否显示交付任务
function RoleTaskInfo30421:CheckShowFinish(uid)
	if uid == 0 or uid == nil then return end
	local npcid = s_getVar(uid,120,2)
	if npcid == 0 or npcid == nil then return end
	local process = s_getTaskValue(uid,30421,TaskValue_Process)
	if process == TaskProcess_None then
		return VALUE_FAIL
	end
	for i = 42, 44 do
		if s_getTaskVar(uid,30421,i) == 0 then
			s_messageBox(uid,"有某位女神处,尚未核对货物,无法结束帝都押运任务！")
			return VALUE_FAIL
		end
	end
	local target = s_getTaskVar(uid,30421,12)
	local npcbaseid = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_BASE_ID)
	if target ~= npcbaseid then
		return VALUE_FAIL
	end

	return VALUE_OK
end

--显示完成任务对话
function RoleTaskInfo30421:ShowFinish(uid)
	local process = s_getTaskValue(uid,30421,TaskValue_Process)
	if process == TaskProcess_None then
		return VALUE_FAIL
	end
	--没有押运车，提示玩家放弃任务
	local guard = s_getGuardID(uid)
	if guard  == 0 then
		s_sysInfo(uid,"押运车丢失,任务失败，请删除任务后重新接取 ")
		return
	end
	for i = 42, 44 do
		if s_getTaskVar(uid,30421,i) == 0 then
			s_sysInfo(uid,"有某位女神处,您尚未核对货物,无法完成帝都押运任务！")
			return VALUE_FAIL
		end
	end
	s_resetTrafficType(uid)
	local msg = GetSubTaskFinishText(uid,30421,1)
	local call = "RoleTaskInfo30421:FinishTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"完成(3)",call,"离开(3)")
	return VALUE_OK
end

--避免CommonTaskReward
function RoleTaskInfo30421:TaskReward(uid, taskid, subtaskid)
end

--交付任务
function RoleTaskInfo30421:FinishTask(uid)
	if s_commitGuard(uid,30421) ~= VALUE_OK then
		s_sysInfo(uid,"押运车还没有护送回来！")
		return
	end

	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = self:GetTaskExp(uid) --获得经验
	--返还押金
	local foregift = RoleTaskInfo30421:GetTaskForegift(uid,level)

	--押运车被砸
	if s_getTaskVar(uid,30421,11) == 1 then
		foregift = 0
		exp = math.floor(exp * 0.6)
	end
	s_refreshExp(uid,exp,ExpType_OptionalTask,30421)

	exp = self:GetTaskBaseExp(uid,level)
	local worldlevel = s_getWorldLevel()
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countrystate = s_getCountryState(homeland)
	local rate = GetWorldLevelExp(level,worldlevel,countrystate)
	local worldexp = math.floor(exp*rate*0.01)
	if worldexp ~= 0 then
		s_refreshExp(uid,worldexp,ExpType_OptionalTask,30421)
		s_sysInfo(uid,"获得人类进程及国家状态经验加成:" .. worldexp)
	end

	for i = 30, 34 do
		if s_getTaskVar(uid,30421,i) ~= 0 then
			local memberid = s_getTaskVar(uid,30421,i - 10)
			if memberid ~= 0 and memberid ~= nil then
				local nineEntrylist = s_getNineEntry(SCENE_ENTRY_PLAYER,uid,20)
				for i = 1,table.getn(nineEntrylist),2 do
					if nineEntrylist[i] == SCENE_ENTRY_PLAYER and nineEntrylist[i+1] == memberid then
						local level = s_getValue(SCENE_ENTRY_PLAYER,memberid,VALUE_TYPE_LEVEL)
						if level then
							--押运者共享队长的运势，经验系数中只有等级受押运者自身等级影响，其他与队长相同
							local exp = self:GetTaskBaseExp(uid,level) * 2
							if foregift == 0 then
								exp = math.floor(exp * 0.6)
							end
							s_refreshExp(memberid,exp,ExpType_OptionalTask,30421)
							exp = self:GetTaskBaseExp(uid,level)
							local rate = GetWorldLevelExp(level,worldlevel,countrystate)
							local worldexp = math.floor(exp*rate*0.01)
							if worldexp ~= 0 then
								s_refreshExp(memberid,worldexp,ExpType_OptionalTask,30421)
								s_sysInfo(memberid,"获得人类进程及国家状态经验加成:" .. worldexp)
							end
						end
					end
				end
			end
		end
	end

	if foregift > 0 then
		s_addMoney(uid,MoneyType_Money,foregift,"帝都押运押金返还")
		for i = 30, 34 do
			if s_getTaskVar(uid,30421,i) ~= 0 then
				local memberid = s_getTaskVar(uid,30421,i - 10)
				if memberid ~= 0 and memberid ~= nil then
					--能取到等级说明玩家在线
					if s_getValue(SCENE_ENTRY_PLAYER,memberid,VALUE_TYPE_LEVEL) then
						--taskvar 61-64记录玩家交付的押金
						if s_getTaskVar(uid,30421,i + 30) then
							s_addMoney(memberid,MoneyType_Money,s_getTaskVar(uid,30421,i + 30),"帝都押运押金返还")
							s_sysInfo(memberid,"恭喜您协助的帝都押运车成功交付，押金退还！")
						end
					else
						if s_getTaskVar(uid,30421,i + 30) then
							s_sysMail(memberid,"帝都押运押金返还",s_getTaskVar(uid,30421,i + 30))
						end
					end
				end
			end
		end
	end

	FinishRoleTask(uid,30421)

	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,21) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,21)
	end
end

--获得对应的通行证
function RoleTaskInfo30421:CheckPassValid(uid,baseid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minlevel = s_getItemValue(uid,thisid,Item_Base_NeedLevel)
	local maxlevel = s_getItemValue(uid,thisid,Item_Base_MaxLevel)
	if level == nil or minlevel == nil or maxlevel == nil then return VALUE_FAIL end
	if level < minlevel or level >= maxlevel then
		return VALUE_FAIL
	end
	local passlist = {31145,31145,31146}
	if FindInTable(passlist,baseid) ~= VALUE_OK then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--获得胶囊对应的押运车颜色
function RoleTaskInfo30421:GetColorByCapsule(uid,itemid)
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

function RoleTaskInfo30421:OnDeleteTask(uid)
	s_clearEscort(uid)
	s_killGuard(uid)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,21)
end

--[[
--完成次数
function RoleTaskInfo30421:OnTaskDailyChanged(uid)
RefreshTaskDailyInfo(uid, 30063)
end
]]


--NPC菜单
AppendMenuToNpc(56018,"帝都押运 - 45体力（2倍经验）(2)","RoleTaskInfo30421:ShowAcceptWithItemTiled1_1($1)","RoleTaskInfo30421:CheckAcceptTiled1($1)")

--交付
AppendMenuToNpc(60911,"交付帝都押运(2)","RoleTaskInfo30421:ShowFinish($1)","RoleTaskInfo30421:CheckShowFinish($1)")
