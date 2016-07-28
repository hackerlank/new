-- 老兵逆袭日记B
function OnUseItemEvent_55106(uid, thisid,targetid)
	if uid == nil or uid == 0 then
		return VALUE_FAIL
	end
	s_openSoldierDiary(uid,1,thisid)
	return VALUE_OK
end
