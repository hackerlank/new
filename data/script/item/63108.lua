--耀游超级玩家(初)
function OnUseItemEvent_63108(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63108") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,224)
	return VALUE_OK
end

--耀游超级玩家(中)
function OnUseItemEvent_63109(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63109") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,225)
	return VALUE_OK
end

--耀游超级玩家(高)
function OnUseItemEvent_63110(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63110") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,226)
	return VALUE_OK
end
