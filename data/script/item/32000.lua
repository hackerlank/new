--智慧宝箱(铜)
function OnUseItemEvent_32000(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32000") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32000,0)
	return VALUE_OK
end
