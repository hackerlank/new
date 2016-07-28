--360激战卡

--使用1级激战卡礼包
function OnUseItemEvent_32032(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32032") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32012,0,1,0,"1-1","360激战卡")
	s_addItem(uid,29528,0,1,0,"1-1","360激战卡")
	s_addItem(uid,6,0,1,0,"1-1","360激战卡")
	s_addItem(uid,23031,0,5,0,"1-1","360激战卡")
	s_addItem(uid,23041,0,5,0,"1-1","360激战卡")
	return VALUE_OK
end
