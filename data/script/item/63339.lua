--百度超级玩家(初)
function OnUseItemEvent_63339(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63339") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,236)
	return VALUE_OK
end

--百度超级玩家(中)
function OnUseItemEvent_63340(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63340") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,237)
	return VALUE_OK
end

--百度超级玩家(高)
function OnUseItemEvent_63341(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63341") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,238)
	return VALUE_OK
end
