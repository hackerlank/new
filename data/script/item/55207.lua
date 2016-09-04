--牛郎织女的再会
function OnUseItemEvent_55207(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55207") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,55207,0)
	return VALUE_OK
end
