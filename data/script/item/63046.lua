function OnUseItemEvent_63046(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63046") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,63046,0)
	return VALUE_OK
end
