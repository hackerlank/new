--三绿宝箱
function OnUseItemEvent_32211(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 41 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32211") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 40 and level <= 49 then
		s_openPalace(uid,32211,1)
	elseif level >= 50 and level <= 59 then
		s_openPalace(uid,32211,2)
	elseif level == 60 then
		s_openPalace(uid,32211,3)
	elseif level >= 61 and level <= 69 then
		s_openPalace(uid,32211,4)
	elseif level >= 70 and level <= 79 then
		s_openPalace(uid,32211,5)
	elseif level >= 80 and level <= 89 then
		s_openPalace(uid,32211,6)
	elseif level >= 90 and level <= 99 then
		s_openPalace(uid,32211,7)
	elseif level >= 100 and level <= 109 then
		s_openPalace(uid,32211,8)
	elseif level >= 110 and level <= 119 then
		s_openPalace(uid,32211,9)
	elseif level >= 120 and level <= 129 then
		s_openPalace(uid,32211,10)
	elseif level >= 130 and level <= 139 then
		s_openPalace(uid,32211,11)
	elseif level >= 140 then
		s_openPalace(uid,32211,12)
	end
	return VALUE_OK
end
