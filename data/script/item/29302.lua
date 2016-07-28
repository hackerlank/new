--纹章宝箱
function OnUseItemEvent_29302(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 71 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29302") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 60 and level <= 80 then
		s_openPalace(uid,29302,1)
	elseif level >= 81 and level <= 100 then
		s_openPalace(uid,29302,2)
	elseif level >= 101 and level <= 120 then
		s_openPalace(uid,29302,3)
	elseif level >= 121 then
		s_openPalace(uid,29302,4)
	end
	return VALUE_OK
end
