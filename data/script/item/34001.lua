--1等奖经验胶囊
function OnUseItemEvent_34001(uid,thisid)
	local exp = s_getItemValue(uid,thisid,Item_Attribute_TakeExp)
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,exp,ExpType_Exchange,34001)
	return VALUE_OK
end
