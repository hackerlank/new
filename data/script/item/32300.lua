--官网新手卡(1级)
function OnUseItemEvent_32300(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32300") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,1,0,"1-1","官网新手卡(1级)")
	s_addItem(uid,32301,0,1,0,"1-1","官网新手卡(1级)")
	return VALUE_OK
end

--官网新手卡(5级)
function OnUseItemEvent_32301(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32301") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32302,0,1,0,"1-1","官网新手卡(5级)")
	s_addItem(uid,6,0,2,0,"1-1","官网新手卡(5级)")
	s_addItem(uid,30017,0,3,0,"1-1","官网新手卡(5级)")
	return VALUE_OK
end

--官网新手卡(10级)
function OnUseItemEvent_32302(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32302") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32303,0,1,0,"1-1","官网新手卡(10级)")
	s_addItem(uid,6,0,3,0,"1-1","官网新手卡(10级)")
	s_addItem(uid,55152,0,1,0,"1-1","官网新手卡(10级)")
	return VALUE_OK
end

--官网新手卡(15级)
function OnUseItemEvent_32303(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32303") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32304,0,1,0,"1-1","官网新手卡(15级)")
	s_addItem(uid,6,0,5,0,"1-1","官网新手卡(15级)")
	s_addItem(uid,55158,0,1,0,"1-1","官网新手卡(15级)")
	return VALUE_OK
end

--官网新手卡(20级)
function OnUseItemEvent_32304(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32304") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32305,0,1,0,"1-1","官网新手卡(20级)")
	s_addItem(uid,6,0,8,0,"1-1","官网新手卡(20级)")
	s_addItem(uid,55158,0,1,0,"1-1","官网新手卡(20级)")
	return VALUE_OK
end

--官网新手卡(25级)
function OnUseItemEvent_32305(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32305") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32306,0,1,0,"1-1","官网新手卡(25级)")
	s_addItem(uid,6,0,10,0,"1-1","官网新手卡(25级)")
	s_addItem(uid,55158,0,2,0,"1-1","官网新手卡(25级)")
	return VALUE_OK
end

--官网新手卡(30级)
function OnUseItemEvent_32306(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32306") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32307,0,1,0,"1-1","官网新手卡(30级)")
	s_addItem(uid,6,0,10,0,"1-1","官网新手卡(30级)")
	s_addItem(uid,55158,0,2,0,"1-1","官网新手卡(30级)")
	return VALUE_OK
end

--官网新手卡(35级)
function OnUseItemEvent_32307(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32307") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32308,0,1,0,"1-1","官网新手卡(35级)")
	s_addItem(uid,6,0,12,0,"1-1","官网新手卡(35级)")
	s_addItem(uid,55158,0,3,0,"1-1","官网新手卡(35级)")
	return VALUE_OK
end

--官网新手卡(40级)
function OnUseItemEvent_32308(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32308") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32309,0,1,0,"1-1","官网新手卡(40级)")
	s_addItem(uid,6,0,12,0,"1-1","官网新手卡(40级)")
	s_addItem(uid,26130,0,3,0,"1-1","官网新手卡(40级)")
	return VALUE_OK
end

--官网新手卡(45级)
function OnUseItemEvent_32309(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32309") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32310,0,1,0,"1-1","官网新手卡(45级)")
	s_addItem(uid,6,0,15,0,"1-1","官网新手卡(45级)")
	s_addItem(uid,27108,0,20,0,"1-1","官网新手卡(45级)")
	return VALUE_OK
end

--官网新手卡(50级)
function OnUseItemEvent_32310(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32310") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32311,0,1,0,"1-1","官网新手卡(50级)")
	s_addItem(uid,6,0,15,0,"1-1","官网新手卡(50级)")
	s_addItem(uid,27108,0,25,0,"1-1","官网新手卡(50级)")
	return VALUE_OK
end

--官网新手卡(55级)
function OnUseItemEvent_32311(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32311") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32312,0,1,0,"1-1","官网新手卡(55级)")
	s_addItem(uid,6,0,18,0,"1-1","官网新手卡(55级)")
	s_addItem(uid,27108,0,30,0,"1-1","官网新手卡(55级)")
	return VALUE_OK
end

--官网新手卡(60级)
function OnUseItemEvent_32312(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32312") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32313,0,1,0,"1-1","官网新手卡(60级)")
	s_addItem(uid,6,0,18,0,"1-1","官网新手卡(60级)")
	s_addItem(uid,27110,0,50,0,"1-1","官网新手卡(60级)")
	return VALUE_OK
end

--官网新手卡(65级)
function OnUseItemEvent_32313(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32312") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32314,0,1,0,"1-1","官网新手卡(65级)")
	s_addItem(uid,6,0,20,0,"1-1","官网新手卡(65级)")
	s_addItem(uid,27110,0,100,0,"1-1","官网新手卡(65级)")
	return VALUE_OK
end

--官网新手卡(70级)
function OnUseItemEvent_32314(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32313") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,25,0,"1-1","官网新手卡(70级)")
	s_addItem(uid,27110,0,200,0,"1-1","官网新手卡(70级)")
	return VALUE_OK
end


