--巴士游戏超级玩家(初)
function OnUseItemEvent_63114(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63114") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,230)
	return VALUE_OK
end

--巴士游戏超级玩家(中)
function OnUseItemEvent_63115(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63115") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,231)
	return VALUE_OK
end

--巴士游戏超级玩家(高)
function OnUseItemEvent_63116(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63116") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,232)
	return VALUE_OK
end
