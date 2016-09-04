--7级宝箱
function OnUseItemEvent_31163(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 111 or level > 120 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31163") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31163,0)
	return VALUE_OK
end
