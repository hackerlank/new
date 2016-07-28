--感谢的微笑使用得经验
function OnUseItemEvent_31380(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 120 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31380)
	return VALUE_OK
end
