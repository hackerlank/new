--水晶皇后鱼
function OnUseItemEvent_29058(uid,thisid)
	if s_getItemValue(uid,thisid,Item_Attribute_Judge) == 0 then
		s_sysInfo(uid,"道具未鉴定，不可被使用")
		return VALUE_FAIL
	end
	local exp = s_getItemValue(uid,thisid,Item_Attribute_TakeExp)
	--使用道具
	if s_deleteItemByThisID(uid,thisid,1,"使用水晶皇后鱼") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,exp,ExpType_Fish,29058)
	return VALUE_OK
end
