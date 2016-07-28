--叶子猪超级玩家(初)
function OnUseItemEvent_63066(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63066") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,182)
	return VALUE_OK
end

--叶子猪超级玩家(中)
function OnUseItemEvent_63067(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63067") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,183)
	return VALUE_OK
end

--叶子猪超级玩家(高)
function OnUseItemEvent_63068(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63068") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,184)
	return VALUE_OK
end
