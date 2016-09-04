--评定报告
function OnUseItemEvent_55218(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"报告增加协作点") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addField(uid,UserVar_CooperationPoint,5)
	s_sysInfo(uid,"协作点增加5点")
	return VALUE_OK
end
