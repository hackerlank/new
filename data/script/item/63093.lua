--I5WAN超级玩家(初)
function OnUseItemEvent_63093(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63093") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,209)
	return VALUE_OK
end

--I5WAN超级玩家(中)
function OnUseItemEvent_63094(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63094") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,210)
	return VALUE_OK
end

--I5WAN超级玩家(高)
function OnUseItemEvent_63095(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63095") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,211)
	return VALUE_OK
end
