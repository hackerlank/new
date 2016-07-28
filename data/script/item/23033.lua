--大红红
function OnUseItemEvent_23033(userid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXHP)
	if hp == maxhp then
		return VALUE_FAIL
	end
	local value = GetCureHp(userid,1000)
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_23033") == VALUE_OK then
		s_addValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HP,value)
		return VALUE_OK
	end
	return VALUE_FAIL
end
