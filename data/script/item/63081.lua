--公会界超级玩家(初)
function OnUseItemEvent_63081(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63081") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,197)
	return VALUE_OK
end

--公会界超级玩家(中)
function OnUseItemEvent_63082(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63082") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,198)
	return VALUE_OK
end

--公会界超级玩家(高)
function OnUseItemEvent_63083(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63083") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,199)
	return VALUE_OK
end
