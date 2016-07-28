function OnUseItemEvent_55227(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_sysInfo(uid,"中秋快乐，人圆事圆！")
	s_openPalace(uid,55227,0)
	return VALUE_OK
end
