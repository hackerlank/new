--视察报告
function OnUseItemEvent_55056(uid,thisid,targetid)
	local count = s_getVar(uid,116,73)
	if count >= 2 then
		s_sysInfo(uid,"每天只能使用2次视察报告",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	else
		s_sysInfo(uid,"今日还能使用".. 2-count .."次视察报告",ChatPos_Sys + ChatPos_Important)
	end
	s_addVar(uid,116,73,count + 1)
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local value = 0
	if quality == EquipQuality_White then
		value = 1
	elseif quality == EquipQuality_Blue then
		value = 1.5
	elseif quality == EquipQuality_Yellow then
		value = 2
	elseif quality == EquipQuality_Green then
		value = 3
	else
		value = 6
	end
	local exp = 30 * (50+0.1*level^2.2) * value
	if s_deleteItemByThisID(uid,thisid,1,"删除视察报告") == VALUE_OK then
		s_refreshExp(uid,exp,ExpType_Item,55056)
	end
	return VALUE_OK
end
