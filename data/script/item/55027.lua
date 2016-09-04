--万圣节礼物箱
function OnUseItemEvent_55027(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 51 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,55028,1,"删除微笑的南瓜奖章") ~= VALUE_OK then
		s_sysInfo(uid,"缺少1个微笑的南瓜奖章")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除命运宝箱") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 61 then
		s_openTreasure(uid,55027,1,thisid)
	else
		s_openTreasure(uid,55027,2,thisid)
	end
	return VALUE_OK
end
