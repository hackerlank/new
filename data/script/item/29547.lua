--活力点宝箱(铜)
function OnUseItemEvent_29547(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29547") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getWorldLevel() == 1 then
		s_openPalace(uid,29547,1)
	elseif s_getWorldLevel() <= 4 then
		s_openPalace(uid,29547,2)
	else
		s_openPalace(uid,29547,3)
	end
	return VALUE_OK
end
