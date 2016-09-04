--20000经验秘宝
function OnUseItemEvent_34114(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,20000,ExpType_Item,34114)
	return VALUE_OK
end
