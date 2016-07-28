--皓月玉盘
function OnUseItemEvent_55018(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 70 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除皓月玉盘") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 70 then
		s_openTreasure(uid,55018,0,thisid)
	end
	return VALUE_OK
end
