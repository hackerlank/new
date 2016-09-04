--团介绍信
function OnUseItemEvent_29065(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_setField(uid,UserVar_CorpsLeave,0)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,70)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,74)
	return VALUE_OK
end
