
function OnUseItemEvent_55314(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"删除宝箱") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level  <= 90  then
		s_openTreasure(uid,55314,1,thisid)
	elseif level >= 91  then
		s_openTreasure(uid,55314,2,thisid)
	end
	return VALUE_OK
end
