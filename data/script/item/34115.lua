--100000经验秘宝
function OnUseItemEvent_34115(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,100000,ExpType_Item,34115)
	return VALUE_OK
end
