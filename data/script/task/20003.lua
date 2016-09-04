RoleTaskInfo20003 =
{
	ring = 1,

	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkCorps,{}},
			{s_checkCorpsState,{0}},
			{s_checkInOwnCorpsBase,{}},
			{s_checkRoleLevel,{20,0}},
			{s_checkCorpsEventStep,{CpEv_HouQin,EventStep_Run}},
		},

		onaccept =
		{
			{s_actionTaskCorpsGlory,{2}},
			{s_actionTaskAllGlory,{2}},
		},

		task = {s_taskCustom, {45113, 0, 1, 1}},
	},

	-- 任务时间 单位：秒
	taskTime = 900,

	-- 颜色概率及经验倍率
	taskColor = {{39,1}, {79,1.5}, {94,2}, {99,3}, {100,6}},
}


--任务经验计算
--50*(0.4+MIN(打怪数量,800)/500)*(50+0.1*(25+10*(团等级-1))^2.2)*颜色倍率
--新--经验公式：75*(0.4+MIN(打怪数量,400)/250)*(50+0.1*max(30+10*(团等级-1),玩家等级)^2.2)*颜色倍率
function RoleTaskInfo20003:GetTaskExp(uid)
	local taskid = 20003
	local taskProcess = s_getTaskValue(uid,taskid,TaskValue_Process)
	if taskProcess ~= TaskProcess_CanDone then
		return 0
	end
	local num = s_getTaskVar(uid,taskid,12)
	local slevel = s_getTaskVar(uid,taskid,14)
	local color = s_getTaskValue(uid,taskid,TaskValue_Color)
	local rate = self.taskColor[color+1][2]
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	return math.floor(75*(0.4+math.min(num,400)/250) * (50 + 0.1*math.max(30+10*(slevel-1),level)^2.2)*rate)
end


--任务简介
function RoleTaskInfo20003:GetTaskIntroText(uid)
	local msg = [[title(团训练任务)body(blankline()   团训练任务由hot(团长)花费一定hot(团资金)后发布,时间限制hot(1小时),根据团成员杀死怪物的hot(数量),可以获得相应的经验。blankline()exp(大量))]]
	return parseToDesc(msg)
end

--任务描述
function RoleTaskInfo20003:GetSubTaskDescText(uid, taskid, subtaskid)
	local taskid = 20003

	--脚本中或者表格中定义
	local text = nil
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
		text = subinfo.desctext
	end

	if text == nil or text == "" then return end

	--更新最小等级
	local minlevel = s_getTaskVar(uid,taskid,11)
	text = string.gsub(text,"$MINLEVEL",minlevel)

	--更新经验
	local exp = self:GetTaskExp(uid)
	if exp > 0 then
		s_addTaskVar(uid, taskid, MvarIndex_Exp, exp)
	end

	return text
end


--任务接取时的操作：
function RoleTaskInfo20003:OnAcceptTask(uid)
	local taskid = 20003

	--刷颜色
	local color = TaskColor_White
	local rand = math.random(1,100)
	for i=1, #self.taskColor do
		if rand < self.taskColor[i][1] then
			color = i-1
			break;
		end
	end
	local corps = s_getCorpsId(uid)
	local occpy = s_getCorpsField(corps,CorpVar_OccupyID)
	if occpy ~= 0 then
		if color < TaskColor_Yellow then
			color = TaskColor_Yellow
		end
	end

	s_setTaskValue(uid, taskid, TaskValue_Color, color)

	--怪物数
	s_addTaskVar(uid,taskid,12,0)

	--任务完成时间
	s_addTaskVar(uid,taskid,13,s_getCurTime(TIME_ALLSECONDS)+self.taskTime)

	--当前团等级
	local slevel = s_getCorpsField(corps, CorpVar_Level)
	if slevel == nil or slevel == 0 then
		slevel = 1
	end
	s_addTaskVar(uid,taskid,14,slevel)

	--怪物最小等级
	local minlevel = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if minlevel < 21 then minlevel = 21 end
	minlevel = minlevel - 5
	s_addTaskVar(uid,taskid,11,minlevel)

	--玩家增加buff
	s_addbuff(SCENE_ENTRY_PLAYER,uid,16,1,self.taskTime,taskid)
end


--删除任务
function RoleTaskInfo20003:OnDeleteTask(uid)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,16)
	s_subField(uid,UserVar_Offer,1)
	local corps = s_getCorpsId(uid)
	if corps > 0 then
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		if name == nil or name == "" then
			name = "未知角色名"
		end
		local subnum = 1
		local money = s_getCorpsField(corps,CorpVar_Money)
		if money > 0 then
			subnum = subnum * 10
			if money < subnum then subnum = money end
			s_subCorpsField(corps,CorpVar_Money,subnum)
			local fun,str = s_getFunction(uid,Relation_Corps)
			s_corpsInfo(corps, str .. "[" .. name .. "]删除团训练任务扣除".. subnum .."团资金")
		end
	end
end


--完成检查
function RoleTaskInfo20003:OnFinishCheck(uid, taskid, subtaskid)
	--超出任务时间以后才显示
	local endtime = s_getTaskVar(uid,taskid,13)
	local curtime = s_getCurTime(TIME_ALLSECONDS)
	if curtime < endtime then
		return VALUE_FAIL
	end
	return VALUE_OK
end


--任务奖励
function RoleTaskInfo20003:TaskReward(uid, taskid, subtaskid)
	--更新经验
	local exp = self:GetTaskExp(uid)
	if exp > 0 then
		s_addTaskVar(uid, 20003, MvarIndex_Exp, exp)
	end

	--普通奖励
	CommonTaskReward(uid, 20003)

	--活力点
	s_addVigorPoint(uid, 6)
	s_debugUser(uid,"完成团训练任务，获得6点活力点")
	if s_getVar(uid,130,1) == 0 then
		s_addVar(uid,130,1,1);
		s_addVar(uid,130,100,s_getVar(uid,130,100)+1)
		s_debugUser(uid,"团活力，团训练，参与度：1")
	end
end


--刷怪回调
function RoleTaskInfo20003:AddRoleTaskOperate(uid,level)
	local taskid = 20003
	local needLevel = s_getTaskVar(uid,taskid,11)
	if needLevel == nil or needLevel == 0 then
		return
	end
	local taskProcess = s_getTaskValue(uid,taskid,TaskValue_Process)
	if taskProcess ~= TaskProcess_CanDone then
		return
	end
	local endtime = s_getTaskVar(uid,taskid,13)
	local curtime = s_getCurTime(TIME_ALLSECONDS)
	if curtime >= endtime then
		return
	end
	if needLevel <= level then
		local num = s_getTaskVar(uid, taskid, 12)
		num = num + 1
		s_addTaskVar(uid, taskid, 12, num)
		s_sysInfo(uid, "团训练任务 已杀死" .. num .. "个怪物", ChatPos_Sys + ChatPos_Important)
	end
end

--注册怪物死亡事件
RegisterNpcDeadLevelEvent("RoleTaskInfo20003:AddRoleTaskOperate($1,$2)")
