--10点声望
function OnUseItemEvent_8(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ALL_PRESTIGE,10)
	return VALUE_OK
end

--50点声望
function OnUseItemEvent_22(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ALL_PRESTIGE,50)
	return VALUE_OK
end
