
function OnUseItemEvent_63021(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63021") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,63021,0)
	return VALUE_OK
end
