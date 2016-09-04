--体力宝箱
function OnUseItemEvent_29303(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29303") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 21 and level < 30 then
		s_openTreasure(uid,29303,1,thisid)
	elseif level >= 30 and level < 40 then
		s_openTreasure(uid,29303,2,thisid)
	elseif level >= 40 and level < 50 then
		s_openTreasure(uid,29303,3,thisid)
	elseif level >= 50 and level < 60 then
		s_openTreasure(uid,29303,4,thisid)
	elseif level == 60 then
		s_openTreasure(uid,29303,5,thisid)
	elseif level > 60 and level < 70 then
		s_openTreasure(uid,29303,6,thisid)
	elseif level >= 70 and level < 80 then
		s_openTreasure(uid,29303,7,thisid)
	elseif level >= 80 and level < 90 then
		s_openTreasure(uid,29303,8,thisid)
	elseif level >= 90 and level < 91 then
		s_openTreasure(uid,29303,9,thisid)
	elseif level >= 91 and level < 100 then
		s_openTreasure(uid,29303,10,thisid)
	elseif level >= 100 and level < 110 then
		s_openTreasure(uid,29303,11,thisid)
	elseif level >= 110 and level < 120 then
		s_openTreasure(uid,29303,12,thisid)
	elseif level >= 120 and level < 130 then
		s_openTreasure(uid,29303,13,thisid)
	elseif level >= 130 and level < 140 then
		s_openTreasure(uid,29303,14,thisid)
	elseif level >= 140 and level < 150 then
		s_openTreasure(uid,29303,15,thisid)
	elseif level == 150 then
		s_openTreasure(uid,29303,16,thisid)
	end
	return VALUE_OK
end
