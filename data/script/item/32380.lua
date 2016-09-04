--公会卡(5级)
function OnUseItemEvent_32380(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32380") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32381,0,1,0,"1-1","公会卡")
	s_addItem(uid,26102,0,1,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(15级)
function OnUseItemEvent_32381(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32381") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32382,0,1,0,"1-1","公会卡")
	s_addItem(uid,26102,0,3,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(25级)
function OnUseItemEvent_32382(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32382") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32383,0,1,0,"1-1","公会卡")
	s_addItem(uid,26102,0,6,0,"1-1","公会卡")
	s_addItem(uid,27108,0,20,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(35级)
function OnUseItemEvent_32383(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32383") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32384,0,1,0,"1-1","公会卡")
	s_addItem(uid,26102,0,10,0,"1-1","公会卡")
	s_addItem(uid,27108,0,40,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(45级)
function OnUseItemEvent_32384(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32384") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32385,0,1,0,"1-1","公会卡")
	s_addItem(uid,26102,0,10,0,"1-1","公会卡")
	s_addItem(uid,27108,0,50,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(55级)
function OnUseItemEvent_32385(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32385") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32386,0,1,0,"1-1","公会卡")
	s_addItem(uid,26102,0,10,0,"1-1","公会卡")
	s_addItem(uid,27108,0,50,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(60级)
function OnUseItemEvent_32386(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32386") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32387,0,1,0,"1-1","公会卡")
	s_addItem(uid,26102,0,15,0,"1-1","公会卡")
	s_addItem(uid,27108,0,50,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(65级)
function OnUseItemEvent_32387(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32387") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32388,0,1,0,"1-1","公会卡")
	s_addItem(uid,26102,0,15,0,"1-1","公会卡")
	s_addItem(uid,27108,0,50,0,"1-1","公会卡")
	return VALUE_OK
end

--公会卡(70级)
function OnUseItemEvent_32388(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32388") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26102,0,15,0,"1-1","公会卡")
	s_addItem(uid,27108,0,50,0,"1-1","公会卡")
	return VALUE_OK
end

