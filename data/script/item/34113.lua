--5000经验秘宝
function OnUseItemEvent_34113(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,5000,ExpType_Item,34113)
	return VALUE_OK
end
