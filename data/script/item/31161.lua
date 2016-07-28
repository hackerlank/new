--5级宝箱
function OnUseItemEvent_31161(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 91 or level > 100 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31161") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31161,0)
	return VALUE_OK
end
