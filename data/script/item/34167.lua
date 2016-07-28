--抽奖大宝箱宝箱
function OnUseItemEvent_34167(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 41 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除抽奖大宝箱") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 41 then
		s_openTreasure(uid,34167,0,thisid)
	end
	return VALUE_OK
end
