--战争勋章
function OnUseItemEvent_13(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_WAR_MEDAL,1)
	return VALUE_OK
end

