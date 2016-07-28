--营养晶果B阶
function OnUseItemEvent_31445(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 70 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31445") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31445,0)
	return VALUE_OK
end

--营养晶果C阶
function OnUseItemEvent_31446(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 70 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31446") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31446,0)
	return VALUE_OK
end

--营养晶果D阶
function OnUseItemEvent_31447(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 70 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31447") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31447,0)
	return VALUE_OK
end

