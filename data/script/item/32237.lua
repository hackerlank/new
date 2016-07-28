--充值星耀宝箱
function OnUseItemEvent_32237(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32237") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32237,0)
	return VALUE_OK
end
