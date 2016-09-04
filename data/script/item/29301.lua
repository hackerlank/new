--历练宝箱
function OnUseItemEvent_29301(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 50 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29301") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 50 and level < 60 then
		s_openPalace(uid,29301,1)
	elseif level <= 60 then
		s_openPalace(uid,29301,2)
	elseif level < 70 then
		s_openPalace(uid,29301,3)
	elseif level < 80 then
		s_openPalace(uid,29301,4)
	elseif level < 90 then
		s_openPalace(uid,29301,5)
	elseif level < 100 then
		s_openPalace(uid,29301,6)
	elseif level < 110 then
		s_openPalace(uid,29301,7)
	elseif level < 120 then
		s_openPalace(uid,29301,8)
	elseif level < 130 then
		s_openPalace(uid,29301,9)
	elseif level < 140 then
		s_openPalace(uid,29301,10)
	elseif level < 150 then
		s_openPalace(uid,29301,11)
	elseif level == 150 then
		s_openPalace(uid,29301,12)
	end
	return VALUE_OK
end
