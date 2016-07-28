
function OnUseItemEvent_55311(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 41 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除宝箱") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 41 and level < 51 then
		s_openTreasure(uid,55311,1,thisid)
	elseif level >= 51 and level < 61 then
		s_openTreasure(uid,55311,2,thisid)
	elseif level >= 61 and level < 71 then
		s_openTreasure(uid,55311,3,thisid)
	elseif level >= 71 and level < 81 then
		s_openTreasure(uid,55311,4,thisid)
	elseif level >= 81 and level < 91 then
		s_openTreasure(uid,55311,5,thisid)
	elseif level >= 91 and level < 101 then
		s_openTreasure(uid,55311,6,thisid)
	elseif level >= 101 and level < 111 then
		s_openTreasure(uid,55311,7,thisid)
	elseif level >= 111 and level < 121 then
		s_openTreasure(uid,55311,8,thisid)
	elseif level >= 121 and level < 131 then
		s_openTreasure(uid,55311,9,thisid)
	elseif level >=131 and level < 141 then
		s_openTreasure(uid,55311,10,thisid)
	elseif level >= 141 and level < 151 then
		s_openTreasure(uid,55311,11,thisid)
	end
	return VALUE_OK
end
