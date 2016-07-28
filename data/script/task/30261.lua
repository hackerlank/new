--生存训练赏金
RoleTaskInfo30261 =
{
	ring = 2,
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
--30261-11 任务目标阶段

function RoleTaskInfo30261:GetTaskStage(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local stageid = s_getVar(uid,30261,11)
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
function RoleTaskInfo30261:GetTaskTraceText(uid)
	local stageid = RoleTaskInfo30261:GetTaskStage(uid)
	local info = "消灭"..self.content[stageid][6]
	info = string.format("body(%s)",info)
	info = parseToDesc(info)
	return info
end


--任务描述
function RoleTaskInfo30261:GetSubTaskDescText(uid,taskid,subtaskid)
	local text = [[title(制作生存训练卷轴)
	body(杀死%s后向goto(60559,5)回复。
    blankline()hot2(任务描述:)blankline()newline()   hot(    （与高于自身等级的其他玩家组队，击败高等级的生存训练所需怪物，依然可以完成任务）)
    完成本任务，可以获得1个赏金卷轴(生存)，赏金卷轴(生存)可以直接完成生存训练，赏金卷轴(生存)可交易换取银币。blankline())]]
	local stageid = RoleTaskInfo30261:GetTaskStage(uid)
	local targetinfo = self.content[stageid][6]
	text = string.format(text,targetinfo)
	text = parseToDesc(text)
	return text
end

--检查是否可以接受任务
function RoleTaskInfo30261:CheckAccept(uid)
	local process = s_getTaskValue(uid,30045,TaskValue_Process)
	if process ~= TaskProcess_None  then
		return VALUE_FAIL
	end
	local process = s_getTaskValue(uid,30261,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minLevel = s_getTaskValue(uid,30261,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,30261,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 30261) == VALUE_FAIL then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30261:ShowAccept(uid)
	local msg = GetSubTaskAcceptText(uid,30261,1)
	local addcall = "RoleTaskInfo30261:AddTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"接受(3)",addcall,"离开(3)")
end

function RoleTaskInfo30261:GetSubTaskAcceptText(uid,taskid,subtaskid)
	--确定收集内容
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local stageid = RoleTaskInfo30261:GetTaskStage(uid)
	local msg = [[body(   完成本任务，可以获得1个赏金卷轴(生存)，赏金卷轴(生存)可以直接完成生存训练，赏金卷轴(生存)可交易换取银币。blankline()   对于现在的你，击败%s正合适。blankline())]]
	local targetinfo = self.content[stageid][7]
	msg = string.format(msg,targetinfo,targetinfo)
	msg = parseToTalk(msg)
	return msg
end

--添加任务
function RoleTaskInfo30261:AddTask(uid)
	local stageid = RoleTaskInfo30261:GetTaskStage(uid)
	s_addVar(uid,30261,11,stageid)

	OnOfflineTaskExpEvent(uid,4)
	s_addVar(uid,8,112,s_getCurTime(TIME_ALLDAYS))

	local state = self.content[stageid][4]
	AddRoleSubTask(uid,30261,1,state,0)
end

--删除任务
function RoleTaskInfo30261:OnDeleteTask(uid)
	s_addVar(uid,30261,11,0)
end

--检查是否显示完成菜单
function RoleTaskInfo30261:CheckFinish(uid)
	local process = s_getTaskValue(uid,30261,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_OK
	end
	return VALUE_FAIL
end

--显示交付任务菜单
function RoleTaskInfo30261:ShowFinish(uid)
	local process = s_getTaskValue(uid,30261,TaskValue_Process)
	if process == TaskProcess_Doing then
		local doing = s_getTaskValue(uid,30261,TaskValue_PromptText)
		doing = trim(doing)
		ShowNpcMenuBottomStyle(uid,doing,"离开(5)")
	elseif process == TaskProcess_CanDone then
		local msg = GetSubTaskFinishText(uid,30261,1)
		local str = "RoleTaskInfo30261:FinishTask($1)"
		ShowNpcMenuBottomStyle(uid,msg,"完成(3)",str,"离开(3)")
	end
end

--交付任务
function RoleTaskInfo30261:FinishTask(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if  level >= 61 and level < 71 then
		s_addItem(uid,31391,0,1,0,"","RoleTaskInfo30261:FinishTask")
	elseif  level >= 71 and level < 81 then
		s_addItem(uid,31392,0,1,0,"","RoleTaskInfo30261:FinishTask")
	elseif  level >= 81 and level < 91 then
		s_addItem(uid,31393,0,1,0,"","RoleTaskInfo30261:FinishTask")
	elseif  level >= 91 and level < 101 then
		s_addItem(uid,31394,0,1,0,"","RoleTaskInfo30261:FinishTask")
	elseif  level >= 101 and level < 111 then
		s_addItem(uid,31565,0,1,0,"","RoleTaskInfo30261:FinishTask")
	elseif  level >= 111 and level < 121 then
		s_addItem(uid,31566,0,1,0,"","RoleTaskInfo30261:FinishTask")
	elseif  level >= 121 and level < 131 then
		s_addItem(uid,31567,0,1,0,"","RoleTaskInfo30261:FinishTask")
	elseif  level >= 131 and level < 141 then
		s_addItem(uid,31568,0,1,0,"","RoleTaskInfo30261:FinishTask")
	elseif  level >= 141 and level < 151 then
		s_addItem(uid,31569,0,1,0,"","RoleTaskInfo30261:FinishTask")
	end
	s_addVar(uid,30261,11,0)
	FinishRoleTask(uid,30261)
end
--杀怪回调
function RoleTaskInfo30261:OnMonsterDead(uid,npcid)
	local process = s_getTaskValue(uid,30261,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return
	end
	local check = VALUE_FAIL
	local stageid = RoleTaskInfo30261:GetTaskStage(uid)
	for index = 1,table.getn(self.content) do
		if stageid == index then
			check = VALUE_OK
		end
		local target = self.content[index][5]
		if target == nil then
			return
		end
		if check == VALUE_OK and target == npcid then
			AddRoleTaskOperate(uid,30261)
			return
		end
	end
end
--注册怪物回调
function RoleTaskInfo30261:RegisterMonsterCall()
	for i = 1, table.getn(self.content) do
		local call = string.format("RoleTaskInfo30261:OnMonsterDead($1,%d)",self.content[i][5])
		RegisterNpcDeadEvent(self.content[i][5],call)
	end
end
RoleTaskInfo30261:RegisterMonsterCall()

--未接取状态说明
function RoleTaskInfo30261:GetTaskIntroText(uid)
	local msg =
		[[
title(生存训练)
body(
blankline()   据说goto(60559,5)正在发布击败大量妖魔的任务。
blankline()   每天最多可完成1次，hot(周一完成该任务可获得额外50%的经验加成)。周一完成任务所获得的数字，将在周六抽奖时使用。
blankline()   exp(大量)
)
]]
	return parseToDesc(msg)
end

--NPC菜单
AppendMenuToNpc(60559,"制作生存训练卷轴(2)","RoleTaskInfo30261:ShowAccept($1)","RoleTaskInfo30261:CheckAccept($1)")
AppendMenuToNpc(60559,"制作生存训练卷轴[完成](2)","RoleTaskInfo30261:ShowFinish($1)","RoleTaskInfo30261:CheckFinish($1)")
