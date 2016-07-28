--普通情人卡

--使用1级情人卡礼包
function OnUseItemEvent_32037(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32037") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32046,0,1,0,"1-1","情人礼包（1级）")
	s_addItem(uid,6,0,1,0,"1-1","情人礼包（1级）")
	s_addItem(uid,23031,0,5,0,"1-1","情人礼包（1级）")
	s_addItem(uid,23041,0,5,0,"1-1","情人礼包（1级）")
	return VALUE_OK
end

--使用10级情人卡礼包
function OnUseItemEvent_32046(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32046") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,2,0,"1-1","新手卡")
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	--if pro == Profession_Soldier or pro == Profession_Gunman then
	--s_addItem(uid,11100,0,1,0,"7-3,6-1,4-1,1-1,17-2,10-22,78-2","7级绿色项链")
	--else
	--s_addItem(uid,11200,0,1,0,"7-3,6-1,4-1,1-1,17-2,11-22,79-2","7级魔绿色项链")
	--end
	s_addItem(uid,32047,0,1,0,"1-1","情人礼包（10级）")
	s_addItem(uid,26102,0,5,0,"1-1","情人礼包（10级）")
	s_addItem(uid,26113,0,2,0,"1-1","情人礼包（10级）")
	s_addItem(uid,29047,0,3,0,"1-1","情人礼包（10级）")
	return VALUE_OK
end

--使用20级情人卡礼包
function OnUseItemEvent_32047(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32047") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,3,0,"1-1","新手卡")
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	--if pro == Profession_Soldier or pro == Profession_Gunman then
	--s_addItem(uid,12105,0,1,0,"7-3,6-1,4-1,1-1,18-3,10-32,84-5","25级绿色勋章")
	--else
	--s_addItem(uid,12205,0,1,0,"7-3,6-1,4-1,1-1,18-3,11-32,84-5","25级魔绿色勋章")
	--end
	s_addItem(uid,32048,0,1,0,"1-1","情人礼包（20级）")
	s_addItem(uid,27108,0,10,0,"1-1","情人礼包（20级）")
	s_addItem(uid,26102,0,5,0,"1-1","情人礼包（20级）")
	s_addItem(uid,26113,0,2,0,"1-1","情人礼包（20级）")
	s_addItem(uid,26130,0,10,0,"1-1","情人礼包（20级）")
	s_addItem(uid,31145,0,1,0,"1-1,7-1","情人礼包（20级）")
	return VALUE_OK
end

--使用30级情人卡礼包
function OnUseItemEvent_32048(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32048") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,4,0,"1-1","新手卡")
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	--if pro == Profession_Soldier or pro == Profession_Gunman then
	--s_addItem(uid,13103,0,1,0,"7-3,6-1,4-1,1-1,19-4,10-37,91-3","33级绿色戒指")
	--else
	--s_addItem(uid,13203,0,1,0,"7-3,6-1,4-1,1-1,19-4,11-37,91-3","33级魔绿色戒指")
	--end
	s_addItem(uid,32049,0,1,0,"1-1","情人礼包（30级）")
	s_addItem(uid,27108,0,10,0,"1-1","情人礼包（30级）")
	s_addItem(uid,26102,0,5,0,"1-1","情人礼包（30级）")
	s_addItem(uid,26113,0,2,0,"1-1","情人礼包（30级）")
	s_addItem(uid,26130,0,10,0,"1-1","情人礼包（30级）")
	s_addItem(uid,26128,0,5,0,"1-1","情人礼包（30级）")
	s_addItem(uid,29066,0,1,0,"1-1,7-1","情人礼包（30级）")
	return VALUE_OK
end


--使用40级情人卡礼包
function OnUseItemEvent_32049(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32049") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32050,0,1,0,"1-1","情人礼包（40级）")
	s_addItem(uid,6,0,6,0,"1-1","情人礼包（40级）")
	--s_addItem(uid,19105,0,1,0,"7-3,6-1,4-1,1-1,21-4,14-50,15-26,80-5","情人礼包（40级）")
	s_addItem(uid,27108,0,20,0,"1-1","情人礼包（40级）")
	s_addItem(uid,26102,0,5,0,"1-1","情人礼包（40级）")
	s_addItem(uid,26113,0,2,0,"1-1","情人礼包（40级）")
	s_addItem(uid,26130,0,10,0,"1-1","情人礼包（40级）")
	s_addItem(uid,26128,0,5,0,"1-1","情人礼包（40级）")
	s_addItem(uid,31145,0,1,0,"1-1,7-2","情人礼包（40级）")
	return VALUE_OK
end

--使用50级情人卡礼包
function OnUseItemEvent_32050(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32050") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32051,0,1,0,"1-1","情人礼包（50级）")
	s_addItem(uid,6,0,8,0,"1-1","情人礼包（50级）")
	--s_addItem(uid,17205,0,1,0,"7-3,6-1,4-1,1-1,22-6,14-28,15-60,81-7","情人礼包（50级）")
	--s_addItem(uid,16105,0,1,0,"7-3,6-1,4-1,1-1,23-7,14-78,15-36,25-200","情人礼包（50级）")
	s_addItem(uid,27108,0,20,0,"1-1","情人礼包（50级）")
	s_addItem(uid,26102,0,5,0,"1-1","情人礼包（50级）")
	s_addItem(uid,26113,0,2,0,"1-1","情人礼包（50级）")
	s_addItem(uid,26130,0,10,0,"1-1","情人礼包（50级）")
	s_addItem(uid,26128,0,5,0,"1-1","情人礼包（50级）")
	s_addItem(uid,29066,0,1,0,"1-1,7-2","情人礼包（50级）")
	return VALUE_OK
end

--使用60级情人卡礼包
function OnUseItemEvent_32051(uid,thisid)
	s_showbar(uid,1000,fun,UninterruptActionType_None,1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32051") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,10,0,"1-1","情人礼包（60级）")
	--s_addItem(uid,14206,0,1,0,"7-3,6-1,4-1,1-1,24-9,15-103,16-1792,80-10,81-10","情人礼包（60级）")
	s_addItem(uid,27108,0,20,0,"1-1","情人礼包（60级）")
	s_addItem(uid,26102,0,5,0,"1-1","情人礼包（60级）")
	s_addItem(uid,26113,0,2,0,"1-1","情人礼包（60级）")
	s_addItem(uid,26130,0,10,0,"1-1","情人礼包（60级）")
	s_addItem(uid,26128,0,5,0,"1-1","情人礼包（60级）")
	s_addItem(uid,31147,0,1,0,"1-1,7-2","情人礼包（60级）")
	s_addItem(uid,29031,0,20,0,"1-1","情人礼包（60级）")
	return VALUE_OK
end
