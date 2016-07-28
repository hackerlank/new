--话费充值卡（兵王2限量版）
function OnUseItemEvent_29305(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29305") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32300,0,1,0,"1-1","话费充值卡（兵王2限量版）")
	s_addItem(uid,32315,0,1,0,"1-1","话费充值卡（兵王2限量版）")
	s_addItem(uid,32343,0,1,0,"1-1","话费充值卡（兵王2限量版）")
	s_addItem(uid,32018,0,1,0,"1-1","话费充值卡（兵王2限量版）")
	s_addItem(uid,29148,0,1,0,"1-1","话费充值卡（兵王2限量版）")
	return VALUE_OK
end
