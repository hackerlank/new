--52pk新手卡(1级)
function OnUseItemEvent_32126(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32126") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32127,0,1,0,"1-1","52pk新手卡(1级)")
	s_addItem(uid,6,0,1,0,"1-1","52pk新手卡(1级)")
	return VALUE_OK
end

--52pk新手卡(10级)
function OnUseItemEvent_32127(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32127") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32128,0,1,0,"1-1","52pk新手卡(10级)")
	s_addItem(uid,23051,0,5,0,"1-1","52pk新手卡(10级)")
	s_addItem(uid,6,0,5,0,"1-1","52pk新手卡(10级)")
	s_addItem(uid,30017,0,15,0,"1-1","52pk新手卡(10级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 1)
	return VALUE_OK
end

--52pk新手卡(20级)
function OnUseItemEvent_32128(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32128") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32129,0,1,0,"1-1","52pk新手卡(20级)")
	s_addItem(uid,6,0,10,0,"1-1","52pk新手卡(20级)")
	s_addItem(uid,27108,0,20,0,"1-1","52pk新手卡(20级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 2)
	s_addItem(uid,23051,0,25,0,"1-1","52pk新手卡(20级)")
	s_addItem(uid,43011,0,25,0,"1-1","52pk新手卡(20级)")
	s_addItem(uid,31147,0,5,0,"1-1","52pk新手卡(20级)")
	s_addItem(uid,31145,0,5,0,"1-1","52pk新手卡(20级)")
	s_addItem(uid,29066,0,25,0,"1-1","52pk新手卡(20级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","52pk新手卡(20级)")
	s_addItem(uid,30017,0,10,0,"1-1","52pk新手卡(20级)")
	s_addItem(uid,26141,0,10,0,"1-1","52pk新手卡(20级)")
	s_addItem(uid,26018,0,5,0,"1-1","52pk新手卡(20级)")
	return VALUE_OK
end

--52pk新手卡(30级)
function OnUseItemEvent_32129(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32129") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32130,0,1,0,"1-1","52pk新手卡(30级)")
	s_addItem(uid,6,0,20,0,"1-1","52pk新手卡(30级)")
	s_addItem(uid,27108,0,40,0,"1-1","52pk新手卡(30级)")
	s_addItem(uid,29800,0,1,0,"1-1","52pk新手卡(30级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 3)
	s_addItem(uid,23051,0,50,0,"1-1","52pk新手卡(30级)")
	s_addItem(uid,43011,0,50,0,"1-1","52pk新手卡(30级)")
	s_addItem(uid,26130,0,10,0,"1-1","52pk新手卡(30级)")
	s_addItem(uid,31147,0,25,0,"1-1","52pk新手卡(30级)")
	s_addItem(uid,31145,0,25,0,"1-1","52pk新手卡(30级)")
	s_addItem(uid,29066,0,50,0,"1-1","52pk新手卡(30级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","52pk新手卡(30级)")
	s_addItem(uid,30017,0,10,0,"1-1","52pk新手卡(30级)")
	s_addItem(uid,24042,0,1,0,"1-1","52pk新手卡(30级)")
	return VALUE_OK
end

--52pk新手卡(40级)
function OnUseItemEvent_32130(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32130") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32131,0,1,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,6,0,40,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,27108,0,40,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,29800,0,1,0,"1-1","52pk新手卡(40级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 4)
	s_addItem(uid,23051,0,75,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,43011,0,75,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,26130,0,20,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,31147,0,50,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,31145,0,50,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,29066,0,75,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","52pk新手卡(40级)")
	s_addItem(uid,30017,0,10,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,26141,0,10,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,26018,0,5,0,"1-1","52pk新手卡(40级)")
	s_addItem(uid,29002,0,1,0,"1-1","52pk新手卡(40级)")
	return VALUE_OK
end

--52pk新手卡(50级)
function OnUseItemEvent_32131(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32131") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32132,0,1,0,"1-1","52pk新手卡(50级)")
	s_addItem(uid,6,0,50,0,"1-1","52pk新手卡(50级)")
	s_addItem(uid,27108,0,40,0,"1-1","52pk新手卡(50级)")
	s_addItem(uid,29800,0,2,0,"1-1","52pk新手卡(50级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,100,0,"1-1","52pk新手卡(50级)")
	s_addItem(uid,43011,0,100,0,"1-1","52pk新手卡(50级)")
	s_addItem(uid,26130,0,30,0,"1-1","52pk新手卡(50级)")
	s_addItem(uid,31147,0,50,0,"1-1","52pk新手卡(50级)")
	s_addItem(uid,31145,0,50,0,"1-1","52pk新手卡(50级)")
	s_addItem(uid,29066,0,125,0,"1-1","52pk新手卡(50级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","52pk新手卡(50级)")
	s_addItem(uid,30017,0,20,0,"1-1","52pk新手卡(50级)")
	s_addItem(uid,31905,0,1,0,"1-1","52pk新手卡(50级)")
	return VALUE_OK
end

--52pk新手卡(60级)
function OnUseItemEvent_32132(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32132") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32133,0,1,0,"1-1","52pk新手卡(60级)")
	s_addItem(uid,6,0,100,0,"1-1","52pk新手卡(60级)")
	s_addItem(uid,27108,0,40,0,"1-1","52pk新手卡(60级)")
	s_addItem(uid,29800,0,2,0,"1-1","52pk新手卡(60级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,125,0,"1-1","52pk新手卡(60级)")
	s_addItem(uid,43011,0,125,0,"1-1","52pk新手卡(60级)")
	s_addItem(uid,31147,0,50,0,"1-1","52pk新手卡(60级)")
	s_addItem(uid,31145,0,50,0,"1-1","52pk新手卡(60级)")
	s_addItem(uid,29066,0,125,0,"1-1","52pk新手卡(60级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","52pk新手卡(60级)")
	s_addItem(uid,30017,0,20,0,"1-1","52pk新手卡(60级)")
	s_addItem(uid,26143,0,1,0,"1-1","52pk新手卡(60级)")
	s_addItem(uid,26018,0,10,0,"1-1","52pk新手卡(60级)")
	s_addItem(uid,52012,0,1,0,"1-1,3-604800","52pk新手卡(60级)")
	return VALUE_OK
end

--52pk新手卡(70级)
function OnUseItemEvent_32133(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32133") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,150,0,"1-1","52pk新手卡(70级)")
	s_addItem(uid,27108,0,50,0,"1-1","52pk新手卡(70级)")
	s_addItem(uid,29800,0,2,0,"1-1","52pk新手卡(70级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 10)
	s_addItem(uid,23051,0,250,0,"1-1","52pk新手卡(70级)")
	s_addItem(uid,43011,0,250,0,"1-1","52pk新手卡(70级)")
	s_addItem(uid,31147,0,50,0,"1-1","52pk新手卡(70级)")
	s_addItem(uid,31145,0,50,0,"1-1","52pk新手卡(70级)")
	s_addItem(uid,29066,0,125,0,"1-1","52pk新手卡(70级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-3","52pk新手卡(70级)")
	s_addItem(uid,29061,0,125,0,"1-1","52pk新手卡(70级)")
	s_addItem(uid,30017,0,30,0,"1-1","52pk新手卡(70级)")
	s_addItem(uid,26143,0,2,0,"1-1","52pk新手卡(70级)")
	s_addItem(uid,26018,0,20,0,"1-1","52pk新手卡(70级)")
	s_addItem(uid,29002,0,1,0,"1-1","52pk新手卡(70级)")
	return VALUE_OK
end
