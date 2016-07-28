--空间之钥
function OnUseItemEvent_26017(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic == TrafficType_RTLead or traffic == TrafficType_RTFollow or
		traffic == TrafficType_CarrigeLead or traffic == TrafficType_CarrigeFollow then
		s_sysInfo(uid,"该状态下不可使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_26017") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local x = math.floor(targetid / (2^16))
	local y = targetid % (2^16)
	s_goto(SCENE_ENTRY_PLAYER,uid,x,y)
	return VALUE_OK
end
