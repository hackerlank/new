--魔物清剿
RoleTaskInfo33522 =
{
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	taskID = 33522,
}

function RoleTaskInfo33522:checkAccept(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo33522:AddTask(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_None then
		if AddRoleSubTask(uid,33522,1,300,0) ~= VALUE_OK then
			return VALUE_FAIL
		end
	end
	--	local desc = GetSubTaskDescText(uid,self.taskID,1)
	--	s_setTaskValue(uid,33522,TaskValue_Desc,desc,1)
	return VALUE_OK
end

function RoleTaskInfo33522:AddRoleTaskOperate(uid,level)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return
	end
	local user_level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < user_level-10 then
		return
	end
	AddRoleTaskOperate(uid,self.taskID)
end

--是否显示交付任务
function RoleTaskInfo33522:checkFinish(uid)
	local process = s_getTaskValue(uid,33522,TaskValue_Process)
	if process == TaskProcess_None or process == nil then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--显示完成任务对话
function RoleTaskInfo33522:ShowFinish(uid)
	local process = s_getTaskValue(uid,33522,TaskValue_Process)
	if process == TaskProcess_Doing then
		local msg = [[快去完成任务吧]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
		return
	end
	local msg = GetSubTaskFinishText(uid,33522,1)
	local call = "RoleTaskInfo33522:FinishTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"完成(3)",call,"离开(3)")
end

function RoleTaskInfo33522:FinishTask(uid)
	s_addMoney(uid,MoneyType_Money,50,"完成委托任务，交还押金")
	s_addMoney(uid,MoneyType_Money,100,"完成委托任务，任务奖励")
	FinishRoleTask(uid,33522)
	local user_level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	s_refreshExp(uid,math.floor((50+0.1*user_level^2.2)*30),ExpType_OptionalTask,33522)
	s_finishDeputeTask(uid,1,1)
end

function RoleTaskInfo33522:OnDeleteTask(uid)
	s_finishDeputeTask(uid,1,0)
end

AppendMenuToNpc(354,"魔物清剿(2)","RoleTaskInfo33522:ShowFinish($1)","RoleTaskInfo33522:checkFinish($1)")
RegisterNpcDeadLevelEvent("RoleTaskInfo33522:AddRoleTaskOperate($1,$2)")
