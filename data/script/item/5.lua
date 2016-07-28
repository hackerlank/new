--10银币券
function OnUseItemEvent_5(uid,thisid,targetid,number)
	if s_deleteItemByThisID(uid,thisid,number,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_Money,10 * number,"10银币券",MoneyActionTypeAdd_Tick)
	return VALUE_OK
end
