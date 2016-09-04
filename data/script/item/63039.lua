function OnUseItemEvent_63039(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63039") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63040,0,1,0,"1-1","金币礼包63039")
	s_dealGoldAction(uid,1000,"金币礼包63039") --添加金币，直接算入正常累积充值内
	return VALUE_OK
end

function OnUseItemEvent_63040(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63040") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63041,0,1,0,"1-1","金币礼包63040")
	s_dealGoldAction(uid,4000,"金币礼包63040")
	return VALUE_OK
end

function OnUseItemEvent_63041(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63041") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63042,0,1,0,"1-1","金币礼包63041")
	s_dealGoldAction(uid,5000,"金币礼包63041")
	return VALUE_OK
end

function OnUseItemEvent_63042(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63042") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63043,0,1,0,"1-1","金币礼包63042")
	s_dealGoldAction(uid,40000,"金币礼包63042")
	return VALUE_OK
end

function OnUseItemEvent_63043(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63043") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_dealGoldAction(uid,50000,"金币礼包63043")
	return VALUE_OK
end
