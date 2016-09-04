--生存训练
RoleTaskInfo30043 =
{
	ring = 1,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	content =
	{
		--minlevel,maxlevel,expmode,state,monster
		{21, 25, 200, 300, 16006, "300个goto(16006,106)", "300个咕噜兵"},
		{26, 30, 200, 300, 16007, "300个goto(16007,132)", "300个朋克僵尸"},
		{31, 35, 120, 300, 16008, "300个goto(16008,132)", "光明地宫一层的300个绿灯侠"},
		{36, 40, 120, 300, 16009, "300个goto(16009,133)", "光明地宫一层的300个利爪幽魂豹"},
		{41, 45, 160, 350, 16010, "350个goto(16010,133)", "光明地宫二层的350个背背猪"},
		{46, 50, 160, 350, 16001, "350个goto(16001,134)", "光明地宫三层的350个铜纹蝙蝠"},
		{51, 55, 200, 400, 16011, "400个goto(16011,145)", "光明地宫四层的400个黑魔枪兵"},
		{56, 60, 200, 400, 16012, "400个goto(16012,145)", "光明地宫四层的400个幽冥歌者"},
		{61, 65, 250, 450, 16013, "450个goto(16013,135)", "军乐地宫一层的450个地穴鹰龙"},
		{66, 70, 250, 450, 16014, "450个goto(16014,136)", "军乐地宫二层450个地底林妖"},
		{71, 75, 350, 450, 16015, "450个goto(16015,137)", "军乐地宫三层450个暗月毒蜂"},
		{76, 80, 350, 450, 16016, "450个goto(16016,138)", "军乐地宫四层450个深渊魔牛"},
		{81, 85, 450, 450, 16017, "450个goto(16017,139)", "军乐地宫五层450个暗夜魔将"},
		{86, 90, 450, 450, 16018, "450个goto(16018,140)", "军乐地宫六层450个阴影异狼"},
		{91, 95, 550, 450, 16019, "450个goto(16019,141)", "军乐地宫七层450个魔化匹斯"},
		{96, 100, 550,450, 16020, "450个goto(16020,142)", "军乐地宫八层450个黑化噜噜族"},
		{101, 105, 550,450, 16021, "450个goto(16021,173)", "军乐地宫九层450个黑化噜噜族"},
		{101, 110, 550,450, 16022, "450个goto(16022,173)", "军乐地宫九层450个黑化噜噜族"},
		{111, 115, 550,450, 16023, "450个goto(16023,174)", "军乐地宫十层450个黑化噜噜族"},
		{111, 120, 550,450, 16024, "450个goto(16024,174)", "军乐地宫十层450个黑化噜噜族"},
		{121, 125, 550,450, 16025, "450个goto(16025,175)", "军乐地宫十一层450个黑化噜噜族"},
		{121, 130, 550,450, 16026, "450个goto(16026,175)", "军乐地宫十一层450个黑化噜噜族"},
		{131, 135, 550,450, 16027, "450个goto(16027,176)", "军乐地宫十二层450个黑化噜噜族"},
		{131, 140, 550,450, 16028, "450个goto(16028,176)", "军乐地宫十二层450个黑化噜噜族"},
		{141, 145, 550,450, 16029, "450个goto(16029,177)", "军乐地宫十三层450个黑化噜噜族"},
		{141, 150, 550,450, 16030, "450个goto(16030,177)", "军乐地宫十三层450个黑化噜噜族"},
	},
}

