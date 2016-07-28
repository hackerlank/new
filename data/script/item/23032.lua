--中红
function OnUseItemEvent_23032(userid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXHP)
	if hp == maxhp then
		return VALUE_FAIL
	end
	local value = GetCureHp(userid,500)
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_23032") == VALUE_OK then
		s_addValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HP,value)
		return VALUE_OK
	end
	return VALUE_FAIL
end
