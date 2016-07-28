--离线经验胶囊
function OnUseItemEvent_34007(uid,thisid)
	local exp = s_getItemValue(uid,thisid,Item_Attribute_TakeExp)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,exp,ExpType_Exchange,34007)
	return VALUE_OK
end
