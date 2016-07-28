--4等宝石盒子
function OnUseItemEvent_32207(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32207") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32207,0)
	return VALUE_OK
end

--5等宝石盒子
function OnUseItemEvent_32208(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32208") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32208,0)
	return VALUE_OK
end

--3等宝石盒子
function OnUseItemEvent_32212(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32212") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32212,0)
	return VALUE_OK
end

--2等宝石盒子
function OnUseItemEvent_32242(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32242") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32242,0)
	return VALUE_OK
end
