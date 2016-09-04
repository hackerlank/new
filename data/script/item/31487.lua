--真爱永恒
function OnUseItemEvent_31487(uid,thisid)
	--使用道具
	if s_deleteItemByThisID(uid,thisid,1,"使用真爱永恒") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_PLAYER,uid,20235,1,3600*24*258)
	return VALUE_OK
end
