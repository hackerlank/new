--2012“公主”活动礼包（61级以上）
function OnUseItemEvent_31501(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31501") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_31501")
	s_addItem(uid,26102,0,20,0,"1-1","OnUseItemEvent_31501")
	s_addItem(uid,14,0,2,0,"1-1","OnUseItemEvent_31501")
	s_addItem(uid,26149,0,2,0,"1-1,2-3","OnUseItemEvent_31501")
	s_addItem(uid,30018,0,2,0,"1-1","OnUseItemEvent_31501")
	return VALUE_OK
end

--2012“公主”活动姬骑士时装套装包
function OnUseItemEvent_31502(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31502") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20206,0,1,0,"1-0,3-604800","OnUseItemEvent_31502")--时装
	s_addItem(uid,20462,0,1,0,"1-0","OnUseItemEvent_31502")
	s_addItem(uid,24063,0,1,0,"1-0","OnUseItemEvent_31502")
	s_addItem(uid,30031,0,2,0,"1-0","OnUseItemEvent_31502")
	return VALUE_OK
end

--2012“公主”活动圣骑士时装套装包
function OnUseItemEvent_31503(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31503") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20208,0,1,0,"1-0,3-604800","OnUseItemEvent_31503")--时装
	s_addItem(uid,20405,0,1,0,"1-0","OnUseItemEvent_31503")
	s_addItem(uid,24064,0,1,0,"1-0","OnUseItemEvent_31503")
	s_addItem(uid,30025,0,2,0,"1-0","OnUseItemEvent_31503")
	return VALUE_OK
end
