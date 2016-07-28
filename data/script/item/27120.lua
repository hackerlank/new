--星星合金
function OnUseItemEvent_27120(userid,thisid,equipid)
	if checkEquip(userid,equipid) ~= VALUE_OK then
		s_sysInfo(userid,"目标不是装备，无法使用")
		return VALUE_FAIL
	end
	local needlevel = s_getItemValue(userid,equipid,Item_Base_NeedLevel)
	local minlevel = s_getItemValue(userid,thisid,Item_Attribute_MinLevel)
	local maxlevel = s_getItemValue(userid,thisid,Item_Attribute_MaxLevel)
	if needlevel < minlevel or needlevel > maxlevel then
		s_sysInfo(userid,"目标装备等级不符合星星合金要求")
		return VALUE_FAIL
	end
	local level = s_getItemValue(userid,thisid,Item_Attribute_Level)
	if level == 0 then
		s_sysInfo(userid,"星星合金中没有携带星星")
		return VALUE_FAIL
	end
	local needbind = s_getItemValue(userid,thisid,Item_Attribute_Bind)
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_27120") ~= VALUE_OK then
		s_sysInfo(userid,"删除星星合金失败")
		return VALUE_FAIL
	end
	s_setItemValue(userid,equipid,Item_Attribute_Level,level)
	if s_getItemValue(userid,equipid,Item_Attribute_Level_Max) < level then
		s_setItemValue(userid,equipid,Item_Attribute_Level_Max,0)
		s_setItemValue(userid,equipid,Item_Attribute_Level_MaxTime,0)
		s_setItemValue(userid,equipid,Item_Attribute_Level_BadTimes,0)
	end
	if needbind > 0 then
		s_setItemValue(userid,equipid,Item_Attribute_Bind,1)
	end
	if level >= 10 then
		local name = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_NAME)
		s_setItemValue(userid,equipid,Item_Attribute_Maker,name)
	end
	s_refreshItem(userid,equipid)
	return VALUE_OK
end
