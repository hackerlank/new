--神魂觉醒体验包
function OnUseItemEvent_55269(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55269") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55263,3,5,1,"1-1,2-1","OnUseItemEvent_55269")
	s_addItem(uid,55264,3,20,1,"1-1","OnUseItemEvent_55269")
	return VALUE_OK
end

