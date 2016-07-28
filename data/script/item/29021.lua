--首领变身卡
function OnUseItemEvent_29021(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29021") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,60000,90)
		return VALUE_OK
	end
	return VALUE_FAIL
end
