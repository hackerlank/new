--2012新春大礼包
function OnUseItemEvent_31333(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31333") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_31333")
	s_addItem(uid,26102,0,20,0,"1-1","OnUseItemEvent_31333")
	s_addItem(uid,27110,0,4,0,"1-1,2-3","OnUseItemEvent_31333")
	s_addItem(uid,26104,0,2,0,"1-1","OnUseItemEvent_31333")
	return VALUE_OK
end

--2012金玉满堂包
function OnUseItemEvent_31334(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31334") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,31336,0,1,0,"1-1","OnUseItemEvent_31334")
	s_addItem(uid,31338,0,1,0,"1-1","OnUseItemEvent_31334")
	s_addItem(uid,31339,0,1,0,"1-1","OnUseItemEvent_31334")
	s_addItem(uid,31340,0,1,0,"1-1","OnUseItemEvent_31334")
	s_addItem(uid,31341,0,1,0,"1-1","OnUseItemEvent_31334")
	s_addItem(uid,31342,0,1,0,"1-1","OnUseItemEvent_31334")
	s_addItem(uid,31343,0,1,0,"1-1","OnUseItemEvent_31334")
	s_addItem(uid,31344,0,1,0,"1-1","OnUseItemEvent_31334")
	return VALUE_OK
end
