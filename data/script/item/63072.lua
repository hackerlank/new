--硅谷动力超级玩家(初)
function OnUseItemEvent_63072(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63072") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,188)
	return VALUE_OK
end

--硅谷动力超级玩家(中)
function OnUseItemEvent_63073(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63073") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,189)
	return VALUE_OK
end

--硅谷动力超级玩家(高)
function OnUseItemEvent_63074(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63074") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,190)
	return VALUE_OK
end
