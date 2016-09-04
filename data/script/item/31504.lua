--测试A箱
function OnUseItemEvent_31504(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"不足21级，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31504") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openTreasure(uid,31504,0,thisid)
	return VALUE_OK
end

--测试B箱
function OnUseItemEvent_31505(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"不足21级，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31505") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openTreasure(uid,31505,0,thisid)
	return VALUE_OK
end

--测试C箱
function OnUseItemEvent_31506(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"不足21级，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31506") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openTreasure(uid,31506,0,thisid)
	return VALUE_OK
end

--测试D箱
function OnUseItemEvent_31507(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"不足21级，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31507") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openTreasure(uid,31507,0,thisid)
	return VALUE_OK
end
