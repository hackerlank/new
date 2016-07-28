--勋章、戒指类
function OnUseItemTaskReward(uid,thisid,quality,level,item1,item2)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,item1,3,1,1,quality,"任务奖励",level.."级勋章包")
		s_addItem(uid,item1,3,1,1,quality,"任务奖励",level.."级勋章包")
	else
		s_addItem(uid,item2,3,1,1,quality,"任务奖励",level.."级勋章包")
		s_addItem(uid,item2,3,1,1,quality,"任务奖励",level.."级勋章包")
	end
	s_deleteItemByThisID(uid,thisid,1,"使用扣除")
	return VALUE_OK
end

--戒指包（23级）
function OnUseItemEvent_35006(uid,thisid)	return OnUseItemTaskReward(uid,thisid,"1-1,6-1,7-2",23,13105,13205)	end
--戒指包（33级）
function OnUseItemEvent_35007(uid,thisid)	return OnUseItemTaskReward(uid,thisid,"1-1,6-1,7-3",33,13105,13205)	end
--戒指包（43级）
function OnUseItemEvent_35008(uid,thisid)	return OnUseItemTaskReward(uid,thisid,"1-1,6-2,7-3",43,13105,13205)	end
--戒指包（53级）
function OnUseItemEvent_35009(uid,thisid)	return OnUseItemTaskReward(uid,thisid,"1-1,6-2,7-3",53,13105,13205)	end
--勋章包（15级）
function OnUseItemEvent_35010(uid,thisid)	return OnUseItemTaskReward(uid,thisid,"1-1,6-1,7-1",15,12105,12205)	end
--勋章包（25级）
function OnUseItemEvent_35011(uid,thisid)	return OnUseItemTaskReward(uid,thisid,"1-1,6-1,7-3",25,12105,12205)	end
--勋章包（55级）
function OnUseItemEvent_35012(uid,thisid)	return OnUseItemTaskReward(uid,thisid,"1-1,6-2,7-3",55,12105,12105)	end
--护腕包（41级）
function OnUseItemEvent_35013(uid,thisid)	return OnUseItemTaskReward(uid,thisid,"1-1,6-2,7-3",41,17105,17205)	end
--戒指包（13级）
function OnUseItemEvent_35015(uid,thisid)	return OnUseItemTaskReward(uid,thisid,"1-1,6-1,7-1",13,13105,13205)	end

--武器类
function OnUseItemTaskReward_Weapon(uid,thisid,quality,item1,item2,item3,item4,item5,item6)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier then
		s_addItem(uid,item1,3,1,1,quality,"任务奖励绿色武器")
	end
	if pro == Profession_Spy then
		s_addItem(uid,item2,3,1,1,quality,"任务奖励绿色武器")
	end
	if pro == Profession_Gunman then
		s_addItem(uid,item3,3,1,1,quality,"任务奖励绿色武器")
	end
	if pro == Profession_Blast then
		s_addItem(uid,item4,3,1,1,quality,"任务奖励绿色武器")
	end
	if pro == Profession_Freeman then
		s_addItem(uid,item5,3,1,1,quality,"任务奖励绿色武器")
	end
	if pro == Profession_Doctor then
		s_addItem(uid,item6,3,1,1,quality,"任务奖励绿色武器")
	end
	s_deleteItemByThisID(uid,thisid,1,"使用扣除")
	return VALUE_OK
end

--武器包（51级）
function OnUseItemEvent_35014(uid,thisid)	return OnUseItemTaskReward_Weapon(uid,thisid,"1-1,6-2,7-3",1005,2005,3005,4005,5005,6005)	end
--武器包（31级）
function OnUseItemEvent_35016(uid,thisid)	return OnUseItemTaskReward_Weapon(uid,thisid,"1-1,6-1,7-3",1003,2003,3003,4003,5003,6003)	end
