--新年礼包
function OnUseItemEvent_31284(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,31288,3,1,0,"1-1","新年礼包")
	local rand = math.random(1,100)
	if rand <= 20 then
		local gem = {55066,55067,55068,55069}
		local item = gem[math.random(1,table.getn(gem))]
		s_addItem(uid,item,3,1,0,"1-1","新年礼包")
	elseif rand <= 30 then
		s_addItem(uid,55048,3,1,0,"1-1","新年礼包")
	elseif rand <= 50 then
		if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL) <= 80 then
			s_addItem(uid,55048,3,1,0,"1-1","新年礼包")
		else
			s_addItem(uid,29545,3,1,0,"1-1","迎新春")
		end
	elseif rand <= 60 then
		s_addItem(uid,29800,3,1,0,"1-1","新年礼包")
	elseif rand <= 70 then
		s_addItem(uid,29052,3,1,0,"1-1","新年礼包")
	elseif rand <= 95 then
		s_addItem(uid,26018,3,1,0,"1-1","新年礼包")
	else
		s_addItem(uid,26150,3,1,0,"1-1","新年礼包")
	end
	return VALUE_OK
end

--迎新春宝箱
function OnUseItemEvent_31285(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,7,3,10,0,"1-1","迎新春")
	s_addItem(uid,23055,3,3,0,"1-1","迎新春")
	s_addItem(uid,29026,3,50,0,"1-1","迎新春")
	s_addItem(uid,27110,3,15,0,"1-1,2-2","迎新春")
	return VALUE_OK
end

--贺新春宝箱
function OnUseItemEvent_31286(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,7,3,20,0,"1-1","迎新春")
	s_addItem(uid,23055,3,7,0,"1-1","迎新春")
	s_addItem(uid,29026,3,100,0,"1-1","迎新春")
	s_addItem(uid,27110,3,30,0,"1-1,2-2","迎新春")
	return VALUE_OK
end

--庆鸿运宝箱
function OnUseItemEvent_31287(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,7,3,30,0,"1-1","迎新春")
	s_addItem(uid,23055,3,10,0,"1-1","迎新春")
	s_addItem(uid,29026,3,150,0,"1-1","迎新春")
	s_addItem(uid,27110,3,45,0,"1-1,2-2","迎新春")
	s_addItem(uid,27125,3,15,0,"1-1","迎新春")
	return VALUE_OK
end

--许愿树礼包
function OnUseItemEvent_31289(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27201,0,1,0,"1-1","许愿树")
	s_addItem(uid,27211,0,1,0,"1-1","许愿树")
	s_addItem(uid,27221,0,1,0,"1-1","许愿树")
	s_addItem(uid,27231,0,1,0,"1-1","许愿树")
	s_addItem(uid,27241,0,1,0,"1-1","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31290(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	for i = 1,2 do
		s_addItem(uid,27201,0,1,0,"1-1","许愿树")
		s_addItem(uid,27211,0,1,0,"1-1","许愿树")
		s_addItem(uid,27221,0,1,0,"1-1","许愿树")
		s_addItem(uid,27231,0,1,0,"1-1","许愿树")
		s_addItem(uid,27241,0,1,0,"1-1","许愿树")
	end
	return VALUE_OK
end
function OnUseItemEvent_31291(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	for i = 1,5 do
		s_addItem(uid,27201,0,1,0,"1-1","许愿树")
		s_addItem(uid,27211,0,1,0,"1-1","许愿树")
		s_addItem(uid,27221,0,1,0,"1-1","许愿树")
		s_addItem(uid,27231,0,1,0,"1-1","许愿树")
		s_addItem(uid,27241,0,1,0,"1-1","许愿树")
	end
	return VALUE_OK
end
function OnUseItemEvent_31292(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	for i = 1,2 do
		s_addItem(uid,27202,0,1,0,"1-1","许愿树")
		s_addItem(uid,27212,0,1,0,"1-1","许愿树")
		s_addItem(uid,27222,0,1,0,"1-1","许愿树")
		s_addItem(uid,27232,0,1,0,"1-1","许愿树")
		s_addItem(uid,27242,0,1,0,"1-1","许愿树")
	end
	return VALUE_OK
end
function OnUseItemEvent_31293(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	for i = 1,5 do
		s_addItem(uid,27202,0,1,0,"1-1","许愿树")
		s_addItem(uid,27212,0,1,0,"1-1","许愿树")
		s_addItem(uid,27222,0,1,0,"1-1","许愿树")
		s_addItem(uid,27232,0,1,0,"1-1","许愿树")
		s_addItem(uid,27242,0,1,0,"1-1","许愿树")
	end
	return VALUE_OK
end
function OnUseItemEvent_31294(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-3,6-1","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31295(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-3,6-1","许愿树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-3,6-1","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31296(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-3,6-2","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31297(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-3,6-2","许愿树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-3,6-2","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31298(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,2-5,7-3,6-2","许愿树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,2-5,7-3,6-2","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31299(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,2,0,"1-1,2-2","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31300(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,4,0,"1-1,2-2","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31301(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,2,0,"1-1,2-3","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31302(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,4,0,"1-1,2-3","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31303(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,2,0,"1-1,2-4","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31304(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local itemid = 27108
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level > 60 then itemid = 27108 end
	s_addItem(uid,itemid,0,10,0,"1-1","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31305(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local itemid = 27108
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level > 60 then itemid = 27108 end
	s_addItem(uid,itemid,0,20,0,"1-1","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31306(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local itemid = 27108
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level > 60 then itemid = 27108 end
	s_addItem(uid,itemid,0,50,0,"1-1","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31307(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local itemid = 27108
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level > 60 then itemid = 27108 end
	s_addItem(uid,itemid,0,100,0,"1-1","许愿树")
	return VALUE_OK
end
function OnUseItemEvent_31308(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local itemid = 27108
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level > 60 then itemid = 27108 end
	s_addItem(uid,itemid,0,250,0,"1-1","许愿树")
	return VALUE_OK
end
