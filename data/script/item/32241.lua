--充值星耀宝箱
function OnUseItemEvent_32241(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32241") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32241,0)
	return VALUE_OK
end
