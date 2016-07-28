--神之水滴
function OnUseItemEvent_55048(uid,thisid,targetid)
	local count = s_getVar(uid,116,51)
	if count >= 10 then
		s_sysInfo(uid,"每天只能使用10次神之水滴",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	else
		s_sysInfo(uid,"今日还能使用".. 9-count .."次神之水滴",ChatPos_Sys + ChatPos_Important)
	end
	s_addVar(uid,116,51,count + 1)
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local value = 0
	if quality == EquipQuality_White then
		value = 125
	elseif quality == EquipQuality_Blue then
		value = 320
	elseif quality == EquipQuality_Yellow then
		value = 550
	else
		value = 1000
	end
	local exp = value * (50+0.1*level^2.2)
	if s_deleteItemByThisID(uid,thisid,1,"删除神之水滴") == VALUE_OK then
		s_refreshExp(uid,exp,ExpType_Item,55048)
	end
	return VALUE_OK
end
