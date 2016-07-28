--公主的奖章
function OnUseItemEvent_31495(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除公主的奖章") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,20238)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,20238,1,60*60)
	return VALUE_OK
end
