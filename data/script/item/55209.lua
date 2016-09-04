--七夕结婚贺礼
function OnUseItemEvent_55209(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55209") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,22058,3,1,0,"1-1","超级生命激活")
	s_addItem(uid,29031,3,9,0,"1-1","红玫瑰")
	s_addItem(uid,30008,3,3,0,"1-1","烟花")
	return VALUE_OK
end
