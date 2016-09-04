--爱的味道
function OnUseItemEvent_55260(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55260") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55257,3,1,1,"1-1","爱的味道")	--恋爱指南
	s_addItem(uid,29031,3,1,1,"1-1","爱的味道")	--红玫瑰
	s_addItem(uid,30004,3,3,1,"1-1","爱的味道")   --情人节烟花
	return VALUE_OK
end

