--250绑银券
function OnUseItemEvent_7(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_MoneyTicket,250,"250绑银券",MoneyActionTypeAdd_Tick)
	return VALUE_OK
end
