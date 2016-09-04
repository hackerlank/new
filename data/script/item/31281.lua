--龙宝宝召唤器
function OnUseItemEvent_31281(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local itemid = s_addItem(uid,41643,0,1,0,"","OnUseItemEvent_31281")
	if itemid == nil then
		itemid = 0
	end
	ShowUserDemonSfx(uid,29,itemid)
	return VALUE_OK
end
