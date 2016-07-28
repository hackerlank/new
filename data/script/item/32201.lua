--活力点宝箱（银）
function OnUseItemEvent_32201(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32201") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29800,0,1,0,"1-1","活力点宝箱（银）")
	return VALUE_OK
end
