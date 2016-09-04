--任务奖励41级勋章包
function OnUseItemEvent_35004(uid,thisid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,12105,3,1,1,"1-1,6-2,7-3","任务奖励41级勋章包")
		s_addItem(uid,12105,3,1,1,"1-1,6-2,7-3","任务奖励41级勋章包")
	else
		s_addItem(uid,12205,3,1,1,"1-1,6-2,7-3","任务奖励41级勋章包")
		s_addItem(uid,12205,3,1,1,"1-1,6-2,7-3","任务奖励41级勋章包")
	end
	s_deleteItemByThisID(uid,thisid,1,"使用扣除")
	return VALUE_OK
end
