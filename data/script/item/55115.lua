--超级血战宝箱
function OnUseItemEvent_55115(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 61 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55115") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openTreasure(uid,55115,0)
	return VALUE_OK
end
