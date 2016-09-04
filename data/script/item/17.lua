--100金币
function OnUseItemEvent_17(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_Gold,100,"金币道具")
	return VALUE_OK
end

