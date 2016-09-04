--新手超值礼包
function OnUseItemEvent_32022(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32022") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29002,0,1,0,"1-1","OnUseItemEvent_32022")
	s_addItem(uid,29002,0,1,0,"1-1","OnUseItemEvent_32022")
	s_addItem(uid,30010,0,6,0,"1-1","OnUseItemEvent_32022")
	s_addItem(uid,26130,0,10,0,"1-1","OnUseItemEvent_32022")
	s_addItem(uid,27114,0,9,0,"1-1","OnUseItemEvent_32022")
	s_addItem(uid,43002,0,10,0,"1-1","OnUseItemEvent_32022")
	s_addItem(uid,29029,0,5,0,"1-1","OnUseItemEvent_32022")
	s_addItem(uid,23061,0,5,0,"1-1","OnUseItemEvent_32022")
	return VALUE_OK
end

--高手进阶礼包
function OnUseItemEvent_32023(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32023") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26102,0,10,0,"1-1","OnUseItemEvent_32023")
	s_addItem(uid,26128,0,10,0,"1-1","OnUseItemEvent_32023")
	s_addItem(uid,26104,0,2,0,"1-1","OnUseItemEvent_32023")
	s_addItem(uid,27110,0,40,0,"1-1,2-1","OnUseItemEvent_32023")
	s_addItem(uid,26019,0,1,0,"1-1","OnUseItemEvent_32023")
	s_addItem(uid,26114,0,2,0,"1-1","OnUseItemEvent_32023")
	return VALUE_OK
end
