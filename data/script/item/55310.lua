
function OnUseItemEvent_55310(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55310") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openTreasure(uid,55310,0,thisid)
	return VALUE_OK
end
