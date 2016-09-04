function OnUseItemEvent_63037(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63037") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,63037,0)
	return VALUE_OK
end
