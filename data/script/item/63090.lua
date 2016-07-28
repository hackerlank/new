--E8超级玩家(初)
function OnUseItemEvent_63090(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63090") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,206)
	return VALUE_OK
end

--E8超级玩家(中)
function OnUseItemEvent_63091(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63091") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,207)
	return VALUE_OK
end

--E8超级玩家(高)
function OnUseItemEvent_63092(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63092") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,208)
	return VALUE_OK
end
