RoleTaskInfo33523 =
{
	subtask1 =
	{
		dropitem =
		{
			{16006, 3, 55064, 0, 10, "1-1"},
			{16007, 3, 55064, 0, 10, "1-1"},
			{16008, 3, 55064, 0, 10, "1-1"},
			{16009, 3, 55064, 0, 10, "1-1"},
			{16010, 3, 55064, 0, 10, "1-1"},
			{16011, 3, 55064, 0, 10, "1-1"},
			{16012, 3, 55064, 0, 10, "1-1"},
			{16013, 3, 55064, 0, 10, "1-1"},
			{16014, 3, 55064, 0, 10, "1-1"},
			{16015, 3, 55064, 0, 10, "1-1"},
			{16016, 3, 55064, 0, 10, "1-1"},
			{16017, 3, 55064, 0, 10, "1-1"},
			{16018, 3, 55064, 0, 10, "1-1"},
			{16019, 3, 55064, 0, 10, "1-1"},
			{16020, 3, 55064, 0, 10, "1-1"},
			{16021, 3, 55064, 0, 10, "1-1"},
			{16022, 3, 55064, 0, 10, "1-1"},
			{16023, 3, 55064, 0, 10, "1-1"},
			{16024, 3, 55064, 0, 10, "1-1"},
			{16025, 3, 55064, 0, 10, "1-1"},
			{16026, 3, 55064, 0, 10, "1-1"},
			{16027, 3, 55064, 0, 10, "1-1"},
			{16028, 3, 55064, 0, 10, "1-1"},
			{16029, 3, 55064, 0, 10, "1-1"},
			{16030, 3, 55064, 0, 10, "1-1"},
		},
		autofinish = false,
		task = {s_taskKillNpcDrop, {0,0}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{55064,10,"删除魔核"}},
		},
	},
	taskID = 33523,
}

function RoleTaskInfo33523:checkAccept(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo33523:AddTask(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_None then
		if AddRoleSubTask(uid,33523,1,10,0) ~= VALUE_OK then
			return VALUE_FAIL
		end
	end
	local desc = GetSubTaskDescText(uid,self.taskID,1)
	s_setTaskValue(uid,33523,TaskValue_Desc,desc,1)
	return VALUE_OK
end

--是否显示交付任务
function RoleTaskInfo33523:checkFinish(uid)
	local process = s_getTaskValue(uid,33523,TaskValue_Process)
	if process == TaskProcess_None or process == nil then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--显示完成任务对话
function RoleTaskInfo33523:ShowFinish(uid)
	local process = s_getTaskValue(uid,33523,TaskValue_Process)
	if process == TaskProcess_Doing then
		local msg = [[快去完成任务吧]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
		return
	end
	local msg = GetSubTaskFinishText(uid,33523,1)
	local call = "RoleTaskInfo33523:FinishTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"完成(3)",call,"离开(3)")
end

function RoleTaskInfo33523:FinishTask(uid)
	s_addMoney(uid,MoneyType_Money,100,"完成委托任务，交还押金")
	s_addMoney(uid,MoneyType_Money,200,"完成委托任务，任务奖励")
	local user_level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	s_refreshExp(uid,math.floor((50+0.1*user_level^2.2)*60),ExpType_OptionalTask,33523)
	FinishRoleTask(uid,33523)
	s_finishDeputeTask(uid,2,1)
end

function RoleTaskInfo33523:OnDeleteTask(uid)
	s_finishDeputeTask(uid,2,0)
end

AppendMenuToNpc(354,"魔核收集(2)","RoleTaskInfo33523:ShowFinish($1)","RoleTaskInfo33523:checkFinish($1)")
