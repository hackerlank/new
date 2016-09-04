--766新手卡(1级)
function OnUseItemEvent_32118(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32118") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32119,0,1,0,"1-1","766新手卡(1级)")
	s_addItem(uid,6,0,1,0,"1-1","766新手卡(1级)")
	return VALUE_OK
end

--766新手卡 (10级)
function OnUseItemEvent_32119(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32119") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32120,0,1,0,"1-1","766新手卡(10级)")
	s_addItem(uid,23051,0,5,0,"1-1","766新手卡(10级)")
	s_addItem(uid,6,0,5,0,"1-1","766新手卡(10级)")
	s_addItem(uid,30017,0,15,0,"1-1","766新手卡(10级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 1)
	return VALUE_OK
end

--766新手卡 (20级)
function OnUseItemEvent_32120(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32120") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32121,0,1,0,"1-1","766新手卡(20级)")
	s_addItem(uid,6,0,10,0,"1-1","766新手卡(20级)")
	s_addItem(uid,27108,0,20,0,"1-1","766新手卡(20级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 2)
	s_addItem(uid,23051,0,25,0,"1-1","766新手卡(20级)")
	s_addItem(uid,43011,0,25,0,"1-1","766新手卡(20级)")
	s_addItem(uid,31147,0,5,0,"1-1","766新手卡(20级)")
	s_addItem(uid,31145,0,5,0,"1-1","766新手卡(20级)")
	s_addItem(uid,29066,0,25,0,"1-1","766新手卡(20级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","766新手卡(20级)")
	s_addItem(uid,30017,0,10,0,"1-1","766新手卡(20级)")
	s_addItem(uid,26141,0,10,0,"1-1","766新手卡(20级)")
	s_addItem(uid,26018,0,5,0,"1-1","766新手卡(20级)")
	return VALUE_OK
end

--766新手卡 (30级)
function OnUseItemEvent_32121(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32121") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32122,0,1,0,"1-1","766新手卡(30级)")
	s_addItem(uid,6,0,20,0,"1-1","766新手卡(30级)")
	s_addItem(uid,27108,0,40,0,"1-1","766新手卡(30级)")
	s_addItem(uid,29800,0,1,0,"1-1","766新手卡(30级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 3)
	s_addItem(uid,23051,0,50,0,"1-1","766新手卡(30级)")
	s_addItem(uid,43011,0,50,0,"1-1","766新手卡(30级)")
	s_addItem(uid,26130,0,10,0,"1-1","766新手卡(30级)")
	s_addItem(uid,31147,0,25,0,"1-1","766新手卡(30级)")
	s_addItem(uid,31145,0,25,0,"1-1","766新手卡(30级)")
	s_addItem(uid,29066,0,50,0,"1-1","766新手卡(30级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","766新手卡(30级)")
	s_addItem(uid,30017,0,10,0,"1-1","766新手卡(30级)")
	s_addItem(uid,24041,0,1,0,"1-1","766新手卡(30级)")
	return VALUE_OK
end

--766新手卡 (40级)
function OnUseItemEvent_32122(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32122") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32123,0,1,0,"1-1","766新手卡(40级)")
	s_addItem(uid,6,0,40,0,"1-1","766新手卡(40级)")
	s_addItem(uid,27108,0,40,0,"1-1","766新手卡(40级)")
	s_addItem(uid,29800,0,1,0,"1-1","766新手卡(40级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 4)
	s_addItem(uid,23051,0,75,0,"1-1","766新手卡(40级)")
	s_addItem(uid,43011,0,75,0,"1-1","766新手卡(40级)")
	s_addItem(uid,26130,0,20,0,"1-1","766新手卡(40级)")
	s_addItem(uid,31147,0,50,0,"1-1","766新手卡(40级)")
	s_addItem(uid,31145,0,50,0,"1-1","766新手卡(40级)")
	s_addItem(uid,29066,0,75,0,"1-1","766新手卡(40级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","766新手卡(40级)")
	s_addItem(uid,30017,0,10,0,"1-1","766新手卡(40级)")
	s_addItem(uid,26141,0,10,0,"1-1","766新手卡(40级)")
	s_addItem(uid,26018,0,5,0,"1-1","766新手卡(40级)")
	s_addItem(uid,29002,0,1,0,"1-1","766新手卡(40级)")
	return VALUE_OK
end

--766新手卡 (50级)
function OnUseItemEvent_32123(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32123") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32124,0,1,0,"1-1","766新手卡(50级)")
	s_addItem(uid,6,0,70,0,"1-1","766新手卡(50级)")
	s_addItem(uid,27108,0,40,0,"1-1","766新手卡(50级)")
	s_addItem(uid,29800,0,2,0,"1-1","766新手卡(50级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,100,0,"1-1","766新手卡(50级)")
	s_addItem(uid,43011,0,100,0,"1-1","766新手卡(50级)")
	s_addItem(uid,26130,0,30,0,"1-1","766新手卡(50级)")
	s_addItem(uid,31147,0,50,0,"1-1","766新手卡(50级)")
	s_addItem(uid,31145,0,50,0,"1-1","766新手卡(50级)")
	s_addItem(uid,29066,0,125,0,"1-1","766新手卡(50级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","766新手卡(50级)")
	s_addItem(uid,30017,0,20,0,"1-1","766新手卡(50级)")
	s_addItem(uid,31905,0,1,0,"1-1","766新手卡(50级)")
	return VALUE_OK
end

--766新手卡 (60级)
function OnUseItemEvent_32124(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32124") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32125,0,1,0,"1-1","766新手卡(60级)")
	s_addItem(uid,6,0,100,0,"1-1","766新手卡(60级)")
	s_addItem(uid,27108,0,40,0,"1-1","766新手卡(60级)")
	s_addItem(uid,29800,0,2,0,"1-1","766新手卡(60级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,125,0,"1-1","766新手卡(60级)")
	s_addItem(uid,43011,0,125,0,"1-1","766新手卡(60级)")
	s_addItem(uid,31147,0,50,0,"1-1","766新手卡(60级)")
	s_addItem(uid,31145,0,50,0,"1-1","766新手卡(60级)")
	s_addItem(uid,29066,0,125,0,"1-1","766新手卡(60级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","766新手卡(60级)")
	s_addItem(uid,30017,0,20,0,"1-1","766新手卡(60级)")
	s_addItem(uid,26143,0,1,0,"1-1","766新手卡(60级)")
	s_addItem(uid,26018,0,10,0,"1-1","766新手卡(60级)")
	s_addItem(uid,52013,0,1,0,"1-1,3-604800","766新手卡(60级)")
	return VALUE_OK
end

--766新手卡 (70级)
function OnUseItemEvent_32125(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32125") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,150,0,"1-1","766新手卡(70级)")
	s_addItem(uid,27108,0,50,0,"1-1","766新手卡(70级)")
	s_addItem(uid,29800,0,2,0,"1-1","766新手卡(70级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 10)
	s_addItem(uid,23051,0,250,0,"1-1","766新手卡(70级)")
	s_addItem(uid,43011,0,250,0,"1-1","766新手卡(70级)")
	s_addItem(uid,31147,0,50,0,"1-1","766新手卡(70级)")
	s_addItem(uid,31145,0,50,0,"1-1","766新手卡(70级)")
	s_addItem(uid,29066,0,125,0,"1-1","766新手卡(70级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-3","766新手卡(70级)")
	s_addItem(uid,29061,0,125,0,"1-1","766新手卡(70级)")
	s_addItem(uid,30017,0,30,0,"1-1","766新手卡(70级)")
	s_addItem(uid,26143,0,2,0,"1-1","766新手卡(70级)")
	s_addItem(uid,26018,0,20,0,"1-1","766新手卡(70级)")
	s_addItem(uid,29002,0,1,0,"1-1","766新手卡(70级)")
	return VALUE_OK
end
