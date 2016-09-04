--要我玩超级玩家(初)
function OnUseItemEvent_63087(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63087") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,203)
	return VALUE_OK
end

--要我玩超级玩家(中)
function OnUseItemEvent_63088(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63088") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,204)
	return VALUE_OK
end

--要我玩超级玩家(高)
function OnUseItemEvent_63089(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63089") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,205)
	return VALUE_OK
end
