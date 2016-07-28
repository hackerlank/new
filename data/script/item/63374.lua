--我是道具1号测试
function OnUseItemEvent_63383(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63383") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,1,0,"1-1","OnUseItemEvent_63383")
	return VALUE_OK
end
