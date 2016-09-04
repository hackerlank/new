--忧伤的回忆
function OnUseItemEvent_31490(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 31 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31490") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 31 and level < 40 then
		s_openTreasure(uid,31490,1,thisid)
	elseif level >= 40 and level < 50 then
		s_openTreasure(uid,31490,2,thisid)
	elseif level >= 50 and level < 60 then
		s_openTreasure(uid,31490,3,thisid)
	elseif level == 60 then
		s_openTreasure(uid,31490,4,thisid)
	elseif level > 60 and level < 70 then
		s_openTreasure(uid,31490,5,thisid)
	elseif level >= 70 and level < 80 then
		s_openTreasure(uid,31490,6,thisid)
	elseif level >= 80 and level < 90 then
		s_openTreasure(uid,31490,7,thisid)
	elseif level >= 90 and level < 100 then
		s_openTreasure(uid,31490,8,thisid)
	elseif level >= 100 and level < 101 then
		s_openTreasure(uid,31490,9,thisid)
	end
	return VALUE_OK
end
