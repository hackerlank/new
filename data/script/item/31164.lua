--8级宝箱
function OnUseItemEvent_31164(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 121 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31164") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31164,0)
	return VALUE_OK
end

--9级宝箱
function OnUseItemEvent_54401(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 131 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_54401") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,54401,0)
	return VALUE_OK
end

--10级宝箱
function OnUseItemEvent_54402(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 141 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_54402") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,54402,0)
	return VALUE_OK
end
