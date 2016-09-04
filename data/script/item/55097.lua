--1级性格技能卡宝箱
function OnUseItemEvent_55097(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55097") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,55097,0)
	return VALUE_OK
end
