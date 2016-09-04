--魔幻卡牌 3白同色奖励
function OnUseItemEvent_55044(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55044") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,0,5,0,"1-1","OnUseItemEvent_55044")
	return VALUE_OK
end
--魔幻卡牌 3蓝同色奖励
function OnUseItemEvent_55045(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55045") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,14,0,1,0,"1-1","OnUseItemEvent_55045")
	return VALUE_OK
end
