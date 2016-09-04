--情缘任务
RoleTaskInfo30265 =
{
	ring = 2,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},
}

function RoleTaskInfo30265:CheckAccept(uid)
	local process = s_getTaskValue(uid,30265,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 30265) == VALUE_FAIL then
		return VALUE_FAIL
	end
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_USABLE_TILED_POINT) < 35 then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30265:CheckAccept1(uid)
	local process = s_getTaskValue(uid,30265,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 30265) == VALUE_FAIL then
		return VALUE_FAIL
	end
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_USABLE_TILED_POINT) < 105 then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30265:OnDeleteTask(uid)
	--关闭界面
	if s_getField(uid, UserVar_LovePartner) ~= 0 then
		s_closeloveinterface(s_getField(uid, UserVar_LovePartner),uid)
		s_closeloveinterface(uid,uid)
	end
	s_closeloveinterface(uid,0)
	if s_getField(uid, UserVar_LovePartner) ~= 0 then
		s_setField(s_getField(uid, UserVar_LovePartner),UserVar_LoveInviter,0)
	end
	s_setField(uid,UserVar_LovePartner,0)
	s_addVar(uid,30265,11,0)
	s_addVar(uid,30265,12,0)
end

function RoleTaskInfo30265:AddTask(uid,physical)
	s_addVar(uid,30265,12,0)
	AddRoleSubTask(uid,30265,1,1,0)

	--扣除体力
	if s_getVar(uid, 30265, TvarIndex_TiledTimes) == 1 then
		s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 35)
	elseif s_getVar(uid, 30265, TvarIndex_TiledTimes) == 2 then
		s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 105)
	end

	OnOfflineTaskExpEvent(uid,7)
	s_addVar(uid,8,104,s_getCurTime(TIME_ALLDAYS))

	local meth = s_getVar(uid,30265,11)
	ShowAddQingYuanDialog(uid,meth)
	s_addItem(uid,31482,0,1,0,"1-1","情缘任务道具")
end

function RoleTaskInfo30265:OnAcceptTask(uid)
end

function RoleTaskInfo30265:FinishTask(uid)
	local curRound, curRing = GetTaskCurRoundAndRing(uid, 30265)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = math.floor(125*(50+0.1*level^2.2))
	local timerate = ((curRing-1)*0.2+1)
	if s_getVar(uid, 30265, TvarIndex_TiledTimes) == 1 then
		if s_getVar(uid,30265,11) == 1 then
			exp = math.floor(exp * timerate)
		elseif s_getVar(uid,30265,11) == 2 then
			exp = math.floor(exp * timerate * 1.5)
		end
	elseif s_getVar(uid, 30265, TvarIndex_TiledTimes) == 2 then
		if s_getVar(uid,30265,11) == 1 then
			exp = math.floor(exp * timerate * 2.5)
		elseif s_getVar(uid,30265,11) == 2 then
			exp = math.floor(exp * timerate * 3.75)
		end
	end


	--周三情缘日，奖励情缘卡
	local expetra = 0
	local weekday = s_getCurTime(TIME_CURWDAYS)
	if weekday == 3 then
		s_addLuckyCard(uid,3)
		expetra = exp * 0.5
		s_refreshExp(uid,expetra,ExpType_OptionalTask,30265)
		s_sysInfo(uid,"情缘日经验加成:" ..math.floor(expetra))
	end
	s_refreshExp(uid,exp,ExpType_LoveTask,30265)
	s_sysInfo(uid,"完成情缘任务获得大额经验:" .. math.floor(exp+expetra)..",在音乐盒存在的3分钟内还可获得大量经验，千万不可错过~",ChatPos_MsgBox)

	--离线经验
	local offline = s_getVar(uid,8,4)*0.1
	if offline ~= 0 then
		local offline_exp = math.floor(125*(50+0.1*level^2.2))
		s_addVar(uid,8,4,0)
		if s_getVar(uid,30265,11) == 1 then
			offline_exp = offline_exp * offline
		elseif s_getVar(uid,30265,11) == 2 then
			offline_exp = offline_exp * offline	* 1.5
		end
		s_refreshExp(uid,offline_exp,ExpType_OptionalTask,30265)
		s_sysInfo(uid,"获得经验累积补偿:" .. math.floor(offline_exp),ChatPos_MsgBox)
	end
	--节日活动
	--s_addItem(uid,31541,3,1,0,"1-1","情人元宵节日活动")

	s_addVar(uid,30265,11,0)
	s_addVar(uid,30265,12,0)
	FinishRoleTask(uid,30265)
	--活力点
	s_addVigorPoint(uid,6)
	s_debugUser(uid,"完成情缘任务，获得6点活力点")
	--发放获得经验的道具
	Dealtaskexpitem(uid)
	--成就
	AddAchieveTaskOperate(uid,40007,1)
	--活跃度--玩家看不到
	s_addActivePoint(uid,ActivePointType_Task,25)
	--关闭界面
	if s_getField(uid, UserVar_LovePartner) ~= 0 then
		s_closeloveinterface(s_getField(uid, UserVar_LovePartner),uid)
		s_closeloveinterface(uid,uid)
	end
	if s_getField(uid, UserVar_LovePartner) ~= 0 then
		s_setField(s_getField(uid, UserVar_LovePartner),UserVar_LoveInviter,0)
	end
	s_setField(uid,UserVar_LovePartner,0)
	--命运女神的垂青
	local process = s_getTaskValue(uid,30556,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30556)
	end
	local process = s_getTaskValue(uid,30566,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30566)
	end
	local process = s_getTaskValue(uid,30576,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30576)
	end
	local process = s_getTaskValue(uid,30586,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30586)
	end
	local process = s_getTaskValue(uid,30616,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30616)
	end
	local process = s_getTaskValue(uid,30636,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30636)
	end
end

function RoleTaskInfo30265:GetSubTaskAcceptText(uid,taskid,subtaskid)
end

function RoleTaskInfo30265:GetTaskDailyInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 30265)
	--dayNum
	table.insert(outvec, s_getTaskValue(uid,30265,TaskValue_DayNum) or 0)
	--dayDoneNum
	local daydonenum = GetTaskDayDoneNum(uid,30265)
	table.insert(outvec, daydonenum)
	--weekNum
	table.insert(outvec, 0)
	--weekDoneNum
	table.insert(outvec, 0)
end
