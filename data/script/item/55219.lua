--3v3再接再厉奖章
function OnUseItemEvent_55219(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55219") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,55219,0)
	return VALUE_OK
end
