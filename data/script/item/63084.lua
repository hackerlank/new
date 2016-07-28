--万宇超级玩家(初)
function OnUseItemEvent_63084(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63084") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,200)
	return VALUE_OK
end

--万宇超级玩家(中)
function OnUseItemEvent_63085(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63085") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,201)
	return VALUE_OK
end

--万宇超级玩家(高)
function OnUseItemEvent_63086(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63086") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,202)
	return VALUE_OK
end
