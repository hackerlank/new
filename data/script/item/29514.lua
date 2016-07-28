--精致的小丑宝箱
function OnUseItemEvent_29514(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 60 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29514") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,29514,0)
	return VALUE_OK
end
