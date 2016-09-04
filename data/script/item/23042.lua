--小红
function OnUseItemEvent_23042(userid,thisid,targetid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,userid,10211) ~= 0 then
		return VALUE_OK
	end
	if CheckItemLevel(userid,thisid,"人物等级不符") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_SP)
	local maxsp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXSP)
	if sp == maxsp then
		s_sysInfo(userid,"魔力值已满，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_23042") == VALUE_OK then
		s_addbuff(SCENE_ENTRY_PLAYER,userid,30002,24,16)
		return VALUE_OK
	end
	return VALUE_FAIL
end
