--氧疗药剂
function OnUseItemEvent_26140(userid,thisid,targetid)
	local sp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_SP)
	local maxsp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXSP)
	if sp == maxsp then
		return VALUE_FAIL
	end
	local add = maxsp
	if add + sp > maxsp then
		add = maxsp - sp
	end
	local value = s_getItemValue(userid,thisid,Item_Attribute_LeftHPSP)
	if value <= add then
		if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_26140") ~= VALUE_OK then
			return VALUE_FAIL
		end
	else
		s_setItemValue(userid,thisid,Item_Attribute_LeftHPSP,value - add)
		s_refreshItem(userid,thisid)
	end
	s_addValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_SP,add)
	return VALUE_OK
end
