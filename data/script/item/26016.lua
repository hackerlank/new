--机甲傀儡(直接完成一个支线任务)
function OnUseItemEvent_26016(uid,thisid,targetid)
	--检查任务是否是支线任务
	local taskid = targetid
	local tasktype = s_getTaskValue(0,taskid,TaskValue_Type)
	if tasktype ~= TaskType_Sub then
		s_sysInfo(uid,"非支线任务,不能对其使用")
		return VALUE_FAIL
	end
	--职业套装任务不能使用
	if taskid == 11831 or taskid == 11871 or taskid == 11872 or taskid == 11873 then
		s_sysInfo(uid,"不可以对该任务使用")
		return VALUE_FAIL
	end
	local guard = s_getGuardID(uid)
	if guard ~= nil and guard ~= 0 then
		s_killGuard(uid)
	end
	local state = s_getTaskValue(uid,taskid,TaskValue_State)
	s_setTaskValue(uid,taskid,TaskValue_Operate,state)
	if FinishRoleTask(uid,taskid) == VALUE_OK then
		s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_26016")
		return VALUE_OK
	end
	return VALUE_FAIL
end
