local OlympicGamesGold = 38
--奥运结束奖励（免费）
function OnUseItemEvent_31532(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_GoldTicket,OlympicGamesGold*20,"奥运结束奖励免费")
	return VALUE_OK
end

--奥运结束奖励（1金）
function OnUseItemEvent_31533(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_GoldTicket,OlympicGamesGold*40,"奥运结束奖励1")
	return VALUE_OK
end

--奥运结束奖励（2888金）
function OnUseItemEvent_31534(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_GoldTicket,OlympicGamesGold*80,"奥运结束奖励2888")
	return VALUE_OK
end

--奥运结束奖励（8888金）
function OnUseItemEvent_31535(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_GoldTicket,OlympicGamesGold*200,"奥运结束奖励8888")
	return VALUE_OK
end
