--活力点宝箱(铜)
function OnUseItemEvent_32200(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 31 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32200") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32200,0)
	return VALUE_OK
end
