--试炼宝箱
function OnUseItemEvent_29561(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 51 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"开启试炼宝箱") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,29561,0)
	return VALUE_OK
end
