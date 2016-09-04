--任务奖励5星武器
function OnUseItemEvent_35001(uid,thisid,targetid)
	local fun = "OnUseItemEvent_35001("..uid..","..thisid..")"
	s_showbar(uid,5000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_35001(uid,thisid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier then
		s_addItem(uid,1004,3,1,1,"1-1,2-5,6-1,7-3","任务奖励5星武器")
	end
	if pro == Profession_Spy then
		s_addItem(uid,2004,3,1,1,"1-1,2-5,6-1,7-3","任务奖励5星武器")
	end
	if pro == Profession_Gunman then
		s_addItem(uid,3004,3,1,1,"1-1,2-5,6-1,7-3","任务奖励5星武器")
	end
	if pro == Profession_Blast then
		s_addItem(uid,4004,3,1,1,"1-1,2-5,6-1,7-3","任务奖励5星武器")
	end
	if pro == Profession_Freeman then
		s_addItem(uid,5004,3,1,1,"1-1,2-5,6-1,7-3","任务奖励5星武器")
	end
	if pro == Profession_Doctor then
		s_addItem(uid,6004,3,1,1,"1-1,2-5,6-1,7-3","任务奖励5星武器")
	end
	s_deleteItemByThisID(uid,thisid,1,"使用扣除")
end
