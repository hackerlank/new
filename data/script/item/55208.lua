--碧宵宝盒
function OnUseItemEvent_55208(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55208") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level <=70 then
		s_openPalace(uid,55208,1)
	else
		s_openPalace(uid,55208,2)
	end
	return VALUE_OK
end
