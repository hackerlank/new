--17173新手卡(1级)
function OnUseItemEvent_32052(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32052") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,29518,0,5,0,"1-1","17173新手卡(1级)")
	else
		s_addItem(uid,29519,0,5,0,"1-1","17173新手卡(1级)")
	end
	if s_getWorldLevel() < 2 then
		s_addItem(uid,29144,0,1,0,"1-1","多玩新手卡(1级)")
	end
	s_addItem(uid,32053,0,1,0,"1-1","17173新手卡(1级)")
	s_addItem(uid,6,0,5,0,"1-1","17173新手卡(1级)")
	return VALUE_OK
end

--使用17173新手卡(10级)
function OnUseItemEvent_32053(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32053") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32054,0,1,0,"1-1","17173新手卡(10级)")
	s_addItem(uid,23051,0,10,0,"1-1","17173新手卡(10级)")
	s_addItem(uid,6,0,10,0,"1-1","17173新手卡(10级)")
	s_addItem(uid,30017,0,20,0,"1-1","17173新手卡(10级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 1)
	return VALUE_OK
end

--使用17173新手卡(20级)
function OnUseItemEvent_32054(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32054") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20184,0,1,1,"1-1,7-0","17173新手卡(20级)")
	else
		s_addItem(uid,20179,0,1,1,"1-1,7-0","17173新手卡(20级)")
	end
	s_addItem(uid,32055,0,1,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,6,0,15,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,27108,0,30,0,"1-1","17173新手卡(20级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 2)
	s_addItem(uid,23051,0,50,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,43011,0,30,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,31147,0,5,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,31145,0,5,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,29066,0,25,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,47001,0,10,0,"1-1,7-2","17173新手卡(20级)")
	s_addItem(uid,30017,0,15,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,26141,0,10,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,26018,0,5,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,34005,0,1,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,34005,0,1,0,"1-1","17173新手卡(20级)")
	s_addItem(uid,24048,0,1,0,"1-1","17173新手卡(20级)")
	return VALUE_OK
end

--使用17173新手卡(30级)
function OnUseItemEvent_32055(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32055") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32056,0,1,0,"1-1","17173新手卡(30级)")
	s_addItem(uid,6,0,25,0,"1-1","17173新手卡(30级)")
	s_addItem(uid,27108,0,60,0,"1-1","17173新手卡(30级)")
	s_addItem(uid,29800,0,1,0,"1-1","17173新手卡(30级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 3)
	s_addItem(uid,23051,0,75,0,"1-1","17173新手卡(30级)")
	s_addItem(uid,43011,0,50,0,"1-1","17173新手卡(30级)")
	s_addItem(uid,26130,0,20,0,"1-1","17173新手卡(30级)")
	s_addItem(uid,31147,0,25,0,"1-1","17173新手卡(30级)")
	s_addItem(uid,31145,0,25,0,"1-1","17173新手卡(30级)")
	s_addItem(uid,29066,0,50,0,"1-1","17173新手卡(30级)")
	s_addItem(uid,47001,0,10,0,"1-1,7-2","17173新手卡(30级)")
	s_addItem(uid,30017,0,15,0,"1-1","17173新手卡(30级)")
	s_addItem(uid,29550,0,5,0,"1-1","17173新手卡(30级)")
	return VALUE_OK
end

--使用17173新手卡(40级)
function OnUseItemEvent_32056(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32056") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32057,0,1,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,6,0,40,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,27108,0,80,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,29800,0,1,0,"1-1","17173新手卡(40级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 4)
	s_addItem(uid,23051,0,100,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,43011,0,80,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,26130,0,30,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,31147,0,50,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,31145,0,50,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,29066,0,75,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,47001,0,20,0,"1-1,7-2","17173新手卡(40级)")
	s_addItem(uid,30017,0,15,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,26141,0,10,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,26018,0,5,0,"1-1","17173新手卡(40级)")
	s_addItem(uid,29002,0,1,0,"1-1","17173新手卡(40级)")
	return VALUE_OK
end

--使用17173新手卡(50级)
function OnUseItemEvent_32057(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32057") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32058,0,1,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,6,0,70,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,27108,0,80,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,29800,0,2,0,"1-1","17173新手卡(50级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,150,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,43011,0,100,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,26130,0,50,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,31147,0,50,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,31145,0,50,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,29066,0,125,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,47001,0,20,0,"1-1,7-2","17173新手卡(50级)")
	s_addItem(uid,30017,0,20,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,27114,0,10,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,24049,0,1,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,34005,0,1,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,34005,0,1,0,"1-1","17173新手卡(50级)")
	s_addItem(uid,34005,0,1,0,"1-1","17173新手卡(50级)")
	return VALUE_OK
end

--使用17173新手卡(60级)
function OnUseItemEvent_32058(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32058") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20184,0,1,1,"1-1,7-1","17173新手卡(60级)")
	else
		s_addItem(uid,20179,0,1,1,"1-1,7-1","17173新手卡(60级)")
	end
	s_addItem(uid,32059,0,1,0,"1-1","17173新手卡(60级)")
	s_addItem(uid,6,0,100,0,"1-1","17173新手卡(60级)")
	s_addItem(uid,27108,0,80,0,"1-1","17173新手卡(60级)")
	s_addItem(uid,29800,0,2,0,"1-1","17173新手卡(60级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,200,0,"1-1","17173新手卡(60级)")
	s_addItem(uid,43011,0,125,0,"1-1","17173新手卡(60级)")
	s_addItem(uid,31147,0,50,0,"1-1","17173新手卡(60级)")
	s_addItem(uid,31145,0,50,0,"1-1","17173新手卡(60级)")
	s_addItem(uid,29066,0,125,0,"1-1","17173新手卡(60级)")
	s_addItem(uid,47001,0,20,0,"1-1,7-2","17173新手卡(60级)")
	s_addItem(uid,30017,0,20,0,"1-1","17173新手卡(60级)")
	s_addItem(uid,26143,0,1,0,"1-1","17173新手卡(60级)")
	s_addItem(uid,26018,0,10,0,"1-1","17173新手卡(60级)")
	s_addItem(uid,52014,0,1,0,"1-1,3-604800","17173新手卡(60级)")
	s_addItem(uid,29550,0,5,0,"1-1","17173新手卡(60级)")
	return VALUE_OK
end

--使用17173新手卡(70级)
function OnUseItemEvent_32059(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32059") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20184,0,1,1,"1-1,7-2","17173新手卡(70级)")
	else
		s_addItem(uid,20179,0,1,1,"1-1,7-2","17173新手卡(70级)")
	end
	s_addItem(uid,6,0,150,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,27108,0,100,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,29800,0,2,0,"1-1","17173新手卡(70级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 10)
	s_addItem(uid,23051,0,250,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,43011,0,250,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,31147,0,50,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,31145,0,50,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,29066,0,100,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-3","17173新手卡(70级)")
	s_addItem(uid,29061,0,125,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,30017,0,30,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,26143,0,2,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,26018,0,20,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,29003,0,1,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,24050,0,1,0,"1-1","17173新手卡(70级)")
	s_addItem(uid,27114,0,10,0,"1-1","17173新手卡(70级)")
	return VALUE_OK
end
