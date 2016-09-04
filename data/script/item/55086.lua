--充值星耀宝箱
function OnUseItemEvent_55086(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55086") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level <=90 then
		s_openPalace(uid,55086,1)
	else
		s_openPalace(uid,55086,2)
	end
	return VALUE_OK
end
