--幸运大礼包
function OnUseItemEvent_63394(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63394") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,63394,0)
	return VALUE_OK
end
