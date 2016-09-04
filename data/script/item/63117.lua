--巴士游戏超级玩家(初)
function OnUseItemEvent_63117(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63117") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,173)
	return VALUE_OK
end

--巴士游戏超级玩家(中)
function OnUseItemEvent_63118(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63118") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,174)
	return VALUE_OK
end

--巴士游戏超级玩家(高)
function OnUseItemEvent_63119(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63119") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,175)
	return VALUE_OK
end
