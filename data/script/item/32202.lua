--活力点宝箱(金)
function OnUseItemEvent_32202(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 31 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32202") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 31 and level < 40 then
		s_openPalace(uid,32202,1)
	elseif level >= 40 and level < 50 then
		s_openPalace(uid,32202,2)
	elseif level >= 50 and level < 60 then
		s_openPalace(uid,32202,3)
	elseif level == 60 then
		s_openPalace(uid,32202,4)
	elseif level > 60 and level < 70 then
		s_openPalace(uid,32202,5)
	elseif level >= 70 and level < 80 then
		s_openPalace(uid,32202,6)
	elseif level >= 80 and level < 90 then
		s_openPalace(uid,32202,7)
	elseif level >= 90 and level < 100 then
		s_openPalace(uid,32202,8)
	elseif level >= 100 and level < 110 then
		s_openPalace(uid,32202,9)
	elseif level >= 110 and level < 120 then
		s_openPalace(uid,32202,10)
	elseif level >= 120 and level < 130 then
		s_openPalace(uid,32202,11)
	elseif level >= 130 and level < 140 then
		s_openPalace(uid,32202,12)
	elseif level >= 140 and level < 150 then
		s_openPalace(uid,32202,13)
	elseif level == 150  then
		s_openPalace(uid,32202,14)
	end
	s_addItem(uid,26020,3,5,0,"1-1","复活盾")
	return VALUE_OK
end
