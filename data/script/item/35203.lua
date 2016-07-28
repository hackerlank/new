--5-7星星星和金礼包
function OnUseItemEvent_35203(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_35203") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,35203,0)
	return VALUE_OK
end
