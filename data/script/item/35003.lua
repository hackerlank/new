--任务奖励31级项链包
function OnUseItemEvent_35003(uid,thisid,targetid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,11105,3,1,2,"1-1,6-1,7-3","任务奖励31级项链包")
	else
		s_addItem(uid,11205,3,1,2,"1-1,6-1,7-3","任务奖励31级项链包")
	end
	s_deleteItemByThisID(uid,thisid,1,"使用扣除")
	return VALUE_OK
end
