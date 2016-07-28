--1000赠点券
function OnUseItemEvent_14(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_GoldTicket,1000,"1000赠点券")
	return VALUE_OK
end

