--彩聊月卡
function OnUseItemEvent_23058(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return
	end
	s_addbuff(SCENE_ENTRY_PLAYER,uid,85,1,30*24*60*60)
	return VALUE_OK
end
