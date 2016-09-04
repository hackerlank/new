--普通激战卡

--使用1级激战卡礼包
function OnUseItemEvent_32004(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32004") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32012,0,1,0,"1-1","OnUseItemEvent_32004")
	s_addItem(uid,6,0,1,0,"1-1","OnUseItemEvent_32004")
	s_addItem(uid,23031,0,5,0,"1-1","OnUseItemEvent_32004")
	s_addItem(uid,23041,0,5,0,"1-1","OnUseItemEvent_32004")
	return VALUE_OK
end

--使用10级激战卡礼包
function OnUseItemEvent_32012(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32012") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,2,0,"1-1","新手卡")
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	--if pro == Profession_Soldier or pro == Profession_Gunman then
	--s_addItem(uid,11100,0,1,0,"7-3,6-1,4-1,1-1,17-2,10-22,78-2","7级绿色项链")
	--else
	--s_addItem(uid,11200,0,1,0,"7-3,6-1,4-1,1-1,17-2,11-22,79-2","7级魔绿色项链")
	--end
	s_addItem(uid,32013,0,1,0,"1-1","OnUseItemEvent_32012")
	s_addItem(uid,26102,0,5,0,"1-1","OnUseItemEvent_32012")
	s_addItem(uid,26113,0,2,0,"1-1","OnUseItemEvent_32012")
	return VALUE_OK
end

--使用20级激战卡礼包
function OnUseItemEvent_32013(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32013") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,3,0,"1-1","新手卡")
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	--if pro == Profession_Soldier or pro == Profession_Gunman then
	--s_addItem(uid,12105,0,1,0,"7-3,6-1,4-1,1-1,18-3,10-32,84-5","OnUseItemEvent_32013")
	--else
	--s_addItem(uid,12205,0,1,0,"7-3,6-1,4-1,1-1,18-3,11-32,84-5","OnUseItemEvent_32013")
	--end
	s_addItem(uid,32014,0,1,0,"1-1","OnUseItemEvent_32013")
	s_addItem(uid,27108,0,10,0,"1-1","OnUseItemEvent_32013")
	s_addItem(uid,26102,0,5,0,"1-1","OnUseItemEvent_32013")
	s_addItem(uid,26113,0,2,0,"1-1","OnUseItemEvent_32013")
	s_addItem(uid,26130,0,10,0,"1-1","OnUseItemEvent_32013")
	return VALUE_OK
end

--使用30级激战卡礼包
function OnUseItemEvent_32014(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32014") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,4,0,"1-1","新手卡")
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	--if pro == Profession_Soldier or pro == Profession_Gunman then
	--s_addItem(uid,13103,0,1,0,"7-3,6-1,4-1,1-1,19-4,10-37,91-3","OnUseItemEvent_32014")
	--else
	--s_addItem(uid,13203,0,1,0,"7-3,6-1,4-1,1-1,19-4,11-37,91-3","OnUseItemEvent_32014")
	--end
	s_addItem(uid,32015,0,1,0,"1-1","OnUseItemEvent_32014")
	s_addItem(uid,27108,0,10,0,"1-1","OnUseItemEvent_32014")
	s_addItem(uid,26102,0,5,0,"1-1","OnUseItemEvent_32014")
	s_addItem(uid,26113,0,2,0,"1-1","OnUseItemEvent_32014")
	s_addItem(uid,26130,0,10,0,"1-1","OnUseItemEvent_32014")
	s_addItem(uid,26128,0,5,0,"1-1","OnUseItemEvent_32014")
	s_addItem(uid,26115,0,1,0,"1-1","OnUseItemEvent_32014")
	return VALUE_OK
end


--使用40级激战卡礼包
function OnUseItemEvent_32015(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32015") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32016,0,1,0,"1-1","OnUseItemEvent_32015")
	s_addItem(uid,6,0,6,0,"1-1","OnUseItemEvent_32015")
	--s_addItem(uid,19105,0,1,0,"7-3,6-1,4-1,1-1,21-4,14-50,15-26,80-5","OnUseItemEvent_32015")
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_32015")
	s_addItem(uid,26102,0,5,0,"1-1","OnUseItemEvent_32015")
	s_addItem(uid,26113,0,2,0,"1-1","OnUseItemEvent_32015")
	s_addItem(uid,26130,0,10,0,"1-1","OnUseItemEvent_32015")
	s_addItem(uid,26128,0,5,0,"1-1","OnUseItemEvent_32015")
	s_addItem(uid,26115,0,1,0,"1-1","OnUseItemEvent_32015")
	return VALUE_OK
end

--使用50级激战卡礼包
function OnUseItemEvent_32016(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32016") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32017,0,1,0,"1-1","OnUseItemEvent_32016")
	s_addItem(uid,6,0,8,0,"1-1","新手卡")
	--s_addItem(uid,17205,0,1,0,"7-3,6-1,4-1,1-1,22-6,14-28,15-60,81-7","OnUseItemEvent_32016")
	--s_addItem(uid,16105,0,1,0,"7-3,6-1,4-1,1-1,23-7,14-78,15-36,25-200","OnUseItemEvent_32016")
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_32016")
	s_addItem(uid,26102,0,5,0,"1-1","OnUseItemEvent_32016")
	s_addItem(uid,26113,0,2,0,"1-1","OnUseItemEvent_32016")
	s_addItem(uid,26130,0,10,0,"1-1","OnUseItemEvent_32016")
	s_addItem(uid,26128,0,5,0,"1-1","OnUseItemEvent_32016")
	s_addItem(uid,26139,0,1,0,"1-1","OnUseItemEvent_32016")
	return VALUE_OK
end

--使用60级激战卡礼包
function OnUseItemEvent_32017(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32016") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,10,0,"1-1","新手卡")
	--s_addItem(uid,14206,0,1,0,"7-3,6-1,4-1,1-1,24-9,15-103,16-1792,80-10,81-10","OnUseItemEvent_32017")
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_32017")
	s_addItem(uid,26102,0,5,0,"1-1","OnUseItemEvent_32017")
	s_addItem(uid,26113,0,2,0,"1-1","OnUseItemEvent_32017")
	s_addItem(uid,26130,0,10,0,"1-1","OnUseItemEvent_32017")
	s_addItem(uid,26128,0,5,0,"1-1","OnUseItemEvent_32017")
	s_addItem(uid,26115,0,1,0,"1-1","OnUseItemEvent_32017")
	return VALUE_OK
end
