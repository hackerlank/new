--杰瑞超级玩家(初)
function OnUseItemEvent_63099(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63099") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,215)
	return VALUE_OK
end

--杰瑞超级玩家(中)
function OnUseItemEvent_63100(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63100") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,216)
	return VALUE_OK
end

--杰瑞超级玩家(高)
function OnUseItemEvent_63101(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63101") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,217)
	return VALUE_OK
end
