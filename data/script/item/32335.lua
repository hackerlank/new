--多玩贵族礼包(1级)
function OnUseItemEvent_32335(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32335") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29517,0,1,0,"1-1","多玩贵族礼包(1级)")
	s_addItem(uid,32336,0,1,0,"1-1","多玩贵族礼包(1级)")
	s_addItem(uid,6,0,1,0,"1-1","多玩贵族礼包(1级)")
	return VALUE_OK
end

--使用17173新手卡(10级)
function OnUseItemEvent_32336(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32336") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32337,0,1,0,"1-1","多玩贵族礼包(10级)")
	s_addItem(uid,23051,0,5,0,"1-1","多玩贵族礼包(10级)")
	s_addItem(uid,6,0,5,0,"1-1","多玩贵族礼包(10级)")
	s_addItem(uid,30017,0,15,0,"1-1","多玩贵族礼包(10级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 1)
	return VALUE_OK
end

--使用17173新手卡(20级)
function OnUseItemEvent_32337(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32337") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20184,0,1,1,"1-1,7-0","多玩贵族礼包(20级)")
	else
		s_addItem(uid,20179,0,1,1,"1-1,7-0","多玩贵族礼包(20级)")
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,17105,0,1,0,"7-2,6-1,4-1,1-1,19-4,10-37,91-3","21级黄色护腕")
	else
		s_addItem(uid,17205,0,1,0,"7-2,6-1,4-1,1-1,19-4,11-37,91-3","21级魔黄色护腕")
	end
	s_addItem(uid,32338,0,1,0,"1-1","多玩贵族礼包(20级)")
	s_addItem(uid,6,0,10,0,"1-1","多玩贵族礼包(20级)")
	s_addItem(uid,27108,0,20,0,"1-1","多玩贵族礼包(20级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 2)
	s_addItem(uid,23051,0,25,0,"1-1","多玩贵族礼包(20级)")
	s_addItem(uid,43011,0,25,0,"1-1","多玩贵族礼包(20级)")
	s_addItem(uid,31147,0,5,0,"1-1","多玩贵族礼包(20级)")
	s_addItem(uid,31145,0,5,0,"1-1","多玩贵族礼包(20级)")
	s_addItem(uid,29066,0,25,0,"1-1","多玩贵族礼包(20级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","多玩贵族礼包(20级)")
	s_addItem(uid,30017,0,15,0,"1-1","多玩贵族礼包(20级)")
	s_addItem(uid,26141,0,10,0,"1-1","多玩贵族礼包(20级)")
	s_addItem(uid,26018,0,5,0,"1-1","多玩贵族礼包(20级)")
	return VALUE_OK
end

--使用17173新手卡(30级)
function OnUseItemEvent_32338(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32338") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,17105,0,1,0,"7-2,6-1,4-1,1-1,19-4,10-37,91-3","31级黄色护腕")
	else
		s_addItem(uid,17205,0,1,0,"7-2,6-1,4-1,1-1,19-4,11-37,91-3","31级魔黄色护腕")
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,17105,0,1,0,"7-2,6-1,4-1,1-1,19-4,10-37,91-3","31级黄色护腕")
	else
		s_addItem(uid,17205,0,1,0,"7-2,6-1,4-1,1-1,19-4,11-37,91-3","31级魔黄色护腕")
	end
	s_addItem(uid,32339,0,1,0,"1-1","多玩贵族礼包(30级)")
	s_addItem(uid,6,0,20,0,"1-1","多玩贵族礼包(30级)")
	s_addItem(uid,27108,0,40,0,"1-1","多玩贵族礼包(30级)")
	s_addItem(uid,29800,0,1,0,"1-1","多玩贵族礼包(30级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 3)
	s_addItem(uid,23051,0,50,0,"1-1","多玩贵族礼包(30级)")
	s_addItem(uid,43011,0,50,0,"1-1","多玩贵族礼包(30级)")
	s_addItem(uid,26130,0,10,0,"1-1","多玩贵族礼包(30级)")
	s_addItem(uid,31147,0,25,0,"1-1","多玩贵族礼包(30级)")
	s_addItem(uid,31145,0,25,0,"1-1","多玩贵族礼包(30级)")
	s_addItem(uid,29066,0,50,0,"1-1","多玩贵族礼包(30级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","多玩贵族礼包(30级)")
	s_addItem(uid,30017,0,10,0,"1-1","多玩贵族礼包(30级)")
	s_addItem(uid,29552,0,5,0,"1-1","多玩贵族礼包(30级)")
	return VALUE_OK
end

--使用17173新手卡(40级)
function OnUseItemEvent_32339(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32339") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,17105,0,1,0,"7-2,6-1,4-1,1-1,19-4,10-37,91-3","41级黄色护腕")
	else
		s_addItem(uid,17205,0,1,0,"7-2,6-1,4-1,1-1,19-4,11-37,91-3","41级魔黄色护腕")
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,17105,0,1,0,"7-2,6-1,4-1,1-1,19-4,10-37,91-3","41级黄色护腕")
	else
		s_addItem(uid,17205,0,1,0,"7-2,6-1,4-1,1-1,19-4,11-37,91-3","41级魔黄色护腕")
	end
	s_addItem(uid,32340,0,1,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,6,0,40,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,27108,0,40,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,29800,0,1,0,"1-1","多玩贵族礼包(40级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 4)
	s_addItem(uid,23051,0,75,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,43011,0,75,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,26130,0,20,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,31147,0,50,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,31145,0,50,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,29066,0,75,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","多玩贵族礼包(40级)")
	s_addItem(uid,30017,0,10,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,26141,0,10,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,26018,0,5,0,"1-1","多玩贵族礼包(40级)")
	s_addItem(uid,29001,0,1,0,"1-1","多玩贵族礼包(40级)")
	return VALUE_OK
end

--使用17173新手卡(50级)
function OnUseItemEvent_32340(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32340") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,17105,0,1,0,"7-2,6-1,4-1,1-1,19-4,10-37,91-3","51级黄色护腕")
	else
		s_addItem(uid,17205,0,1,0,"7-2,6-1,4-1,1-1,19-4,11-37,91-3","51级魔黄色护腕")
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,17105,0,1,0,"7-2,6-1,4-1,1-1,19-4,10-37,91-3","51级黄色护腕")
	else
		s_addItem(uid,17205,0,1,0,"7-2,6-1,4-1,1-1,19-4,11-37,91-3","51级魔黄色护腕")
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,15105,0,1,0,"7-3,6-1,4-1,1-1,19-4,10-37,91-3","57级绿色头盔")
	else
		s_addItem(uid,15205,0,1,0,"7-3,6-1,4-1,1-1,19-4,11-37,91-3","57级魔绿色头盔")
	end
	s_addItem(uid,32341,0,1,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,6,0,70,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,27108,0,40,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,29800,0,2,0,"1-1","多玩贵族礼包(50级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 4)
	s_addItem(uid,23051,0,100,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,43011,0,100,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,26130,0,50,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,31147,0,50,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,31145,0,50,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,29066,0,100,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","多玩贵族礼包(50级)")
	s_addItem(uid,30017,0,20,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,29002,0,1,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,26114,0,8,0,"1-1","多玩贵族礼包(50级)")
	s_addItem(uid,26018,0,5,0,"1-1","多玩贵族礼包(50级)")
	return VALUE_OK
end

--使用17173新手卡(60级)
function OnUseItemEvent_32341(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32341") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20184,0,1,1,"1-1,7-1","多玩贵族礼包(60级)")
	else
		s_addItem(uid,20179,0,1,1,"1-1,7-1","多玩贵族礼包(60级)")
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,17106,0,1,0,"7-2,6-1,4-1,1-1,19-4,10-37,91-3","61级黄色护腕")
	else
		s_addItem(uid,17206,0,1,0,"7-2,6-1,4-1,1-1,19-4,11-37,91-3","61级魔黄色护腕")
	end
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,17106,0,1,0,"7-2,6-1,4-1,1-1,19-4,10-37,91-3","61级黄色护腕")
	else
		s_addItem(uid,17206,0,1,0,"7-2,6-1,4-1,1-1,19-4,11-37,91-3","61级魔黄色护腕")
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,16106,0,1,0,"7-3,6-1,4-1,1-1,19-4,10-37,91-3","67级绿色头盔")
	else
		s_addItem(uid,16206,0,1,0,"7-3,6-1,4-1,1-1,19-4,11-37,91-3","67级魔绿色头盔")
	end
	s_addItem(uid,32342,0,1,0,"1-1","多玩贵族礼包(60级)")
	s_addItem(uid,6,0,100,0,"1-1","多玩贵族礼包(60级)")
	s_addItem(uid,27108,0,40,0,"1-1","多玩贵族礼包(60级)")
	s_addItem(uid,29800,0,2,0,"1-1","多玩贵族礼包(60级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,125,0,"1-1","多玩贵族礼包(60级)")
	s_addItem(uid,43011,0,125,0,"1-1","多玩贵族礼包(60级)")
	s_addItem(uid,31147,0,50,0,"1-1","多玩贵族礼包(60级)")
	s_addItem(uid,31145,0,50,0,"1-1","多玩贵族礼包(60级)")
	s_addItem(uid,29066,0,100,0,"1-1","多玩贵族礼包(60级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","多玩贵族礼包(60级)")
	s_addItem(uid,30017,0,20,0,"1-1","多玩贵族礼包(60级)")
	s_addItem(uid,26143,0,1,0,"1-1","多玩贵族礼包(60级)")
	s_addItem(uid,26018,0,10,0,"1-1","多玩贵族礼包(60级)")
	return VALUE_OK
end

--使用17173新手卡(70级)
function OnUseItemEvent_32342(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32342") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,18107,0,1,0,"7-3,6-1,4-1,1-1,19-4,10-37,91-3","77级绿色头盔")
	else
		s_addItem(uid,18207,0,1,0,"7-3,6-1,4-1,1-1,19-4,11-37,91-3","77级魔绿色头盔")
	end
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,19107,0,1,0,"7-3,6-1,4-1,1-1,19-4,10-37,91-3","77级绿色头盔")
	else
		s_addItem(uid,19207,0,1,0,"7-3,6-1,4-1,1-1,19-4,11-37,91-3","77级魔绿色头盔")
	end
	s_addItem(uid,6,0,150,0,"1-1","多玩贵族礼包(70级)")
	s_addItem(uid,27108,0,50,0,"1-1","多玩贵族礼包(70级)")
	s_addItem(uid,29800,0,2,0,"1-1","多玩贵族礼包(70级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 10)
	s_addItem(uid,23051,0,250,0,"1-1","多玩贵族礼包(70级)")
	s_addItem(uid,43011,0,250,0,"1-1","多玩贵族礼包(70级)")
	s_addItem(uid,31147,0,50,0,"1-1","多玩贵族礼包(70级)")
	s_addItem(uid,31145,0,50,0,"1-1","多玩贵族礼包(70级)")
	s_addItem(uid,29066,0,125,0,"1-1","多玩贵族礼包(70级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-3","多玩贵族礼包(70级)")
	s_addItem(uid,29061,0,100,0,"1-1","多玩贵族礼包(70级)")
	s_addItem(uid,30017,0,30,0,"1-1","多玩贵族礼包(70级)")
	s_addItem(uid,26143,0,2,0,"1-1","多玩贵族礼包(70级)")
	s_addItem(uid,26018,0,20,0,"1-1","多玩贵族礼包(70级)")
	return VALUE_OK
end
