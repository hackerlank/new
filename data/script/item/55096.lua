--刺客信条宝箱
function OnUseItemEvent_55096(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55086") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,55096,0)
	return VALUE_OK
end
