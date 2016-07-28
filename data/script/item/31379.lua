--大红
function OnUseItemEvent_31379(userid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXHP)
	if hp == maxhp then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_31379") == VALUE_OK then
		s_addbuff(SCENE_ENTRY_PLAYER,userid,30001,90,16)
		return VALUE_OK
	end
	return VALUE_FAIL
end
