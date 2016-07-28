--766超级玩家(初)
function OnUseItemEvent_63060(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63060") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,176)
	return VALUE_OK
end

--766超级玩家(中)
function OnUseItemEvent_63061(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63061") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,177)
	return VALUE_OK
end

--766超级玩家(高)
function OnUseItemEvent_63062(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63062") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,178)
	return VALUE_OK
end
