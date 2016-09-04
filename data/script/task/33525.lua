--沙场血战
RoleTaskInfo33525 =
{
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	taskID = 33525,
}

function RoleTaskInfo33525:checkAccept(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo33525:AddTask(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_None then
		if AddRoleSubTask(uid,33525,1,100,0) ~= VALUE_OK then
			return VALUE_FAIL
		end
	end
	local desc = GetSubTaskDescText(uid,self.taskID,1)
	s_setTaskValue(uid,33525,TaskValue_Desc,desc,1)
	return VALUE_OK
end

--是否显示交付任务
function RoleTaskInfo33525:checkFinish(uid)
	local process = s_getTaskValue(uid,33525,TaskValue_Process)
	if process == TaskProcess_None or process == nil then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--显示完成任务对话
function RoleTaskInfo33525:ShowFinish(uid)
	local process = s_getTaskValue(uid,33525,TaskValue_Process)
	if process == TaskProcess_Doing then
		local msg = [[快去完成任务吧]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
		return
	end
	local msg = GetSubTaskFinishText(uid,33525,1)
	local call = "RoleTaskInfo33525:FinishTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"完成(3)",call,"离开(3)")
end

function RoleTaskInfo33525:FinishTask(uid)
	s_addMoney(uid,MoneyType_Money,200,"完成委托任务，交还押金")
	s_addMoney(uid,MoneyType_Money,400,"完成委托任务，任务奖励")
	local user_level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	s_refreshExp(uid,math.floor((50+0.1*user_level^2.2)*120),ExpType_OptionalTask,33525)
	FinishRoleTask(uid,33525)
	s_finishDeputeTask(uid,4,1)
end

function RoleTaskInfo33525:OnDeleteTask(uid)
	s_finishDeputeTask(uid,4,0)
end

AppendMenuToNpc(354,"沙场血战(2)","RoleTaskInfo33525:ShowFinish($1)","RoleTaskInfo33525:checkFinish($1)")
