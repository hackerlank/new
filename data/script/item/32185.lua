--老玩家回归礼包(20级)
function OnUseItemEvent_32185(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32185") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32186,0,1,0,"1-1","老玩家回归礼包(20级)")
	s_addItem(uid,29560,0,1,0,"1-1","老玩家回归礼包(20级)")
	return VALUE_OK
end

--使用老玩家回归礼包(40级)
function OnUseItemEvent_32186(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32186") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,52045,0,1,0,"1-1","老玩家回归礼包(40级)")
	return VALUE_OK
end
