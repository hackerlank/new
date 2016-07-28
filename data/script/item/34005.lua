--新手经验胶囊
function OnUseItemEvent_34005(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,5000,ExpType_Exchange,34005)
	return VALUE_OK
end
