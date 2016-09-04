-- 老兵逆袭日记A
function OnUseItemEvent_55105(uid, thisid,targetid)
	if uid == nil or uid == 0 then
		return VALUE_FAIL
	end
	s_openSoldierDiary(uid,0,thisid)
	return VALUE_OK
end
