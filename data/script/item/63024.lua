--国家活力箱
function OnUseItemEvent_63024(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63024") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level <= 79 then
		s_openPalace(uid,63024,1)
	elseif level >= 80 and level <= 89 then
		s_openPalace(uid,63024,2)
	elseif level >= 90 and level <= 99 then
		s_openPalace(uid,63024,3)
	elseif level >= 100 and level <= 109 then
		s_openPalace(uid,63024,4)
	elseif level >= 110 and level <= 119 then
		s_openPalace(uid,63024,5)
	elseif level >= 120 and level <= 129 then
		s_openPalace(uid,63024,6)
	elseif level >= 130 and level <= 139 then
		s_openPalace(uid,63024,7)
	elseif level >= 140 and level <= 149 then
		s_openPalace(uid,63024,8)
	end
	return VALUE_OK
end
