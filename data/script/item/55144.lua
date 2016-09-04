-- 生肖画扇
function OnUseItemEvent_55144(uid,thisid,targetid)
	if uid == nil or uid == 0 then
		return VALUE_FAIL
	end
	s_openVigorPointAwardItem(uid,thisid)
	return VALUE_OK
end
