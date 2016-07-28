--旺财红包
function OnUseItemEvent_55084(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55084") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,55084,0)
	return VALUE_OK
end
