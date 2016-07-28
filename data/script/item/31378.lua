--大红
function OnUseItemEvent_31378(userid,thisid,targetid)
	if CheckItemLevel(userid,thisid,"人物等级不符") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_SP)
	local maxsp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXSP)
	if sp == maxsp then
		s_sysInfo(userid,"魔力值已满，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_31378") == VALUE_OK then
		s_addbuff(SCENE_ENTRY_PLAYER,userid,30002,32,16)
		return VALUE_OK
	end
	return VALUE_FAIL
end
