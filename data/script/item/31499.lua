--“护国徽章”盒
function OnUseItemEvent_31499(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"不足21级，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31499") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31499,0)
	return VALUE_OK
end
