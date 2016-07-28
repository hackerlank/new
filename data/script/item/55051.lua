--春运宝箱
function OnUseItemEvent_55051(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 61 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除春运宝箱") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 61 then
		s_openTreasure(uid,55051,1,thisid)
	end
	return VALUE_OK
end

--春运宝箱（飞机票）
function OnUseItemEvent_55052(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 61 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除春运宝箱（机票）") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 61 then
		s_openTreasure(uid,55052,1,thisid)
	end
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	s_worldInfo("<p><n color=GXColorBlueSky>【系】开年好运！恭喜"..name.."</n><n color=GXColorBlueSky>幸运的获得1张春运火车票（国内）！</n><book bookid='70275'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	return VALUE_OK
end

--春运宝箱（火车票）
function OnUseItemEvent_55053(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 61 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除春运宝箱（火车票）") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 61 then
		s_openTreasure(uid,55053,1,thisid)
	end
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	s_worldInfo("<p><n color=GXColorBlueSky>【系】开年好运！恭喜"..name.."</n><n color=GXColorBlueSky>幸运的获得1张春运飞机票（国内）！</n><book bookid='70275'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	return VALUE_OK
end
