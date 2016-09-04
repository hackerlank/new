--测试广寒仙境
function OnUseItemEvent_55147(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55147") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_intoCopyCustomSingle(uid,1017,191,18,22)
	return VALUE_OK
end

--测试广寒仙境
function OnUseItemEvent_55148(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55148") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_intoCopyCustomSingle(uid,1018,192,20,62)
	return VALUE_OK
end
