--神魂觉醒体验包
function OnUseItemEvent_55265(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55265") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55263,3,1,1,"1-1,2-1","OnUseItemEvent_55265")
	s_addItem(uid,55263,3,1,1,"1-1,2-2","OnUseItemEvent_55265")
	s_addItem(uid,55263,3,1,1,"1-1,2-3","OnUseItemEvent_55265")
	s_addItem(uid,55264,3,10,1,"1-1","OnUseItemEvent_55265")
	s_addItem(uid,55264,3,5,1,"1-1,7-2","OnUseItemEvent_55265")
	return VALUE_OK
end

