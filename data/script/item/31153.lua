--王者试炼宝箱
function OnUseItemEvent_31153(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 51 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31153") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 51 and level <= 60 then
		s_openPalace(uid,31153,1)
	elseif level >= 61 and level <= 70 then
		s_openPalace(uid,31153,2)
	elseif level >= 71 and level <= 80 then
		s_openPalace(uid,31153,3)
	elseif level >= 81 and level <= 90 then
		s_openPalace(uid,31153,4)
	elseif level >= 91 and level <= 100 then
		s_openPalace(uid,31153,5)
	elseif level >= 101 and level <= 110 then
		s_openPalace(uid,31153,6)
	elseif level >= 111 and level <= 120 then
		s_openPalace(uid,31153,7)
	elseif level >= 121 and level <= 130 then
		s_openPalace(uid,31153,8)
	elseif level >= 131 and level<= 140 then
		s_openPalace(uid,31153,9)
	elseif level >= 141 and level <= 150 then
		s_openPalace(uid,31153,10)
	end
	return VALUE_OK
end
