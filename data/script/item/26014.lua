--体质遗忘手册
function OnUseItemEvent_26014(userid,thisid,targetid)
	local needlevel = s_getItemValue(userid,thisid,Item_Base_NeedLevel)
	local maxlevel = s_getItemValue(userid,thisid,Item_Base_MaxLevel)
	local needlevel1 = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_LEVEL)
	if needlevel1 < needlevel or needlevel1 >=maxlevel then
		s_sysInfo(userid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_POINT_TIZHI) == 0 then
		s_sysInfo(userid,"体质属性点为0，无法遗忘")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_26014") == VALUE_OK then
		s_subValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_POINT_TIZHI,5)
		local value = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_POINT_TIZHI)
		s_sysInfo(userid,string.format("使用成功，体质属性还原为%d点",value))
		return VALUE_OK
	end
	return VALUE_FAIL
end
