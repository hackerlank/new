--中华网超级玩家(初)
function OnUseItemEvent_63078(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63078") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,194)
	return VALUE_OK
end

--中华网超级玩家(中)
function OnUseItemEvent_63079(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63079") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,195)
	return VALUE_OK
end

--中华网超级玩家(高)
function OnUseItemEvent_63080(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63080") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,196)
	return VALUE_OK
end
