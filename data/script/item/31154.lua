--活动宝箱
function OnUseItemEvent_31154(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31154") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level <= 60 then
		s_openPalace(uid,31154,1)
	elseif level <= 70 then
		s_openPalace(uid,31154,2)
	end
	return VALUE_OK
end
