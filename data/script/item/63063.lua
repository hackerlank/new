--爱拍超级玩家(初)
function OnUseItemEvent_63063(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63063") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,179)
	return VALUE_OK
end

--爱拍超级玩家(中)
function OnUseItemEvent_63064(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63064") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,180)
	return VALUE_OK
end

--爱拍超级玩家(高)
function OnUseItemEvent_63065(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63065") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addTitle(SCENE_ENTRY_PLAYER,uid,181)
	return VALUE_OK
end