--玩家变量
--30043-11 任务目标阶段
function RoleTaskInfo30043:GetTaskStage(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local stageid = s_getVar(uid,30043,11)
	if stageid == 0 then
		for i = 1, table.getn(self.content) do
			if level >= self.content[i][1] and level <= self.content[i][2] then
				stageid = i
				break;
			end
		end
	end
	return stageid
end
--任务追踪
function RoleTaskInfo30043:GetTaskTraceText(uid)
	local stageid = RoleTaskInfo30043:GetTaskStage(uid)
	local info = "消灭"..self.content[stageid][6]
	info = string.format("body(%s)",info)
	info = parseToDesc(info)
	return info
end

--任务经验
function RoleTaskInfo30043:GetTaskBaseExp(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	--阶段系数*(30+人物等级^1.5)
	local stageid = RoleTaskInfo30043:GetTaskStage(uid)
	if stageid == 0 then  stageid = 1 end
	local expmode = self.content[stageid][3]
	local exp = math.floor(expmode * (30 + level^1.5))
	return exp
end

function RoleTaskInfo30043:GetTaskExp(uid)
	local exp = self:GetTaskBaseExp(uid)
	local tiledtimes = 1
	if s_getVar(uid, 30043, TvarIndex_TiledMode) == 1 then
		if s_getVar(uid, 30043, TvarIndex_TiledTimes) == 1 then tiledtimes = 1.5 end
		if s_getVar(uid, 30043, TvarIndex_TiledTimes) == 3 then tiledtimes = 2.5 end
	end
	exp = math.floor(exp * tiledtimes)
	return exp
end
--任务描述
function RoleTaskInfo30043:GetSubTaskDescText(uid,taskid,subtaskid)
	local text = [[title(生存训练)
	body(    通过goto(123,3)传送进入光明地宫，杀死%s后向goto(60000,3)回复。（您可以通过入口处的传送NPC传送至目标层）newline()   hot(    （与高于自身等级的其他玩家组队，击败高等级的生存训练所需怪物，依然可以完成任务）)
    blankline()hot2(任务描述:)blankline()
    要想在这个世界活下去，只有在敌人战胜你之前先战胜现在的你！只有不断的向前，才能最终将世界踩在脚下！blankline())]]
	local stageid = RoleTaskInfo30043:GetTaskStage(uid)
	local targetinfo = self.content[stageid][6]
	text = string.format(text,targetinfo)
	text = parseToDesc(text)
	return text
end

--检查是否可以接受任务
function RoleTaskInfo30043:CheckAccept(uid)
	local process = s_getTaskValue(uid,30043,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local process = s_getTaskValue(uid,30260,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minLevel = s_getTaskValue(uid,30043,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,30043,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 30043) == VALUE_FAIL then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30043:CheckAcceptTiled1(uid)
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_USABLE_TILED_POINT) < 35 then
		return VALUE_FAIL
	end
	return self:CheckAccept(uid)
end

function RoleTaskInfo30043:CheckAcceptTiled3(uid)
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_USABLE_TILED_POINT) < 105 then
		return VALUE_FAIL
	end
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL) < 61 then
		return VALUE_FAIL
	end
	return self:CheckAccept(uid)
end

function RoleTaskInfo30043:ShowAccept(uid)
	local msg = GetSubTaskAcceptText(uid,30043,1)
	local addcall = "RoleTaskInfo30043:AddTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"接受(3)",addcall,"离开(3)")
end

function RoleTaskInfo30043:ShowAcceptTiled1_1(uid)
	s_addVar(uid, 30043, TvarIndex_TiledTimes, 1)
	s_addVar(uid, 30043, TvarIndex_TiledMode, 1)
	self:ShowAccept(uid)
end

function RoleTaskInfo30043:ShowAcceptTiled1_2(uid)
	s_addVar(uid, 30043, TvarIndex_TiledTimes, 1)
	s_addVar(uid, 30043, TvarIndex_TiledMode, 2)
	self:ShowAccept(uid)
end

function RoleTaskInfo30043:ShowAcceptTiled3_1(uid)
	s_addVar(uid, 30043, TvarIndex_TiledTimes, 3)
	s_addVar(uid, 30043, TvarIndex_TiledMode, 1)
	self:ShowAccept(uid)
end


function RoleTaskInfo30043:GetSubTaskAcceptText(uid,taskid,subtaskid)
	--确定收集内容
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local stageid = RoleTaskInfo30043:GetTaskStage(uid)
	local msg = [[body(   要想在这个世界活下去，只有在敌人战胜你之前先战胜现在的你！只有不断的向前，才能最终将世界踩在脚下！blankline()   对于现在的你，击败%s正合适。blankline())]]
	local targetinfo = self.content[stageid][7]
	msg = string.format(msg,targetinfo,targetinfo)
	msg = parseToTalk(msg)
	return msg
end

function RoleTaskInfo30043:OnAcceptTask(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 101 then
		local expmedal =  level * 3
		s_addTaskVar(uid,30043,MvarIndex_GrowthMedal,expmedal)
	end
end

--添加任务
function RoleTaskInfo30043:AddTask(uid)
	local stageid = RoleTaskInfo30043:GetTaskStage(uid)
	s_addVar(uid,30043,11,stageid)

	OnOfflineTaskExpEvent(uid,3)
	s_addVar(uid,8,102,s_getCurTime(TIME_ALLDAYS))

	local state = self.content[stageid][4]
	AddRoleSubTask(uid,30043,1,state,0)

	--扣体力
	if s_getVar(uid, 30043, TvarIndex_TiledTimes) == 1 then
		s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 35)
	elseif s_getVar(uid, 30043, TvarIndex_TiledTimes) == 3 then
		s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 105)
	end
end

--删除任务
function RoleTaskInfo30043:OnDeleteTask(uid)
	s_addVar(uid,30043,11,0)
end

