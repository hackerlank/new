--2级宝石盒
function OnUseItemEvent_63368(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63368") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,63368,0)
	return VALUE_OK
end
--3级宝石盒
function OnUseItemEvent_63369(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63369") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,63369,0)
	return VALUE_OK
end
--4级宝石盒
function OnUseItemEvent_63370(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63370") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,63370,0)
	return VALUE_OK
end
--4级宝石盒
function OnUseItemEvent_63371(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63371") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,63371,0)
	return VALUE_OK
end
