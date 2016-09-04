--喵喵宝箱
function OnUseItemEvent_32204(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32204") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32204,0)
	return VALUE_OK
end
