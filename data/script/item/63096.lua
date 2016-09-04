--火象网超级玩家(初)
function OnUseItemEvent_63096(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63096") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,212)
	return VALUE_OK
end

--火象网超级玩家(中)
function OnUseItemEvent_63097(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63097") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,213)
	return VALUE_OK
end

--火象网超级玩家(高)
function OnUseItemEvent_63098(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63098") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,214)
	return VALUE_OK
end
