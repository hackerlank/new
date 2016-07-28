--完整的相片获得经验
function OnUseItemEvent_31493(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除完整的相片") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 150 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31493)
	return VALUE_OK
end
