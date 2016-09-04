function OnUseItemEvent_55312(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,3,5,0,"1-1","升级宝石")
	s_addItem(uid,31410,3,1,0,"1-1","装备礼盒")
	s_addItem(uid,27110,3,20,0,"1-1","金刚钻")
	return VALUE_OK
end
