--属性清洗手册
function OnUseItemEvent_26111(userid,thisid,targetid)
	local needlevel = s_getItemValue(userid,thisid,Item_Base_NeedLevel)
	local maxlevel = s_getItemValue(userid,thisid,Item_Base_MaxLevel)
	local needlevel1 = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_LEVEL)
	if needlevel1 < needlevel or needlevel1 >=maxlevel then
		s_sysInfo(userid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_26111") == VALUE_OK then
		s_clearpoint(userid)
		s_sysInfo(userid,"属性重修成功")
		return VALUE_OK
	end
	return VALUE_FAIL
end
