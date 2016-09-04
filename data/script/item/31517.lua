--风云宝盒（升星）
function OnUseItemEvent_31517(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31517") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,35,0,"1-1","OnUseItemEvent_31517")
	s_addItem(uid,26102,0,35,0,"1-1","OnUseItemEvent_31517")
	s_addItem(uid,26150,0,1,0,"1-1","OnUseItemEvent_31517")
	s_addItem(uid,30025,0,2,0,"1-1","OnUseItemEvent_31517")
	return VALUE_OK
end

--风云宝盒（开孔）
function OnUseItemEvent_31518(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31518") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,2,0,"1-1,2-4","OnUseItemEvent_31518")
	s_addItem(uid,30025,0,2,0,"1-1","OnUseItemEvent_31518")
	return VALUE_OK
end

--风云宝盒（改造）
function OnUseItemEvent_31519(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31519") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26149,0,10,0,"1-1,2-3","OnUseItemEvent_31519")
	s_addItem(uid,26128,0,10,0,"1-1","OnUseItemEvent_31519")
	s_addItem(uid,30025,0,2,0,"1-1","OnUseItemEvent_31519")
	return VALUE_OK
end
