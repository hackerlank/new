--劳动最光荣
function OnUseItemEvent_63344(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63344") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26102,0,40,0,"1-1","宝石鉴定盒")
	s_addItem(uid,27108,0,20,0,"1-1","宝石鉴定盒")
	s_addItem(uid,27110,0,4,0,"1-1,2-3","宝石鉴定盒")
	s_addItem(uid,26130,0,10,0,"1-1","宝石鉴定盒")
	return VALUE_OK
end
