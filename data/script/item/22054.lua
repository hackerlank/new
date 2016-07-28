--传送能量石
function OnUseItemEvent_22054(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None and traffic ~= TrafficType_Horse then
		s_sysInfo(uid,"当前状态无法使用该道具")
		return VALUE_FAIL
	end
	local x = math.floor(targetid / (2^16))
	local y = targetid % (2^16)
	local callback = string.format("OnUseItem_22054(%u,%u,%u,%u)",uid,thisid,x,y)
	s_showbar(uid,4000,callback,0,1)
	return VALUE_OK
end

function OnUseItem_22054(uid,thisid,x,y)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None and traffic ~= TrafficType_Horse then
		s_sysInfo(uid,"当前状态无法使用该道具")
		return VALUE_FAIL
	end
	s_useitemcold(uid,thisid)
	s_goto(SCENE_ENTRY_PLAYER,uid,x,y)
	return VALUE_OK
end
