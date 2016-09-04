--2012“我爱你”活动礼包A（61级以上）
function OnUseItemEvent_31484(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31484") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_31484")
	s_addItem(uid,26102,0,20,0,"1-1","OnUseItemEvent_31484")
	s_addItem(uid,27110,0,1,0,"1-1,2-4","OnUseItemEvent_31484")
	s_addItem(uid,26149,0,2,0,"1-1,2-3","OnUseItemEvent_31484")
	return VALUE_OK
end

--2012“我爱你”活动礼包B（61级以下）
function OnUseItemEvent_31485(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31485") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_31485")
	s_addItem(uid,26102,0,20,0,"1-1","OnUseItemEvent_31485")
	s_addItem(uid,23051,0,8,0,"1-1","OnUseItemEvent_31485")
	s_addItem(uid,26130,0,10,0,"1-1","OnUseItemEvent_31485")
	return VALUE_OK
end
