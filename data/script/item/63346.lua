function OnUseItemEvent_63346(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63346") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,63346,0)
	return VALUE_OK
end
