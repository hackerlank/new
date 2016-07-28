
function OnUseItemEvent_55315(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55315") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openTreasure(uid,55315,0,thisid)
	return VALUE_OK
end
