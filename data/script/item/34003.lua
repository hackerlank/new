--3等奖经验胶囊
function OnUseItemEvent_34003(uid,thisid)
	local exp = s_getItemValue(uid,thisid,Item_Attribute_TakeExp)
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,exp,ExpType_Exchange,34003)
	return VALUE_OK
end
