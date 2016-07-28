--达芬奇七宗罪奖励变身道具
--傲慢
function OnUseItemEvent_31425(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31425") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,61078,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--嫉妒
function OnUseItemEvent_31426(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31426") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,61077,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--暴怒
function OnUseItemEvent_31427(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31427") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,61079,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--怠惰
function OnUseItemEvent_31428(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31428") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,61080,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--贪婪
function OnUseItemEvent_31429(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31429") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,61082,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--暴食
function OnUseItemEvent_31430(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31430") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,61083,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--欲望
function OnUseItemEvent_31431(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31431") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,61081,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
