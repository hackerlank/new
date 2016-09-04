function OnUseItemEvent_63038(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63038") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,63038,0)
	return VALUE_OK
end
