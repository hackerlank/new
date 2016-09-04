--2012白色情人节礼包A（61级以上）
function OnUseItemEvent_31383(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31383") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_31383")
	s_addItem(uid,26102,0,20,0,"1-1","OnUseItemEvent_31383")
	s_addItem(uid,27110,0,1,0,"1-1,2-4","OnUseItemEvent_31383")
	s_addItem(uid,27123,0,20,0,"1-1","OnUseItemEvent_31383")
	return VALUE_OK
end

--2012白色情人节礼包B（61级以下）
function OnUseItemEvent_31384(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31384") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_31384")
	s_addItem(uid,26102,0,20,0,"1-1","OnUseItemEvent_31384")
	s_addItem(uid,23051,0,8,0,"1-1","OnUseItemEvent_31384")
	s_addItem(uid,26130,0,10,0,"1-1","OnUseItemEvent_31384")
	return VALUE_OK
end
