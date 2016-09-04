
function OnUseItemEvent_63055(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63055") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,172)
	return VALUE_OK
end
