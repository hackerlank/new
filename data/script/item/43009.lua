--宠物指挥棒
function OnUseItemEvent_43009(uid,thisid,targetid)
	local count = s_getVar(uid,116,49)
	if count >= 10 then
		s_sysInfo(uid,"每天只能使用10次指挥棒",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	else
		s_sysInfo(uid,"今日还能使用".. 9-count .."次指挥棒",ChatPos_Sys + ChatPos_Important)
	end
	s_addVar(uid,116,49,count + 1)
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	local newnum = 0
	if quality == EquipQuality_White then
		newnum = 120
	elseif quality == EquipQuality_Blue then
		newnum = 320
	elseif quality == EquipQuality_Yellow then
		newnum = 600
	else
		newnum = 1000
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除指挥棒") == VALUE_OK then
		s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CIRCLE_POINT,newnum)
	end
	s_sysInfo(uid,"当前指挥点"..s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CIRCLE_POINT).."点")
	RefreshTaskDailyInfo(uid,49111)
	return VALUE_OK
end
