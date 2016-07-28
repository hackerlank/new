function OnUseItemEvent_55307(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55307") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,43011,3,25,1,"1-1","宠物经验药剂（小）")
	s_addItem(uid,23051,3,25,1,"1-1","角色经验药剂（小）")
	s_addItem(uid,29066,3,1,1,"1-1,7-3","绿色舞会门票")
	return VALUE_OK
end
