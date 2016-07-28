--增加状态道具
function OnUseItemEvent_55320(uid,thisid)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local step = s_getEvent(Relation_Country,homeland,CountryEv_QingBao)
	if step == EventStep_Run then
		s_sysInfo(uid,"国家情报发布期间，不可使用该道具")
		return VALUE_FAIL
	end
	local step1 = s_getEvent(Relation_Country,homeland,CountryEv_YuanZheng)
	if step1 == EventStep_Run then
		s_sysInfo(uid,"国家远征发布期间，不可使用该道具")
		return VALUE_FAIL
	end
	local step2 = s_getEvent(Relation_Country,homeland,CountryEv_GuoYun)
	if step2 == EventStep_Run then
		s_sysInfo(uid,"国运发布期间，不可使用该道具")
		return VALUE_FAIL
	end
	local step3 = s_getEvent(Relation_Country,homeland,CountryEv_Dancing)
	if step3 == EventStep_Run then
		s_sysInfo(uid,"国家舞会期间，不可使用该道具")
		return VALUE_FAIL
	end
	local step4 = s_getEvent(Relation_World,homeland,WorldEv_Time)
	if step4 == EventStep_Run then
		s_sysInfo(uid,"系统国家活动期间，不可使用该道具")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"增加状态") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_PLAYER,uid,31071,1,3600)
	return VALUE_OK
end
