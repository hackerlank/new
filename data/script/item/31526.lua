--奥运助威包（白）
function OnUseItemEvent_31526(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 50 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31526") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 50 and level < 60 then
		s_openPalace(uid,31526,1)
	elseif level <= 60 then
		s_openPalace(uid,31526,2)
	elseif level < 70 then
		s_openTreasure(uid,31526,3,thisid)
	elseif level < 80 then
		s_openTreasure(uid,31526,4,thisid)
	elseif level < 90 then
		s_openTreasure(uid,31526,5,thisid)
	elseif level < 100 then
		s_openTreasure(uid,31526,6,thisid)
	elseif level < 110 then
		s_openTreasure(uid,31526,7,thisid)
	end
	return VALUE_OK
end

--奥运助威包（蓝）
function OnUseItemEvent_31527(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 50 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31527") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 50 and level < 60 then
		s_openTreasure(uid,31527,1,thisid)
	elseif level <= 60 then
		s_openTreasure(uid,31527,2,thisid)
	elseif level < 70 then
		s_openTreasure(uid,31527,3,thisid)
	elseif level < 80 then
		s_openTreasure(uid,31527,4,thisid)
	elseif level < 90 then
		s_openTreasure(uid,31527,5,thisid)
	elseif level < 100 then
		s_openTreasure(uid,31527,6,thisid)
	elseif level < 110 then
		s_openTreasure(uid,31527,7,thisid)
	end
	return VALUE_OK
end

--奥运助威包（黄）
function OnUseItemEvent_31528(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 50 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31528") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 50 and level < 60 then
		s_openTreasure(uid,31528,1,thisid)
	elseif level <= 60 then
		s_openTreasure(uid,31528,2,thisid)
	elseif level < 70 then
		s_openTreasure(uid,31528,3,thisid)
	elseif level < 80 then
		s_openTreasure(uid,31528,4,thisid)
	elseif level < 90 then
		s_openTreasure(uid,31528,5,thisid)
	elseif level < 100 then
		s_openTreasure(uid,31528,6,thisid)
	elseif level < 110 then
		s_openTreasure(uid,31528,7,thisid)
	end
	return VALUE_OK
end

--奥运助威包（绿）
function OnUseItemEvent_31529(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 50 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31529") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 50 and level < 60 then
		s_openTreasure(uid,31529,1,thisid)
	elseif level <= 60 then
		s_openTreasure(uid,31529,2,thisid)
	elseif level < 70 then
		s_openTreasure(uid,31529,3,thisid)
	elseif level < 80 then
		s_openTreasure(uid,31529,4,thisid)
	elseif level < 90 then
		s_openTreasure(uid,31529,5,thisid)
	elseif level < 100 then
		s_openTreasure(uid,31529,6,thisid)
	elseif level < 110 then
		s_openTreasure(uid,31529,7,thisid)
	end
	return VALUE_OK
end
