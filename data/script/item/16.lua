--100可交易赠点券
function OnUseItemEvent_16(uid,thisid)
	local times = s_getVar(uid,10008,16)
	if times >= 54 then
		s_messageBox(uid,"今天本道具已达使用上限")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_GoldTicket,100,"可交易赠点券",MoneyActionTypeAdd_Tick)
	s_messageBox(uid,"今天还可使用本道具".. 54 - times .. "张")
	times = times + 1
	s_addVar(uid,10008,16,times)
	return VALUE_OK
end
