--潘多拉魔盒
function OnUseItemEvent_34168(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 41 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用删除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 41 and level < 71 then
		s_openTreasure(uid,34168,1,thisid)
	elseif level >= 71 and level < 81 then
		s_openTreasure(uid,34168,2,thisid)
	elseif level >= 81 and level<90 then
		s_openTreasure(uid,34168,3,thisid)
	elseif level == 90 then
		s_openTreasure(uid,34168,4,thisid)
	elseif level>=91 and level<100 then
		s_openTreasure(uid,34168,5,thisid)
	elseif level>=100 then
		s_openTreasure(uid,34168,6,thisid)
	end
	return VALUE_OK
end
