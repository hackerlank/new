--极速胶囊(猎豹)
function OnUseItemEvent_29047(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= 0 then
		s_sysInfo(uid,"当前状态下不能使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用删除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_setTrafficType(uid,TrafficType_RideChange,60147,60)
	return VALUE_OK
end

--极速胶囊(摩托)
function OnUseItemEvent_29147(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= 0 then
		s_sysInfo(uid,"当前状态下不能使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用删除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_setTrafficType(uid,TrafficType_RideChange,50013,120)
	return VALUE_OK
end

--极速胶囊(幽浮)
function OnUseItemEvent_29247(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= 0 then
		s_sysInfo(uid,"当前状态下不能使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用删除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_setTrafficType(uid,TrafficType_RideChange,50007,120)
	return VALUE_OK
end
