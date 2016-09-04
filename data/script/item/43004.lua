--强心液，增加宠物500寿命
function OnUseItemEvent_43004(uid,thisid,targetid)
	local targettype = s_getItemValue(uid,targetid,Item_Base_Type)
	if targettype ~= 41 then
		return VALUE_FAIL
	end
	local life = s_getItemValue(uid,targetid,Item_Attribute_Demon_Life)
	local maxlife = s_getItemValue(uid,targetid,Item_Attribute_Demon_MaxLife)
	if life >= maxlife then
		s_sysInfo(uid,"该宠物寿命达到上限")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_43004") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local add = 500
	if life + add > maxlife then
		s_setItemValue(uid,targetid,Item_Attribute_Demon_Life,maxlife)
		add = maxlife - life
	else
		s_setItemValue(uid,targetid,Item_Attribute_Demon_Life,life+add)
	end
	local name = s_getItemValue(uid,targetid,Item_Attribute_Demon_Name)
	if name == "" then
		name = s_getItemValue(uid,targetid,Item_Base_Name)
	end
	s_sysInfo(uid,string.format("使用成功，%s寿命增加%d",name,add))
	s_refreshItem(uid,targetid)
	return VALUE_OK
end
