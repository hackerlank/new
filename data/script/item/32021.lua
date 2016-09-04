--2011圣诞活动宝箱
function OnUseItemEvent_32021(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 41 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32021") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 41 and level <= 60 then
		s_openPalace(uid,32021,1)
	elseif level >= 61 then
		s_openPalace(uid,32021,2)
	end
	return VALUE_OK
end
