
function OnUseItemEvent_55309(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55309") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openTreasure(uid,55309,0,thisid)
	return VALUE_OK
end
