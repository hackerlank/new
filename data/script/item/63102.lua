--开服超级玩家(初)
function OnUseItemEvent_63102(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63102") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,218)
	return VALUE_OK
end

--开服超级玩家(中)
function OnUseItemEvent_63103(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63103") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,219)
	return VALUE_OK
end

--开服超级玩家(高)
function OnUseItemEvent_63104(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63104") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,220)
	return VALUE_OK
end
