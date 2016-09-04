--猎名师手札7
function OnUseItemEvent_47011(uid,thisid,targetid)
	if RoleTaskInfo30003:checkAccept(uid,47011,thisid) ~= VALUE_OK then
		return VALUE_FAIL
	end
	local times = s_getVar(uid,47,1)
	if times == 0 then
		s_sysInfo(uid,"今天不能再使用手札了",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_47011") ~= VALUE_OK then
		return VALUE_FAIL
	end
	RoleTaskInfo30003:AddTask(uid,quality,47011)
	times = times - 1
	s_addVar(uid,47,1,times)
	--活力点
	s_addVigorPoint(uid, 2)
	s_debugUser(uid,"使用手札，获得2点活力点")
	RefreshTaskDailyInfo(uid, 30061)
	s_sysInfo(uid,"今天还能使用".. times .."次猎命师手扎",ChatPos_Sys)
	local process = s_getTaskValue(uid,30301,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30301)
	end
	local process = s_getTaskValue(uid,30321,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30321)
	end
	--命运女神的垂青
	local process = s_getTaskValue(uid,30593,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30593)
	end
	local process = s_getTaskValue(uid,30603,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30603)
	end
	local process = s_getTaskValue(uid,30623,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30623)
	end
	return VALUE_OK
end
