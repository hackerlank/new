--玉髓礼盒
function OnUseItemEvent_63367(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63367") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,63367,0)
	return VALUE_OK
end
