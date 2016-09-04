--中蓝
function OnUseItemEvent_23035(userid,thisid,targetid)
	local sp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_SP)
	local maxsp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXSP)
	if sp == maxsp then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_23035") == VALUE_OK then
		s_addValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_SP,120)
		return VALUE_OK
	end
	return VALUE_FAIL
end
