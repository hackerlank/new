--旅行商人的日记册
function OnUseItemEvent_31475(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"旅行商人的日记册扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 85 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31475)
	return VALUE_OK
end

--旅行商人的日记本
function OnUseItemEvent_31476(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"旅行商人的日记本扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 450 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31476)
	return VALUE_OK
end
