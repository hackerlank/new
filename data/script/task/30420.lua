--慕名拜访(跨区)
RoleTaskInfo30420 =
{
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	taskID = 30420,
}

function RoleTaskInfo30420:checkAccept(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 81 then
		return VALUE_FAIL
	end
	if s_getCurrentZoneID() ~= s_getOldZoneID(uid) and s_getOldZoneID(uid) ~= 0 then
		return VALUE_FAIL
	end
	local week = s_getCurTime(TIME_CURYWEEKS)
	if s_getVar(uid,125,4) == week then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30420:AddTask(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_None then
		if AddRoleSubTask(uid,self.taskID,1,1,0) ~= VALUE_OK then
			return VALUE_FAIL
		end
	end
	local desc = GetSubTaskDescText(uid,self.taskID,1)
	s_setTaskValue(uid,self.taskID,TaskValue_Desc,desc,1)
	return VALUE_OK
end

--是否显示交付任务
function RoleTaskInfo30420:checkFinish(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_None or process == nil then
		return VALUE_FAIL
	end
	if s_getCurrentZoneID() == s_getOldZoneID(uid) or s_getOldZoneID(uid) == 0 then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--直接完成(在别的区)
function RoleTaskInfo30420:FinishTaskOtherZone(uid)
	--	s_worldInfo("撑场专用，每次五毛")
	FinishRoleTask(uid,self.taskID)

	s_setVar(uid,125,5,s_getVar(uid,125,5)+10)
	--	s_incVarOldZoneUser(uid,125,5,10)
	local week = s_getCurTime(TIME_CURYWEEKS)
	s_setVar(uid,125,4,week)
	--	s_setVarOldZoneUser(uid,125,4,week)
end

--完成(在本区)
function RoleTaskInfo30420:OnFinishTaskOldZone(uid)
	FinishRoleTask(uid,self.taskID)

	s_setVar(uid,125,5,s_getVar(uid,125,5)+10)
	--  s_incVarOldZoneUser(uid,125,5,10)
	local week = s_getCurTime(TIME_CURYWEEKS)
	s_setVar(uid,125,4,week)
end

AppendMenuToNpc(60911,"慕名拜访(2)","RoleTaskInfo30420:FinishTaskOtherZone($1)","RoleTaskInfo30420:checkFinish($1)")
AppendMenuToNpc(56014,"慕名拜访(2)","RoleTaskInfo30420:AddTask($1)","RoleTaskInfo30420:checkAccept($1)")
