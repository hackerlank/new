--娜娜兔变身卡
function OnUseItemEvent_29014(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29014") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,41002,90)
		return VALUE_OK
	end
	return VALUE_FAIL
end
