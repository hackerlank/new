--舞会门票
function OnUseItemEvent_29045(uid,thisid)
	local times = s_getVar(uid,107,3)
	local buffid = 57
	if times == 0 then
		s_sysInfo(uid,"今天不能再使用舞票了",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,125) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,126) ~= 0 then
		s_sysInfo(uid,"已经使用了一个不同等级的舞票",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	local bufflevel = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,buffid)
	if bufflevel > 0 then
		local qua = s_getbuffvalue(SCENE_ENTRY_PLAYER,uid,buffid)
		if quality ~= qua then
			s_sysInfo(uid,"已经使用了一个不同品质的舞票",ChatPos_Sys + ChatPos_Important)
			return VALUE_FAIL
		end
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用舞票") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if bufflevel > 0 then
		local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,buffid)
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,buffid,time + 6*60)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,buffid,1,6*60,quality)
	end
	times = times - 1
	s_addVar(uid,107,3,times)
	--活力点
	s_addVigorPoint(uid, 2)
	s_debugUser(uid,"使用舞票，获得2点活力点")
	RefreshTaskDailyInfo(uid, 30064)
	--成就计数
	if quality >= 2 then
		AddAchieveTaskOperate(uid,40002,1)
	end
	s_sysInfo(uid,"今天还可以使用".. times .. "张舞票")
	local process = s_getTaskValue(uid,30302,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30302)
	end
	local process = s_getTaskValue(uid,30322,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30322)
	end
	--命运女神的垂青（3次）
	local process = s_getTaskValue(uid,30590,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30590)
	end
	local process = s_getTaskValue(uid,30600,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30600)
	end
	--命运女神的垂青（5次）
	local process = s_getTaskValue(uid,30591,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30591)
	end
	local process = s_getTaskValue(uid,30601,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30601)
	end
	--中秋活动
	local process = s_getTaskValue(uid,50001,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,50001)
	end
	return VALUE_OK
end
