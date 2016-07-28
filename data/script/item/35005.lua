--任务奖励绿色武器
function OnUseItemEvent_35005(uid,thisid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier then
		s_addItem(uid,1000,3,1,2,"1-1,6-1,7-3","任务奖励绿色武器")
	end
	if pro == Profession_Spy then
		s_addItem(uid,2000,3,1,2,"1-1,6-1,7-3","任务奖励绿色武器")
	end
	if pro == Profession_Gunman then
		s_addItem(uid,3000,3,1,2,"1-1,6-1,7-3","任务奖励绿色武器")
	end
	if pro == Profession_Blast then
		s_addItem(uid,4000,3,1,2,"1-1,6-1,7-3","任务奖励绿色武器")
	end
	if pro == Profession_Freeman then
		s_addItem(uid,5000,3,1,2,"1-1,6-1,7-3","任务奖励绿色武器")
	end
	if pro == Profession_Doctor then
		s_addItem(uid,6000,3,1,2,"1-1,6-1,7-3","任务奖励绿色武器")
	end
	s_deleteItemByThisID(uid,thisid,1,"使用扣除")
	return VALUE_OK
end
