--天极超级玩家(初)
function OnUseItemEvent_63075(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63075") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,191)
	return VALUE_OK
end

--天极超级玩家(中)
function OnUseItemEvent_63076(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63076") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,192)
	return VALUE_OK
end

--天极超级玩家(高)
function OnUseItemEvent_63077(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63077") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,193)
	return VALUE_OK
end
