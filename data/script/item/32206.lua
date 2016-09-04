--BOSS卡片宝箱
function OnUseItemEvent_32206(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32206") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32206,0)
	return VALUE_OK
end
