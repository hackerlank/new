--太平洋超级玩家(初)
function OnUseItemEvent_63069(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63069") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,185)
	return VALUE_OK
end

--太平洋超级玩家(中)
function OnUseItemEvent_63070(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63070") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,186)
	return VALUE_OK
end

--太平洋超级玩家(高)
function OnUseItemEvent_63071(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63071") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,187)
	return VALUE_OK
end
