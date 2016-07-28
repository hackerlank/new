--生命之痕
function OnUseItemEvent_55308(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55308") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,55308,0)
	return VALUE_OK
end

