--命运宝箱
function OnUseItemEvent_34165(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 31 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除命运宝箱") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 31 and level < 61 then
		s_openTreasure(uid,34165,1,thisid)
	elseif level >= 61 then
		s_openTreasure(uid,34165,2,thisid)
	end
	return VALUE_OK
end
