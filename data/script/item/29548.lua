--活力点宝箱(铜)
function OnUseItemEvent_29548(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29548") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getWorldLevel() == 1 then
		s_openPalace(uid,29548,1)
	elseif s_getWorldLevel() <= 4 then
		s_openPalace(uid,29548,2)
	else
		s_openPalace(uid,29548,3)
	end
	return VALUE_OK
end
