--蛇年时装套装 男
function OnUseItemEvent_55087(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20288,3,1,1,"1-1,7-3,3-604800","OnUseItemEvent_55087")--时装
	s_addItem(uid,55084,3,1,0,"1-1","OnUseItemEvent_55087")
	s_addItem(uid,24083,3,1,0,"1-1","OnUseItemEvent_55087")
	return VALUE_OK
end

--蛇年时装套装 女
function OnUseItemEvent_55088(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20289,3,1,1,"1-1,7-3,3-604800","OnUseItemEvent_55088")--时装
	s_addItem(uid,55084,3,1,0,"1-1","OnUseItemEvent_55088")
	s_addItem(uid,24083,3,1,0,"1-1","OnUseItemEvent_55088")
	return VALUE_OK
end
