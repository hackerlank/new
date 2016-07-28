--白色情人节烟花盒
function OnUseItemEvent_31382(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local ITEMS = {30002,30003,30004,30006,30007,30008}
	s_addItem(uid,ITEMS[math.random(1,table.getn(ITEMS))],0,2,0,"1-1","烟花礼盒")
	return VALUE_OK
end
