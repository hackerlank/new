--pubwin新手卡(1级)
function OnUseItemEvent_32142(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32142") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,29520,0,5,0,"1-1","pubwin新手卡(1级)")
	else
		s_addItem(uid,29521,0,5,0,"1-1","pubwin新手卡(1级)")
	end
	s_addItem(uid,41629,0,1,0,"1-1","pubwin新手卡(1级)")
	s_addItem(uid,32143,0,1,0,"1-1","pubwin新手卡(1级)")
	s_addItem(uid,6,0,1,0,"1-1","pubwin新手卡(1级)")
	return VALUE_OK
end

--pubwin新手卡(10级)
function OnUseItemEvent_32143(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32143") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32144,0,1,0,"1-1","pubwin新手卡(10级)")
	s_addItem(uid,23051,0,5,0,"1-1","pubwin新手卡(10级)")
	s_addItem(uid,6,0,5,0,"1-1","pubwin新手卡(10级)")
	s_addItem(uid,30017,0,15,0,"1-1","pubwin新手卡(10级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 1)
	return VALUE_OK
end

--pubwin新手卡(20级)
function OnUseItemEvent_32144(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32144") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32145,0,1,0,"1-1","pubwin新手卡(20级)")
	s_addItem(uid,6,0,10,0,"1-1","pubwin新手卡(20级)")
	s_addItem(uid,27108,0,20,0,"1-1","pubwin新手卡(20级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 2)
	s_addItem(uid,23051,0,25,0,"1-1","pubwin新手卡(20级)")
	s_addItem(uid,43011,0,25,0,"1-1","pubwin新手卡(20级)")
	s_addItem(uid,31147,0,5,0,"1-1","pubwin新手卡(20级)")
	s_addItem(uid,31145,0,5,0,"1-1","pubwin新手卡(20级)")
	s_addItem(uid,29066,0,25,0,"1-1","pubwin新手卡(20级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","pubwin新手卡(20级)")
	s_addItem(uid,30017,0,10,0,"1-1","pubwin新手卡(20级)")
	s_addItem(uid,26141,0,10,0,"1-1","pubwin新手卡(20级)")
	s_addItem(uid,26018,0,5,0,"1-1","pubwin新手卡(20级)")
	return VALUE_OK
end

--pubwin新手卡(30级)
function OnUseItemEvent_32145(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32145") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32146,0,1,0,"1-1","pubwin新手卡(30级)")
	s_addItem(uid,6,0,20,0,"1-1","pubwin新手卡(30级)")
	s_addItem(uid,27108,0,40,0,"1-1","pubwin新手卡(30级)")
	s_addItem(uid,29800,0,1,0,"1-1","pubwin新手卡(30级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 3)
	s_addItem(uid,23051,0,50,0,"1-1","pubwin新手卡(30级)")
	s_addItem(uid,43011,0,50,0,"1-1","pubwin新手卡(30级)")
	s_addItem(uid,26130,0,10,0,"1-1","pubwin新手卡(30级)")
	s_addItem(uid,31147,0,25,0,"1-1","pubwin新手卡(30级)")
	s_addItem(uid,31145,0,25,0,"1-1","pubwin新手卡(30级)")
	s_addItem(uid,29066,0,50,0,"1-1","pubwin新手卡(30级)")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","pubwin新手卡(30级)")
	s_addItem(uid,30017,0,10,0,"1-1","pubwin新手卡(30级)")
	s_addItem(uid,24044,0,1,0,"1-1","pubwin新手卡(30级)")
	return VALUE_OK
end

--pubwin新手卡(40级)
function OnUseItemEvent_32146(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32146") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32147,0,1,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,6,0,40,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,27108,0,40,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,29800,0,1,0,"1-1","pubwin新手卡(40级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 4)
	s_addItem(uid,23051,0,75,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,43011,0,75,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,26130,0,20,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,31147,0,50,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,31145,0,50,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,29066,0,75,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","pubwin新手卡(40级)")
	s_addItem(uid,30017,0,10,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,26141,0,10,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,26018,0,5,0,"1-1","pubwin新手卡(40级)")
	s_addItem(uid,29002,0,1,0,"1-1","pubwin新手卡(40级)")
	return VALUE_OK
end

--pubwin新手卡(50级)
function OnUseItemEvent_32147(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32147") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32148,0,1,0,"1-1","pubwin新手卡(50级)")
	s_addItem(uid,6,0,70,0,"1-1","pubwin新手卡(50级)")
	s_addItem(uid,27108,0,40,0,"1-1","pubwin新手卡(50级)")
	s_addItem(uid,29800,0,2,0,"1-1","pubwin新手卡(50级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,100,0,"1-1","pubwin新手卡(50级)")
	s_addItem(uid,43011,0,100,0,"1-1","pubwin新手卡(50级)")
	s_addItem(uid,26130,0,30,0,"1-1","pubwin新手卡(50级)")
	s_addItem(uid,31147,0,50,0,"1-1","pubwin新手卡(50级)")
	s_addItem(uid,31145,0,50,0,"1-1","pubwin新手卡(50级)")
	s_addItem(uid,29066,0,125,0,"1-1","pubwin新手卡(50级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","pubwin新手卡(50级)")
	s_addItem(uid,30017,0,20,0,"1-1","pubwin新手卡(50级)")
	s_addItem(uid,31905,0,1,0,"1-1","pubwin新手卡(50级)")
	return VALUE_OK
end

--pubwin新手卡(60级)
function OnUseItemEvent_32148(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32148") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32149,0,1,0,"1-1","pubwin新手卡(60级)")
	s_addItem(uid,6,0,100,0,"1-1","pubwin新手卡(60级)")
	s_addItem(uid,27108,0,40,0,"1-1","pubwin新手卡(60级)")
	s_addItem(uid,29800,0,2,0,"1-1","pubwin新手卡(60级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 5)
	s_addItem(uid,23051,0,125,0,"1-1","pubwin新手卡(60级)")
	s_addItem(uid,43011,0,125,0,"1-1","pubwin新手卡(60级)")
	s_addItem(uid,31147,0,50,0,"1-1","pubwin新手卡(60级)")
	s_addItem(uid,31145,0,50,0,"1-1","pubwin新手卡(60级)")
	s_addItem(uid,29066,0,125,0,"1-1","pubwin新手卡(60级)")
	s_addItem(uid,47001,0,15,0,"1-1,7-2","pubwin新手卡(60级)")
	s_addItem(uid,30017,0,20,0,"1-1","pubwin新手卡(60级)")
	s_addItem(uid,26143,0,1,0,"1-1","pubwin新手卡(60级)")
	s_addItem(uid,26018,0,10,0,"1-1","pubwin新手卡(60级)")
	s_addItem(uid,52012,0,1,0,"1-1,3-604800","pubwin新手卡(60级)")
	return VALUE_OK
end

--pubwin新手卡(70级)
function OnUseItemEvent_32149(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32149") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,150,0,"1-1","pubwin新手卡(70级)")
	s_addItem(uid,27108,0,50,0,"1-1","pubwin新手卡(70级)")
	s_addItem(uid,29800,0,2,0,"1-1","pubwin新手卡(70级)")
	s_addVar(uid, 1,23,s_getVar(uid, 1,23) + 10)
	s_addItem(uid,23051,0,250,0,"1-1","pubwin新手卡(70级)")
	s_addItem(uid,43011,0,250,0,"1-1","pubwin新手卡(70级)")
	s_addItem(uid,31147,0,50,0,"1-1","pubwin新手卡(70级)")
	s_addItem(uid,31145,0,50,0,"1-1","pubwin新手卡(70级)")
	s_addItem(uid,29066,0,125,0,"1-1","pubwin新手卡(70级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-3","pubwin新手卡(70级)")
	s_addItem(uid,29061,0,125,0,"1-1","pubwin新手卡(70级)")
	s_addItem(uid,30017,0,30,0,"1-1","pubwin新手卡(70级)")
	s_addItem(uid,26143,0,2,0,"1-1","pubwin新手卡(70级)")
	s_addItem(uid,26018,0,20,0,"1-1","pubwin新手卡(70级)")
	s_addItem(uid,29002,0,1,0,"1-1","pubwin新手卡(70级)")
	return VALUE_OK
end
