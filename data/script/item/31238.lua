--中立区寻宝宝箱B
function OnUseItemEvent_31238(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 70 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31238") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31238,0)
	return VALUE_OK
end
