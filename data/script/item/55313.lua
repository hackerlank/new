
function OnUseItemEvent_55313(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55313") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openTreasure(uid,55313,0,thisid)
	return VALUE_OK
end
