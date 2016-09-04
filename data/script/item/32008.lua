--新浪激战卡

--使用1级激战卡礼包
function OnUseItemEvent_32008(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32008") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32012,0,1,0,"1-1","新浪激战卡")
	s_addItem(uid,29522,0,1,0,"1-1","新浪激战卡")
	s_addItem(uid,6,0,1,0,"1-1","新浪激战卡")
	s_addItem(uid,23031,0,5,0,"1-1","新浪激战卡")
	s_addItem(uid,23041,0,5,0,"1-1","新浪激战卡")
	return VALUE_OK
end
