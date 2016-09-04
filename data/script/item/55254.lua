--马上有钱
function OnUseItemEvent_55254(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55254") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,55254,0)
	return VALUE_OK
end

--马上有星
function OnUseItemEvent_55255(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55255") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,55255,0)
	return VALUE_OK
end

--马上有孔
function OnUseItemEvent_55256(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55256") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,55256,0)
	return VALUE_OK
end
