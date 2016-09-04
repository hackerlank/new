--潘多拉魔盒
function OnUseItemEvent_34207(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 41 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用删除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 41 and level < 71 then
		s_openTreasure(uid,34207,1,thisid)
	elseif level >= 71 and level < 81 then
		s_openTreasure(uid,34207,2,thisid)
	elseif level >= 81 and level<90 then
		s_openTreasure(uid,34207,3,thisid)
	elseif level == 90 then
		s_openTreasure(uid,34207,4,thisid)
	elseif level>=91 then
		s_openTreasure(uid,34207,5,thisid)
	end
	return VALUE_OK
end
