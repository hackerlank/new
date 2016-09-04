--“升1级送12元”抽奖券
function OnUseItemEvent_55041(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除升1级送12元抽奖券") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if sex ==1 then
		s_openTreasure(uid,55041,2,thisid)
	else
		s_openTreasure(uid,55041,1,thisid)
	end
	return VALUE_OK
end
