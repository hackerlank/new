--活力点宝箱(铜)
function OnUseItemEvent_29546(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29546") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,29546,0)
	return VALUE_OK
end
