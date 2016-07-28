--131超级玩家(初)
function OnUseItemEvent_63328(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63328") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,233)
	return VALUE_OK
end

--131超级玩家(中)
function OnUseItemEvent_63329(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63329") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,234)
	return VALUE_OK
end

--131超级玩家(高)
function OnUseItemEvent_63330(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63330") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,235)
	return VALUE_OK
end
