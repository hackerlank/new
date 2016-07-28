--拓展考评D
function OnUseItemEvent_55202(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"拓展考评D") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55048,3,2,0,"1-1,7-1","神之水滴")
	return VALUE_OK
end

--拓展考评C
function OnUseItemEvent_55203(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"拓展考评C") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55048,3,2,0,"1-1,7-1","神之水滴")
	s_addItem(uid,55218,3,1,0,"1-1","评定报告")
	return VALUE_OK
end

--拓展考评B
function OnUseItemEvent_55204(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"拓展考评B") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55048,3,2,0,"1-1,7-1","神之水滴")
	s_addItem(uid,55218,3,2,0,"1-1","评定报告")
	return VALUE_OK
end

--拓展考评A
function OnUseItemEvent_55205(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"拓展考评A") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55048,3,2,0,"1-1,7-1","神之水滴")
	s_addItem(uid,55218,3,3,0,"1-1","评定报告")
	return VALUE_OK
end

--拓展考评S
function OnUseItemEvent_55206(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"拓展考评S") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55048,3,2,0,"1-1,7-1","神之水滴")
	s_addItem(uid,55218,3,4,0,"1-1","评定报告")
	return VALUE_OK
end
