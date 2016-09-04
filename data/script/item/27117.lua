--扳手，野外修理装备
function OnUseItemEvent_27117(uid,thisid,targetid)
	if checkEquip(uid,targetid) ~= VALUE_OK then
		s_sysInfo(uid,"只能修理装备")
		return VALUE_FAIL
	end
	if s_getItemValue(uid,targetid,Item_Attribute_Judge) == 0 then
		s_sysInfo(uid,"不能修理未鉴定装备")
		return VALUE_FAIL
	end
	local dur = s_getItemValue(uid,targetid,Item_Attribute_Dur)
	local maxdur = s_getItemValue(uid,targetid,Item_Attribute_MaxDur)
	if dur >= maxdur then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_27117") == VALUE_OK then
		s_repairItem(uid,targetid)
		return VALUE_OK
	end
	return VALUE_FAIL
end
