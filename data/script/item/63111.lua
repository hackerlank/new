--一起乐超级玩家(初)
function OnUseItemEvent_63111(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63111") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,227)
	return VALUE_OK
end

--一起乐超级玩家(中)
function OnUseItemEvent_63112(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63112") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,228)
	return VALUE_OK
end

--一起乐超级玩家(高)
function OnUseItemEvent_63113(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63113") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,229)
	return VALUE_OK
end
