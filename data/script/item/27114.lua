--装备绑定卡
function OnUseItemEvent_27114(userid,thisid,targetid)
	if targetid == thisid then
		s_sysInfo(userid,"暂时不提供绑定装备绑定卡")
		return VALUE_FAIL
	end
	if s_getItemValue(userid,targetid,Item_Attribute_Bind) ~= 0 then
		s_sysInfo(userid,"该物品已经绑定")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_27114") == VALUE_OK then
		s_setItemValue(userid,targetid,Item_Attribute_Bind,1)
		s_refreshItem(userid,targetid)
		return VALUE_OK
	end
	return VALUE_FAIL
end
