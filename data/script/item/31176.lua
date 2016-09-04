--升级宝石箱子
function OnUseItemEvent_31176(uid,thisid)
	s_addItem(uid,27109,0,3,0,"1-1","开宝石箱子所得")
	s_deleteItemByThisID(uid,thisid,1,"使用扣除")
	return VALUE_OK
end
