--委托达成证明
function OnUseItemEvent_55063(uid,thisid,targetid)
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local value = 0
	if quality == EquipQuality_White then
		value = 1
	elseif quality == EquipQuality_Blue then
		value = 1.5
	elseif quality == EquipQuality_Yellow then
		value = 2.5
	elseif quality == EquipQuality_Green then
		value = 4
	else
		value = 5
	end
	local exp = 60 * (0.3*level^2.2-250) * value
	if s_deleteItemByThisID(uid,thisid,1,"删除委托达成证明") == VALUE_OK then
		s_refreshExp(uid,exp,ExpType_Item,55063)
	end
	return VALUE_OK
end
