--高级xingxing合金宝箱
function OnUseItemEvent_35209(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_35209") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,35209,0)
	return VALUE_OK
end
