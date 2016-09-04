--智慧宝箱(金)
function OnUseItemEvent_32002(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32002") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level <= 60 then
		s_openPalace(uid,32002,1)
	else
		s_openPalace(uid,32002,2)
	end
	return VALUE_OK
end
