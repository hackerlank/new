--支付宝礼包

--使用5级支付宝礼包
function OnUseItemEvent_32024(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32024") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32025,0,1,0,"1-1","支付宝礼包")
	return VALUE_OK
end

--使用15级支付宝礼包
function OnUseItemEvent_32025(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32025") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32026,0,1,0,"1-1","支付宝礼包")
	s_addItem(uid,29147,0,1,0,"1-1","支付宝礼包")
	s_addItem(uid,29047,0,1,0,"1-1","支付宝礼包")
	s_addItem(uid,29247,0,1,0,"1-1","支付宝礼包")
	s_addItem(uid,29527,0,1,0,"1-1","支付宝礼包")
	return VALUE_OK
end

--使用25级支付宝礼包
function OnUseItemEvent_32026(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32026") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32027,0,1,0,"1-1","支付宝礼包")
	s_addItem(uid,27108,0,5,0,"1-1","支付宝礼包")
	s_addItem(uid,29066,0,1,0,"1-1,7-1","支付宝礼包")
	return VALUE_OK
end

--使用35级支付宝礼包
function OnUseItemEvent_32027(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32027") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32028,0,1,0,"1-1","支付宝礼包")
	s_addItem(uid,26102,0,5,0,"1-1","支付宝礼包")
	s_addItem(uid,26130,0,5,0,"1-1","支付宝礼包")
	s_addItem(uid,23031,0,5,0,"1-1","支付宝礼包")
	return VALUE_OK
end


--使用45级激战卡礼包
function OnUseItemEvent_32028(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32028") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32029,0,1,0,"1-1","支付宝礼包")
	s_addItem(uid,23021,0,1,0,"1-1","支付宝礼包")
	s_addItem(uid,31147,0,1,0,"1-1","支付宝礼包")
	s_addItem(uid,27108,0,10,0,"1-1","支付宝礼包")
	s_addItem(uid,26139,0,1,0,"1-1","支付宝礼包")
	return VALUE_OK
end

--使用55级激战卡礼包
function OnUseItemEvent_32029(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32029") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32030,0,1,0,"1-1","支付宝礼包")
	s_addItem(uid,26128,0,5,0,"1-1","支付宝礼包")
	s_addItem(uid,29025,0,1,0,"1-1","支付宝礼包")
	s_addItem(uid,26102,0,10,0,"1-1","支付宝礼包")
	return VALUE_OK
end

--使用65级激战卡礼包
function OnUseItemEvent_32030(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32030") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29061,0,1,0,"1-1,7-1","支付宝礼包")
	s_addItem(uid,26113,0,5,0,"1-1","支付宝礼包")
	s_addItem(uid,24023,0,1,0,"1-1","支付宝礼包")
	return VALUE_OK
end