--检查是否显示完成菜单
function RoleTaskInfo30043:CheckFinish(uid)
	local process = s_getTaskValue(uid,30043,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_OK
	end
	return VALUE_FAIL
end

--显示交付任务菜单
function RoleTaskInfo30043:ShowFinish(uid)
	local process = s_getTaskValue(uid,30043,TaskValue_Process)
	if process == TaskProcess_Doing then
		local doing = s_getTaskValue(uid,30043,TaskValue_PromptText)
		doing = trim(doing)
		ShowNpcMenuBottomStyle(uid,doing,"离开(5)")
	elseif process == TaskProcess_CanDone then
		local msg = GetSubTaskFinishText(uid,30043,1)
		local str = "RoleTaskInfo30043:FinishTask($1)"
		ShowNpcMenuBottomStyle(uid,msg,"完成(1)",str,"取消(1)")
	end
end

--避免CommonTaskReward
function RoleTaskInfo30043:TaskReward(uid, taskid, subtaskid)
end

--交付任务
function RoleTaskInfo30043:FinishTask(uid)
	s_addSevenDay(uid,3)

	local exp = GetTaskExp(uid,30043)
	s_refreshExp(uid,exp,ExpType_OptionalTask,30043)

	exp = self:GetTaskBaseExp(uid)
	local offline = math.floor(exp * s_getVar(uid,8,2)*0.1)
	if offline ~= 0 then
		s_addVar(uid,8,2,0)
		s_sysInfo(uid,"获得经验累积补偿:" .. offline,ChatPos_MsgBox)
		s_refreshExp(uid,offline,ExpType_OptionalTask,30043)
	end

	local weekday = s_getCurTime(TIME_CURWDAYS)
	if weekday == 1 then
		local expetra = exp * 0.5
		s_refreshExp(uid,expetra,ExpType_OptionalTask,30043)
		s_sysInfo(uid,"生存训练日经验加成:" ..math.floor(expetra))
		s_addLuckyCard(uid,1)
	end

	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local worldlevel = s_getWorldLevel()
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countrystate = s_getCountryState(homeland)
	local rate = GetWorldLevelExp(level,worldlevel,countrystate)
	local worldexp = math.floor(exp*rate*0.01)
	if worldexp ~= 0 then
		s_refreshExp(uid,worldexp,ExpType_OptionalTask,30043)
		s_sysInfo(uid,"获得人类进程及国家状态经验加成:" .. worldexp)
	end

	--体力宝箱
	if s_getVar(uid, 30043, TvarIndex_TiledMode) == 2 then
		s_addItem(uid,29303,0,1,0,"1-1","RoleTaskInfo30043")
	end
	--发放获得经验的道具
	Dealtaskexpitem(uid)
	--活力点
	s_addVigorPoint(uid, 16)
	s_debugUser(uid,"完成生存训练任务，获得16点活力点")

	local expmedal =  level * 3
	if level < 101 then
		s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_GROWTH_MEDAL,expmedal)
	end
	s_addVar(uid,30043,11,0)
	FinishRoleTask(uid,30043)
	--端午活动
	local process = s_getTaskValue(uid,30310,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30310)
	end
	--奥运活动
	local process = s_getTaskValue(uid,30330,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30330)
	end
end

--完成次数
function RoleTaskInfo30043:OnTaskDailyChanged(uid)
	RefreshTaskDailyInfo(uid, 30065)
end

--杀怪回调
function RoleTaskInfo30043:OnMonsterDead(uid,npcid)
	local process = s_getTaskValue(uid,30043,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return
	end
	local check = VALUE_FAIL
	local stageid = RoleTaskInfo30043:GetTaskStage(uid)
	for index = 1,table.getn(self.content) do
		if stageid == index then
			check = VALUE_OK
		end
		local target = self.content[index][5]
		if target == nil then
			return
		end
		if check == VALUE_OK and target == npcid then
			AddRoleTaskOperate(uid,30043)
			return
		end
	end
end
--注册怪物回调
function RoleTaskInfo30043:RegisterMonsterCall()
	for i = 1, table.getn(self.content) do
		local call = string.format("RoleTaskInfo30043:OnMonsterDead($1,%d)",self.content[i][5])
		RegisterNpcDeadEvent(self.content[i][5],call)
	end
end
RoleTaskInfo30043:RegisterMonsterCall()

--未接取状态说明
function RoleTaskInfo30043:GetTaskIntroText(uid)
	local msg =
		[[
title(生存训练)
body(
blankline()   据说goto(60000,3)正在发布击败大量妖魔的任务。
blankline()   每次接取生存训练任务需消耗35体力值，可获取1.5倍经验或丰厚道具奖励。
blankline()   60级之后，接取任务消耗3倍体力值，可获取2.5倍经验。
blankline()   每天最多可完成1次，hot(周一完成该任务可获得额外50%的经验加成)。周一完成任务所获得的数字，将在周六抽奖时使用。
blankline()   exp(大量)
)
]]   
	return parseToDesc(msg)
end

--NPC菜单
--AppendMenuToNpc(60000,"生存训练(2)","RoleTaskInfo30043:ShowAccept($1)","RoleTaskInfo30043:CheckAccept($1)")
AppendMenuToNpc(60000,"生存训练- 35体力（1.5倍经验）(2)","RoleTaskInfo30043:ShowAcceptTiled1_1($1)","RoleTaskInfo30043:CheckAcceptTiled1($1)")
AppendMenuToNpc(60000,"生存训练- 35体力（1倍经验+宝箱）(2)","RoleTaskInfo30043:ShowAcceptTiled1_2($1)","RoleTaskInfo30043:CheckAcceptTiled1($1)")
AppendMenuToNpc(60000,"生存训练- 105体力（2.5倍经验）(2)","RoleTaskInfo30043:ShowAcceptTiled3_1($1)","RoleTaskInfo30043:CheckAcceptTiled3($1)")
AppendMenuToNpc(60000,"生存训练(2)","RoleTaskInfo30043:ShowFinish($1)","RoleTaskInfo30043:CheckFinish($1)")
