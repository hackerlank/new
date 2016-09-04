--氧疗药剂
function OnUseItemEvent_26108(userid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXHP)
	if hp == maxhp then
		return VALUE_FAIL
	end
	local add = math.floor(maxhp * 0.25)
	if add + hp > maxhp then
		add = maxhp - hp
	end
	if add > 3000 then
		add = 3000
	end
	local value = s_getItemValue(userid,thisid,Item_Attribute_LeftHPSP)
	if value <= add then
		if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_26108") ~= VALUE_OK then
			return VALUE_FAIL
		end
	else
		s_setItemValue(userid,thisid,Item_Attribute_LeftHPSP,value - add)
		s_refreshItem(userid,thisid)
	end
	s_addValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HP,add)
	return VALUE_OK
end
