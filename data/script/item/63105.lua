--热游超级玩家(初)
function OnUseItemEvent_63105(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63105") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,221)
	return VALUE_OK
end

--热游超级玩家(中)
function OnUseItemEvent_63106(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63106") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,222)
	return VALUE_OK
end

--热游超级玩家(高)
function OnUseItemEvent_63107(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63107") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,223)
	return VALUE_OK
end
