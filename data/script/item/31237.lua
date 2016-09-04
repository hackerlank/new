--中立区寻宝宝箱A
function OnUseItemEvent_31237(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 70 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31237") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 70 and level <= 80 then
		s_openPalace(uid,31237,1)
	elseif level >= 81 and level <= 90 then
		s_openPalace(uid,31237,2)
	elseif level >= 91 then
		s_openPalace(uid,31237,3)
	end
	return VALUE_OK
end
