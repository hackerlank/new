--媒体皇家礼包(1级)
function OnUseItemEvent_32343(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32343") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32344,0,1,0,"1-1","媒体皇家礼包(1级)")
	s_addItem(uid,6,0,1,0,"1-1","媒体皇家礼包(1级)")
	return VALUE_OK
end

--媒体皇家礼包(10级)
function OnUseItemEvent_32344(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32344") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32345,0,1,0,"1-1","媒体皇家礼包(10级)")
	s_addItem(uid,23051,0,5,0,"1-1","媒体皇家礼包(10级)")
	s_addItem(uid,6,0,5,0,"1-1","媒体皇家礼包(10级)")
	s_addItem(uid,30017,0,15,0,"1-1","媒体皇家礼包(10级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 1)
	return VALUE_OK
end

--媒体皇家礼包(20级)
function OnUseItemEvent_32345(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32345") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32346,0,1,0,"1-1","媒体皇家礼包(20级)")
	s_addItem(uid,6,0,10,0,"1-1","媒体皇家礼包(20级)")
	s_addItem(uid,27108,0,20,0,"1-1","媒体皇家礼包(20级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 2)
	s_addItem(uid,23051,0,25,0,"1-1","媒体皇家礼包(20级)")
	s_addItem(uid,43011,0,25,0,"1-1","媒体皇家礼包(20级)")
	s_addItem(uid,31147,0,5,0,"1-1","媒体皇家礼包(20级)")
	s_addItem(uid,31145,0,5,0,"1-1","媒体皇家礼包(20级)")
	s_addItem(uid,29066,0,25,0,"1-1","媒体皇家礼包(20级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","媒体皇家礼包(20级)")
	s_addItem(uid,30017,0,10,0,"1-1","媒体皇家礼包(20级)")
	s_addItem(uid,26141,0,8,0,"1-1","媒体皇家礼包(20级)")
	s_addItem(uid,26018,0,5,0,"1-1","媒体皇家礼包(20级)")
	return VALUE_OK
end

--媒体皇家礼包(30级)
function OnUseItemEvent_32346(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32346") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32347,0,1,0,"1-1","媒体皇家礼包(30级)")
	s_addItem(uid,6,0,20,0,"1-1","媒体皇家礼包(30级)")
	s_addItem(uid,27108,0,40,0,"1-1","媒体皇家礼包(30级)")
	s_addItem(uid,29800,0,1,0,"1-1","媒体皇家礼包(30级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 3)
	s_addItem(uid,23051,0,50,0,"1-1","媒体皇家礼包(30级)")
	s_addItem(uid,43011,0,50,0,"1-1","媒体皇家礼包(30级)")
	s_addItem(uid,26130,0,10,0,"1-1","媒体皇家礼包(30级)")
	s_addItem(uid,31147,0,25,0,"1-1","媒体皇家礼包(30级)")
	s_addItem(uid,31145,0,25,0,"1-1","媒体皇家礼包(30级)")
	s_addItem(uid,29066,0,50,0,"1-1","媒体皇家礼包(30级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","媒体皇家礼包(30级)")
	s_addItem(uid,30017,0,10,0,"1-1","媒体皇家礼包(30级)")
	return VALUE_OK
end

--媒体皇家礼包(40级)
function OnUseItemEvent_32347(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32347") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32348,0,1,0,"1-1","媒体皇家礼包(40级)")
	s_addItem(uid,6,0,30,0,"1-1","媒体皇家礼包(40级)")
	s_addItem(uid,27108,0,40,0,"1-1","媒体皇家礼包(40级)")
	s_addItem(uid,29800,0,1,0,"1-1","媒体皇家礼包(40级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 4)
	s_addItem(uid,23051,0,75,0,"1-1","媒体皇家礼包(40级)")
	s_addItem(uid,43011,0,75,0,"1-1","媒体皇家礼包(40级)")
	s_addItem(uid,26130,0,20,0,"1-1","媒体皇家礼包(40级)")
	s_addItem(uid,31147,0,50,0,"1-1","媒体皇家礼包(40级)")
	s_addItem(uid,31145,0,50,0,"1-1","媒体皇家礼包(40级)")
	s_addItem(uid,29066,0,75,0,"1-1","媒体皇家礼包(40级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","媒体皇家礼包(40级)")
	s_addItem(uid,30017,0,10,0,"1-1","媒体皇家礼包(40级)")
	s_addItem(uid,26141,0,8,0,"1-1","媒体皇家礼包(40级)")
	s_addItem(uid,26018,0,5,0,"1-1","媒体皇家礼包(40级)")
	return VALUE_OK
end

--媒体皇家礼包(50级)
function OnUseItemEvent_32348(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32348") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32349,0,1,0,"1-1","媒体皇家礼包(50级)")
	s_addItem(uid,6,0,50,0,"1-1","媒体皇家礼包(50级)")
	s_addItem(uid,27108,0,40,0,"1-1","媒体皇家礼包(50级)")
	s_addItem(uid,29800,0,2,0,"1-1","媒体皇家礼包(50级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,100,0,"1-1","媒体皇家礼包(50级)")
	s_addItem(uid,43011,0,100,0,"1-1","媒体皇家礼包(50级)")
	s_addItem(uid,26130,0,30,0,"1-1","媒体皇家礼包(50级)")
	s_addItem(uid,31147,0,50,0,"1-1","媒体皇家礼包(50级)")
	s_addItem(uid,31145,0,50,0,"1-1","媒体皇家礼包(50级)")
	s_addItem(uid,29066,0,125,0,"1-1","媒体皇家礼包(50级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","媒体皇家礼包(50级)")
	s_addItem(uid,30017,0,20,0,"1-1","媒体皇家礼包(50级)")
	return VALUE_OK
end

--媒体皇家礼包(60级)
function OnUseItemEvent_32349(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32349") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32350,0,1,0,"1-1","媒体皇家礼包(60级)")
	s_addItem(uid,6,0,50,0,"1-1","媒体皇家礼包(60级)")
	s_addItem(uid,27108,0,40,0,"1-1","媒体皇家礼包(60级)")
	s_addItem(uid,29800,0,2,0,"1-1","媒体皇家礼包(60级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,100,0,"1-1","媒体皇家礼包(60级)")
	s_addItem(uid,43011,0,100,0,"1-1","媒体皇家礼包(60级)")
	s_addItem(uid,31147,0,50,0,"1-1","媒体皇家礼包(60级)")
	s_addItem(uid,31145,0,50,0,"1-1","媒体皇家礼包(60级)")
	s_addItem(uid,29066,0,125,0,"1-1","媒体皇家礼包(60级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","媒体皇家礼包(60级)")
	s_addItem(uid,30017,0,20,0,"1-1","媒体皇家礼包(60级)")
	s_addItem(uid,26143,0,1,0,"1-1","媒体皇家礼包(60级)")
	s_addItem(uid,26018,0,10,0,"1-1","媒体皇家礼包(60级)")
	return VALUE_OK
end

--媒体皇家礼包(70级)
function OnUseItemEvent_32350(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32350") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,100,0,"1-1","媒体皇家礼包(70级)")
	s_addItem(uid,27108,0,30,0,"1-1","媒体皇家礼包(70级)")
	s_addItem(uid,29800,0,2,0,"1-1","媒体皇家礼包(70级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 10)
	s_addItem(uid,23051,0,200,0,"1-1","媒体皇家礼包(70级)")
	s_addItem(uid,43011,0,200,0,"1-1","媒体皇家礼包(70级)")
	s_addItem(uid,31147,0,30,0,"1-1","媒体皇家礼包(70级)")
	s_addItem(uid,31145,0,30,0,"1-1","媒体皇家礼包(70级)")
	s_addItem(uid,29066,0,100,0,"1-1","媒体皇家礼包(70级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-3","媒体皇家礼包(70级)")
	s_addItem(uid,29061,0,125,0,"1-1","媒体皇家礼包(70级)")
	s_addItem(uid,30017,0,30,0,"1-1","媒体皇家礼包(70级)")
	s_addItem(uid,26143,0,2,0,"1-1","媒体皇家礼包(70级)")
	s_addItem(uid,26018,0,20,0,"1-1","媒体皇家礼包(70级)")
	return VALUE_OK
end
