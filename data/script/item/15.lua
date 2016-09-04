--1000赠点券
function OnUseItemEvent_15(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_GoldTicket,10000,"10000赠点券")
	return VALUE_OK
end
