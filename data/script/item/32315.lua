--公会卡(5级)
function OnUseItemEvent_32315(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32315") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32316,0,1,0,"1-1","公会卡")
	s_addItem(uid,6,0,3,0,"1-1","公会卡")
	s_addItem(uid,27108,0,10,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(15级)
function OnUseItemEvent_32316(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32316") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32317,0,1,0,"1-1","公会卡")
	s_addItem(uid,6,0,10,0,"1-1","公会卡")
	s_addItem(uid,26102,0,10,0,"1-1","公会卡")
	s_addItem(uid,29050,0,5,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(25级)
function OnUseItemEvent_32317(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32317") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32318,0,1,0,"1-1","公会卡")
	s_addItem(uid,6,0,10,0,"1-1","公会卡")
	s_addItem(uid,27108,0,20,0,"1-1","公会卡")
	s_addItem(uid,26102,0,10,0,"1-1","公会卡")
	s_addItem(uid,55158,0,10,0,"1-1","公会卡")
	s_addItem(uid,32219,0,1,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(35级)
function OnUseItemEvent_32318(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32318") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32319,0,1,0,"1-1","公会卡")
	s_addItem(uid,6,0,15,0,"1-1","公会卡")
	s_addItem(uid,27108,0,40,0,"1-1","公会卡")
	s_addItem(uid,26102,0,10,0,"1-1","公会卡")
	s_addItem(uid,26130,0,20,0,"1-1","公会卡")
	s_addItem(uid,63036,0,5,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(45级)
function OnUseItemEvent_32319(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32319") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32320,0,1,0,"1-1","公会卡")
	s_addItem(uid,6,0,20,0,"1-1","公会卡")
	s_addItem(uid,27108,0,50,0,"1-1","公会卡")
	s_addItem(uid,26102,0,20,0,"1-1","公会卡")
	s_addItem(uid,31410,0,5,0,"1-1","公会卡")
	s_addItem(uid,26141,0,30,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(55级)
function OnUseItemEvent_32320(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32320") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32321,0,1,0,"1-1","公会卡")
	s_addItem(uid,6,0,25,0,"1-1","公会卡")
	s_addItem(uid,27108,0,50,0,"1-1","公会卡")
	s_addItem(uid,26102,0,20,0,"1-1","公会卡")
	s_addItem(uid,63038,0,5,0,"1-1","公会卡")
	s_addItem(uid,10,0,10,0,"1-1","公会卡")
	s_addItem(uid,27110,0,5,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(60级)
function OnUseItemEvent_32321(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32321") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32322,0,1,0,"1-1","公会卡")
	s_addItem(uid,6,0,50,0,"1-1","公会卡")
	s_addItem(uid,27108,0,100,0,"1-1","公会卡")
	s_addItem(uid,26102,0,30,0,"1-1","公会卡")
	s_addItem(uid,63038,0,5,0,"1-1","公会卡")
	s_addItem(uid,10,0,10,0,"1-1","公会卡")
	s_addItem(uid,26141,0,50,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(65级)
function OnUseItemEvent_32322(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32322") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32323,0,1,0,"1-1","公会卡")
	s_addItem(uid,6,0,50,0,"1-1","公会卡")
	s_addItem(uid,27108,0,100,0,"1-1","公会卡")
	s_addItem(uid,26102,0,30,0,"1-1","公会卡")
	s_addItem(uid,63038,0,5,0,"1-1","公会卡")
	s_addItem(uid,10,0,10,0,"1-1","公会卡")
	s_addItem(uid,26149,0,200,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(70级)
function OnUseItemEvent_32323(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32323") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,50,0,"1-1","公会卡")
	s_addItem(uid,27108,0,100,0,"1-1","公会卡")
	s_addItem(uid,26102,0,40,0,"1-1","公会卡")
	s_addItem(uid,63038,0,5,0,"1-1","公会卡")
	s_addItem(uid,10,0,10,0,"1-1","公会卡")
	s_addItem(uid,27110,0,10,0,"1-1","公会卡")
	return VALUE_OK
end

