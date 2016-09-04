--寄养证
function OnUseItemEvent_23061(uid,thisid,targetid)
	local itemtype = s_getItemValue(uid,targetid,-1)
	if itemtype ~= ItemType_Demon then
		s_sysInfo(uid,"只能对宠物使用")
		return VALUE_FAIL
	end
	s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_23061")
	local num = s_getItemValue(uid,targetid,Item_Attribute_Demon_Scholar)
	s_setItemValue(uid,targetid,Item_Attribute_Demon_Scholar,num + 60)
	s_refreshItem(uid,targetid)
	s_refreshDemonScholar(uid,targetid,num+60)
	return VALUE_OK
end
