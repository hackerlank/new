--178新手卡(1级)
function OnUseItemEvent_32102(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32102") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,41629,0,1,0,"1-1","178新手卡(1级)")
	s_addItem(uid,32103,0,1,0,"1-1","178新手卡(1级)")
	s_addItem(uid,6,0,1,0,"1-1","178新手卡(1级)")
	return VALUE_OK
end

--178新手卡(10级)
function OnUseItemEvent_32103(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32103") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32104,0,1,0,"1-1","178新手卡(10级)")
	s_addItem(uid,23051,0,5,0,"1-1","178新手卡(10级)")
	s_addItem(uid,6,0,5,0,"1-1","178新手卡(10级)")
	s_addItem(uid,30017,0,15,0,"1-1","178新手卡(10级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 1)
	return VALUE_OK
end

--178新手卡(20级)
function OnUseItemEvent_32104(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32104") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32105,0,1,0,"1-1","178新手卡(20级)")
	s_addItem(uid,6,0,10,0,"1-1","178新手卡(20级)")
	s_addItem(uid,27108,0,20,0,"1-1","178新手卡(20级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 2)
	s_addItem(uid,23051,0,25,0,"1-1","178新手卡(20级)")
	s_addItem(uid,43011,0,25,0,"1-1","178新手卡(20级)")
	s_addItem(uid,31147,0,5,0,"1-1","178新手卡(20级)")
	s_addItem(uid,31145,0,5,0,"1-1","178新手卡(20级)")
	s_addItem(uid,29066,0,25,0,"1-1","178新手卡(20级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","178新手卡(20级)")
	s_addItem(uid,30017,0,10,0,"1-1","178新手卡(20级)")
	s_addItem(uid,26141,0,10,0,"1-1","178新手卡(20级)")
	s_addItem(uid,26018,0,5,0,"1-1","178新手卡(20级)")
	return VALUE_OK
end

--178新手卡(30级)
function OnUseItemEvent_32105(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32105") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32106,0,1,0,"1-1","178新手卡(30级)")
	s_addItem(uid,6,0,20,0,"1-1","178新手卡(30级)")
	s_addItem(uid,27108,0,40,0,"1-1","178新手卡(30级)")
	s_addItem(uid,29800,0,1,0,"1-1","178新手卡(30级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 3)
	s_addItem(uid,23051,0,50,0,"1-1","178新手卡(30级)")
	s_addItem(uid,43011,0,50,0,"1-1","178新手卡(30级)")
	s_addItem(uid,26130,0,10,0,"1-1","178新手卡(30级)")
	s_addItem(uid,31147,0,25,0,"1-1","178新手卡(30级)")
	s_addItem(uid,31145,0,25,0,"1-1","178新手卡(30级)")
	s_addItem(uid,29066,0,50,0,"1-1","178新手卡(30级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","178新手卡(30级)")
	s_addItem(uid,30017,0,10,0,"1-1","178新手卡(30级)")
	s_addItem(uid,24039,0,1,0,"1-1","178新手卡(30级)")
	return VALUE_OK
end

--178新手卡(40级)
function OnUseItemEvent_32106(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32106") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32107,0,1,0,"1-1","178新手卡(40级)")
	s_addItem(uid,6,0,40,0,"1-1","178新手卡(40级)")
	s_addItem(uid,27108,0,40,0,"1-1","178新手卡(40级)")
	s_addItem(uid,29800,0,1,0,"1-1","178新手卡(40级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 4)
	s_addItem(uid,23051,0,75,0,"1-1","178新手卡(40级)")
	s_addItem(uid,43011,0,75,0,"1-1","178新手卡(40级)")
	s_addItem(uid,26130,0,20,0,"1-1","178新手卡(40级)")
	s_addItem(uid,31147,0,50,0,"1-1","178新手卡(40级)")
	s_addItem(uid,31145,0,50,0,"1-1","178新手卡(40级)")
	s_addItem(uid,29066,0,75,0,"1-1","178新手卡(40级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","178新手卡(40级)")
	s_addItem(uid,30017,0,10,0,"1-1","178新手卡(40级)")
	s_addItem(uid,26141,0,10,0,"1-1","178新手卡(40级)")
	s_addItem(uid,26018,0,5,0,"1-1","178新手卡(40级)")
	s_addItem(uid,29002,0,1,0,"1-1","178新手卡(40级)")
	return VALUE_OK
end

--178新手卡(50级)
function OnUseItemEvent_32107(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32107") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32108,0,1,0,"1-1","178新手卡(50级)")
	s_addItem(uid,6,0,70,0,"1-1","178新手卡(50级)")
	s_addItem(uid,27108,0,40,0,"1-1","178新手卡(50级)")
	s_addItem(uid,29800,0,2,0,"1-1","178新手卡(50级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,100,0,"1-1","178新手卡(50级)")
	s_addItem(uid,43011,0,100,0,"1-1","178新手卡(50级)")
	s_addItem(uid,26130,0,30,0,"1-1","178新手卡(50级)")
	s_addItem(uid,31147,0,50,0,"1-1","178新手卡(50级)")
	s_addItem(uid,31145,0,50,0,"1-1","178新手卡(50级)")
	s_addItem(uid,29066,0,125,0,"1-1","178新手卡(50级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","178新手卡(50级)")
	s_addItem(uid,30017,0,20,0,"1-1","178新手卡(50级)")
	s_addItem(uid,31905,0,1,0,"1-1","178新手卡(50级)")
	return VALUE_OK
end

--178新手卡(60级)
function OnUseItemEvent_32108(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32108") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32109,0,1,0,"1-1","178新手卡(60级)")
	s_addItem(uid,6,0,100,0,"1-1","178新手卡(60级)")
	s_addItem(uid,27108,0,40,0,"1-1","178新手卡(60级)")
	s_addItem(uid,29800,0,2,0,"1-1","178新手卡(60级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,125,0,"1-1","178新手卡(60级)")
	s_addItem(uid,43011,0,125,0,"1-1","178新手卡(60级)")
	s_addItem(uid,31147,0,50,0,"1-1","178新手卡(60级)")
	s_addItem(uid,31145,0,50,0,"1-1","178新手卡(60级)")
	s_addItem(uid,29066,0,125,0,"1-1","178新手卡(60级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","178新手卡(60级)")
	s_addItem(uid,30017,0,20,0,"1-1","178新手卡(60级)")
	s_addItem(uid,26143,0,1,0,"1-1","178新手卡(60级)")
	s_addItem(uid,26018,0,10,0,"1-1","178新手卡(60级)")
	s_addItem(uid,52013,0,1,0,"1-1,3-604800","178新手卡(60级)")
	return VALUE_OK
end

--178新手卡(70级)
function OnUseItemEvent_32109(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32109") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,150,0,"1-1","178新手卡(70级)")
	s_addItem(uid,27108,0,50,0,"1-1","178新手卡(70级)")
	s_addItem(uid,29800,0,2,0,"1-1","178新手卡(70级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 10)
	s_addItem(uid,23051,0,250,0,"1-1","178新手卡(70级)")
	s_addItem(uid,43011,0,250,0,"1-1","178新手卡(70级)")
	s_addItem(uid,31147,0,50,0,"1-1","178新手卡(70级)")
	s_addItem(uid,31145,0,50,0,"1-1","178新手卡(70级)")
	s_addItem(uid,29066,0,125,0,"1-1","178新手卡(70级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-3","178新手卡(70级)")
	s_addItem(uid,29061,0,125,0,"1-1","178新手卡(70级)")
	s_addItem(uid,30017,0,30,0,"1-1","178新手卡(70级)")
	s_addItem(uid,26143,0,2,0,"1-1","178新手卡(70级)")
	s_addItem(uid,26018,0,20,0,"1-1","178新手卡(70级)")
	s_addItem(uid,29002,0,1,0,"1-1","178新手卡(70级)")
	return VALUE_OK
end
