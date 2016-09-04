--3级技能卡宝箱
function OnUseItemEvent_55019(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55019") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,55019,0)
	return VALUE_OK
end
