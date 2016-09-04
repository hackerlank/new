--五一装备箱
function OnUseItemEvent_31479(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","五一装备箱")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","五一装备箱")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","五一装备箱")
	return VALUE_OK
end
--五一商城礼盒（61级以上）
function OnUseItemEvent_31481(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31481") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_31481")
	s_addItem(uid,26102,0,20,0,"1-1","OnUseItemEvent_31481")
	s_addItem(uid,27110,0,1,0,"1-1,2-4","OnUseItemEvent_31481")
	s_addItem(uid,26149,0,2,0,"1-1,2-3","OnUseItemEvent_31481")
	s_addItem(uid,31480,0,2,0,"1-1","OnUseItemEvent_31481")
	return VALUE_OK
end

--劳伦斯的货物箱
function OnUseItemEvent_31454(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31454") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 20 and level <= 60 then
		s_openPalace(uid,31454,1)
	elseif level >= 61 then
		s_openPalace(uid,31454,2)
	end
	return VALUE_OK
end
