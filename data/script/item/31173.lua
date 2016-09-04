--升级宝石箱子
function OnUseItemEvent_31173(uid,thisid)
	s_addItem(uid,27108,0,50,0,"1-1","开宝石箱子所得")
	s_deleteItemByThisID(uid,thisid,1,"使用扣除")
	return VALUE_OK
end
