--充值星耀宝箱
function OnUseItemEvent_55085(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55085") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level <=90 then
		s_openTreasure(uid,55085,1,thisid)
	else
		s_openTreasure(uid,55085,2,thisid)
	end
	return VALUE_OK
end
