--充值星耀宝箱
function OnUseItemEvent_32238(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32238") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32238,0)
	return VALUE_OK
end
