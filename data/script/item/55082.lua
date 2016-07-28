--甜甜蜜蜜包
function OnUseItemEvent_55082(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,44061,3,2,0,"1-1","甜甜蜜蜜包")
	return VALUE_OK
end

--百年好合包
function OnUseItemEvent_55083(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,24082,3,1,0,"1-1","百年好合包")
	return VALUE_OK
end
