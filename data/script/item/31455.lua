--旅行商人的日记页
function OnUseItemEvent_31455(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"旅行商人的日记页扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 15 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31455)
	return VALUE_OK
end
