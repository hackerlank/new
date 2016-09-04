--100赠点券
function OnUseItemEvent_10(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_GoldTicket,100,"100赠点券")
	return VALUE_OK
end
