--新手远征卷轴
function OnUseItemEvent_31486(uid,thisid)
	local process = s_getTaskValue(uid,30026,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		s_sysInfo(uid,"您没有在做远征任务，不能使用远征卷轴")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local state = s_getTaskValue(uid,30026,TaskValue_State)
	s_setTaskValue(uid,30026,TaskValue_Operate,state)
	return VALUE_OK
end
