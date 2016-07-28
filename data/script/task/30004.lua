--猎名师手札2
RoleTaskInfo30004 =
{
	ring = 20,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	taskID = 30004,
}

--任务追踪
function RoleTaskInfo30004:GetTaskTraceText(uid)
	local level = s_getTaskVar(uid,30004,11) - 10
	local msg = [[<p> <n>  杀死500只%d级以上的怪物</n> </p>]]
	msg = string.format(msg,level)
	return msg
end

function RoleTaskInfo30004:GetTaskExpParam(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local param1 = 0;local param2 = 0;
	if level <= 60 then
		param1 = 2;param2=3;
	elseif level <= 70 then
		param1 = 2.6;param2=6;
	else
		param1 = 3.2;param2=10;
	end
	return param1,param2
end
--任务经验
function RoleTaskInfo30004:GetTaskExp(uid)
	return s_getTaskVar(uid,30004,MvarIndex_Exp)
end

function RoleTaskInfo30004:checkAccept(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_None then
		s_sysInfo(uid,"请先完成当前已经接取的猎命师手札任务")
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30004:AddTask(uid,quality,exp)
	if AddRoleSubTask(uid,30004,1,500,0,quality) ~= VALUE_OK then
		return VALUE_FAIL
	end

	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	s_addTaskVar(uid,30004,11,level)
	s_addTaskVar(uid,30004,MvarIndex_Exp,exp)
	local desc = GetSubTaskDescText(uid,30004,1)
	s_setTaskValue(uid,30004,TaskValue_Desc,desc,1)

	return VALUE_OK
end

function RoleTaskInfo30004:AddRoleTaskOperate(uid,level)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return
	end
	local monster_level = s_getTaskVar(uid,30004,11) - 10
	if level < monster_level then
		return
	end
	AddRoleTaskOperate(uid,self.taskID)
	process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_CanDone then
		local exp = GetTaskExp(uid,self.taskID)
		local level = s_getTaskVar(uid,30004,11)
		local color = s_getTaskValue(uid,30004,TaskValue_Color)
		local colors = {"白","蓝","黄","绿","紫"}
		local msg = string.format("完成%s色高级猎命师手札任务,获得经验%u点。",colors[color+1],exp)
		s_sysInfo(uid,msg,0)
		FinishRoleTask(uid,self.taskID)
	end
end

RegisterNpcDeadLevelEvent("RoleTaskInfo30004:AddRoleTaskOperate($1,$2)")

