--物减孢子
function OnUseItemEvent_43016(uid,thisid,targetid)
	local targettype = s_getItemValue(uid,targetid,Item_Base_Type)
	if targettype ~= 41 then
		return  VALUE_FAIL
	end
	local demonlevel = s_getItemValue(uid,targetid,Item_Attribute_Demon_Level)
	if demonlevel < 10 then
		s_sysInfo(uid,"宠物等级低于10级，不能洗属性点")
		return VALUE_FAIL
	end
	local minjie = s_getItemValue(uid,targetid,Item_Attribute_Demon_Minjie)
	if minjie < demonlevel then
		s_sysInfo(uid,"当前属性点值必须高于宠物等级")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_43016") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_setItemValue(uid,targetid,Item_Attribute_Demon_Minjie,minjie - 5)
	local free = s_getItemValue(uid,targetid,Item_Attribute_Demon_NewPoint)
	s_setItemValue(uid,targetid,Item_Attribute_Demon_NewPoint,free+5)
	s_refreshItem(uid,targetid)
	s_sysInfo(uid,string.format("使用成功，当前宠物物抗属性还原为%d点",minjie-5))
	return VALUE_OK
end
