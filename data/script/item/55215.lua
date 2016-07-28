--2013七夕时装盒（男）
function OnUseItemEvent_55215(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55215") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20296,3,1,0,"1-0,3-604800","OnUseItemEvent_55215")--时装
	s_addItem(uid,20304,3,1,0,"1-0","OnUseItemEvent_55215")--发型
	s_addItem(uid,24126,3,1,0,"1-0","OnUseItemEvent_55215")--称号
	s_addItem(uid,30003,3,2,0,"1-0","OnUseItemEvent_55215")--烟花
	return VALUE_OK
end

--2013七夕时装盒（女）
function OnUseItemEvent_55216(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55216") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20297,3,1,0,"1-0,3-604800","OnUseItemEvent_55216")--时装
	s_addItem(uid,20351,3,1,0,"1-0","OnUseItemEvent_55216")--发型
	s_addItem(uid,24127,3,1,0,"1-0","OnUseItemEvent_55216")--称号
	s_addItem(uid,30002,3,2,0,"1-0","OnUseItemEvent_55216")--烟花
	return VALUE_OK
end
