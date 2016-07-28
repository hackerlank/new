--新手卡礼包
function OnUseItemEvent_34116(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34117,0,1,0,"1-1","新手卡礼包")
	return VALUE_OK
end
function OnUseItemEvent_34117(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34118,0,1,0,"1-1","新手卡礼包")
	s_addItem(uid,26130,0,30,0,"1-1","新手卡礼包") --命运骰子
	s_addItem(uid,29050,0,5,0,"1-1","新手卡礼包") --超能胶囊
	return VALUE_OK
end
function OnUseItemEvent_34118(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34119,0,1,0,"1-1","新手卡礼包")
	s_addItem(uid,27108,0,40,0,"1-1","新手卡礼包") --升级宝石
	s_addItem(uid,26102,0,30,0,"1-1","新手卡礼包") --幸运宝石
	return VALUE_OK
end
function OnUseItemEvent_34119(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34120,0,1,0,"1-1","新手卡礼包")
	s_addMoney(uid,MoneyType_GoldTicket,1000,"新手卡礼包")
	s_addItem(uid,29026,0,30,0,"1-1","新手卡礼包") --血精石
	return VALUE_OK
end
function OnUseItemEvent_34120(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34121,0,1,0,"1-1","新手卡礼包")
	local profession = s_getValue(SCENE_ENTRY_PLAYER,uid, VALUE_TYPE_PROFESSION)
	if profession == Profession_Soldier then
		s_addItem(uid,1004,0,1,1,"1-1,7-3,6-1","新手卡礼包")
	elseif profession == Profession_Spy then
		s_addItem(uid,2004,0,1,1,"1-1,7-3,6-1","新手卡礼包")
	elseif profession == Profession_Gunman then
		s_addItem(uid,3004,0,1,1,"1-1,7-3,6-1","新手卡礼包")
	elseif profession == Profession_Blast then
		s_addItem(uid,4004,0,1,1,"1-1,7-3,6-1","新手卡礼包")
	elseif profession == Profession_Freeman then
		s_addItem(uid,5004,0,1,1,"1-1,7-3,6-1","新手卡礼包")
	elseif profession == Profession_Doctor then
		s_addItem(uid,6004,0,1,1,"1-1,7-3,6-1","新手卡礼包")
	end
	s_addItem(uid,26113,0,10,0,"1-1","新手卡礼包") --经验药剂
	return VALUE_OK
end
function OnUseItemEvent_34121(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,500,0,"1-1","新手卡礼包") --升级宝石
	s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_EXP_MEDAL,1000)
	return VALUE_OK
end
