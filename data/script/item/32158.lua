--顺网新手卡(1级)
function OnUseItemEvent_32158(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32158") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32159,0,1,0,"1-1","顺网新手卡(1级)")
	s_addItem(uid,29525,0,5,0,"1-1","顺网新手卡(1级)")
	s_addItem(uid,6,0,1,0,"1-1","顺网新手卡(1级)")
	return VALUE_OK
end

--使用17173新手卡(10级)
function OnUseItemEvent_32159(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32159") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32160,0,1,0,"1-1","顺网新手卡(10级)")
	s_addItem(uid,23051,0,5,0,"1-1","顺网新手卡(10级)")
	s_addItem(uid,6,0,5,0,"1-1","顺网新手卡(10级)")
	s_addItem(uid,30017,0,15,0,"1-1","顺网新手卡(10级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 1)
	return VALUE_OK
end

--使用17173新手卡(20级)
function OnUseItemEvent_32160(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32160") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32161,0,1,0,"1-1","顺网新手卡(20级)")
	s_addItem(uid,6,0,10,0,"1-1","顺网新手卡(20级)")
	s_addItem(uid,27108,0,20,0,"1-1","顺网新手卡(20级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 2)
	s_addItem(uid,23051,0,25,0,"1-1","顺网新手卡(20级)")
	s_addItem(uid,43011,0,25,0,"1-1","顺网新手卡(20级)")
	s_addItem(uid,31147,0,5,0,"1-1","顺网新手卡(20级)")
	s_addItem(uid,31145,0,5,0,"1-1","顺网新手卡(20级)")
	s_addItem(uid,29066,0,25,0,"1-1","顺网新手卡(20级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","顺网新手卡(20级)")
	s_addItem(uid,30017,0,10,0,"1-1","顺网新手卡(20级)")
	s_addItem(uid,26141,0,10,0,"1-1","顺网新手卡(20级)")
	s_addItem(uid,26018,0,5,0,"1-1","顺网新手卡(20级)")
	return VALUE_OK
end

--使用17173新手卡(30级)
function OnUseItemEvent_32161(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32161") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32162,0,1,0,"1-1","顺网新手卡(30级)")
	s_addItem(uid,6,0,20,0,"1-1","顺网新手卡(30级)")
	s_addItem(uid,27108,0,40,0,"1-1","顺网新手卡(30级)")
	s_addItem(uid,29800,0,1,0,"1-1","顺网新手卡(30级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 3)
	s_addItem(uid,23051,0,50,0,"1-1","顺网新手卡(30级)")
	s_addItem(uid,43011,0,50,0,"1-1","顺网新手卡(30级)")
	s_addItem(uid,26130,0,10,0,"1-1","顺网新手卡(30级)")
	s_addItem(uid,31147,0,25,0,"1-1","顺网新手卡(30级)")
	s_addItem(uid,31145,0,25,0,"1-1","顺网新手卡(30级)")
	s_addItem(uid,29066,0,50,0,"1-1","顺网新手卡(30级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","顺网新手卡(30级)")
	s_addItem(uid,30017,0,10,0,"1-1","顺网新手卡(30级)")
	s_addItem(uid,24046,0,1,0,"1-1","顺网新手卡(30级)")
	return VALUE_OK
end

--使用17173新手卡(40级)
function OnUseItemEvent_32162(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32162") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32163,0,1,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,6,0,40,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,27108,0,40,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,29800,0,1,0,"1-1","顺网新手卡(40级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 4)
	s_addItem(uid,23051,0,75,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,43011,0,75,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,26130,0,20,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,31147,0,50,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,31145,0,50,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,29066,0,75,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","顺网新手卡(40级)")
	s_addItem(uid,30017,0,10,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,26141,0,10,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,26018,0,5,0,"1-1","顺网新手卡(40级)")
	s_addItem(uid,29002,0,1,0,"1-1","顺网新手卡(40级)")
	return VALUE_OK
end

--使用17173新手卡(50级)
function OnUseItemEvent_32163(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32163") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32164,0,1,0,"1-1","顺网新手卡(50级)")
	s_addItem(uid,6,0,70,0,"1-1","顺网新手卡(50级)")
	s_addItem(uid,27108,0,40,0,"1-1","顺网新手卡(50级)")
	s_addItem(uid,29800,0,2,0,"1-1","顺网新手卡(50级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,100,0,"1-1","顺网新手卡(50级)")
	s_addItem(uid,43011,0,100,0,"1-1","顺网新手卡(50级)")
	s_addItem(uid,26130,0,30,0,"1-1","顺网新手卡(50级)")
	s_addItem(uid,31147,0,50,0,"1-1","顺网新手卡(50级)")
	s_addItem(uid,31145,0,50,0,"1-1","顺网新手卡(50级)")
	s_addItem(uid,29066,0,125,0,"1-1","顺网新手卡(50级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","顺网新手卡(50级)")
	s_addItem(uid,30017,0,20,0,"1-1","顺网新手卡(50级)")
	s_addItem(uid,31905,0,1,0,"1-1","顺网新手卡(50级)")
	return VALUE_OK
end

--使用17173新手卡(60级)
function OnUseItemEvent_32164(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32164") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32165,0,1,0,"1-1","顺网新手卡(60级)")
	s_addItem(uid,6,0,100,0,"1-1","顺网新手卡(60级)")
	s_addItem(uid,27108,0,40,0,"1-1","顺网新手卡(60级)")
	s_addItem(uid,29800,0,2,0,"1-1","顺网新手卡(60级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,125,0,"1-1","顺网新手卡(60级)")
	s_addItem(uid,43011,0,125,0,"1-1","顺网新手卡(60级)")
	s_addItem(uid,31147,0,50,0,"1-1","顺网新手卡(60级)")
	s_addItem(uid,31145,0,50,0,"1-1","顺网新手卡(60级)")
	s_addItem(uid,29066,0,125,0,"1-1","顺网新手卡(60级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","顺网新手卡(60级)")
	s_addItem(uid,30017,0,20,0,"1-1","顺网新手卡(60级)")
	s_addItem(uid,26143,0,1,0,"1-1","顺网新手卡(60级)")
	s_addItem(uid,26018,0,10,0,"1-1","顺网新手卡(60级)")
	s_addItem(uid,52012,0,1,0,"1-1,3-604800","顺网新手卡(60级)")
	return VALUE_OK
end

--使用17173新手卡(70级)
function OnUseItemEvent_32165(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32165") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,150,0,"1-1","顺网新手卡(70级)")
	s_addItem(uid,27108,0,50,0,"1-1","顺网新手卡(70级)")
	s_addItem(uid,29800,0,2,0,"1-1","顺网新手卡(70级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 10)
	s_addItem(uid,23051,0,250,0,"1-1","顺网新手卡(70级)")
	s_addItem(uid,43011,0,250,0,"1-1","顺网新手卡(70级)")
	s_addItem(uid,31147,0,50,0,"1-1","顺网新手卡(70级)")
	s_addItem(uid,31145,0,50,0,"1-1","顺网新手卡(70级)")
	s_addItem(uid,29066,0,125,0,"1-1","顺网新手卡(70级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-3","顺网新手卡(70级)")
	s_addItem(uid,29061,0,125,0,"1-1","顺网新手卡(70级)")
	s_addItem(uid,30017,0,30,0,"1-1","顺网新手卡(70级)")
	s_addItem(uid,26143,0,2,0,"1-1","顺网新手卡(70级)")
	s_addItem(uid,26018,0,20,0,"1-1","顺网新手卡(70级)")
	s_addItem(uid,29002,0,1,0,"1-1","顺网新手卡(70级)")
	return VALUE_OK
end
