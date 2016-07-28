--许愿树礼包
function OnUseItemEvent_31348(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31348") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29302,0,1,0,"1-1","OnUseItemEvent_31348")
	return VALUE_OK
end

function OnUseItemEvent_31349(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31349") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29302,0,2,0,"1-1","OnUseItemEvent_31349")
	return VALUE_OK
end

function OnUseItemEvent_31350(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31350") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29302,0,3,0,"1-1","OnUseItemEvent_31350")
	return VALUE_OK
end

function OnUseItemEvent_31351(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31351") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29302,0,4,0,"1-1","OnUseItemEvent_31351")
	return VALUE_OK
end

function OnUseItemEvent_31352(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31352") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29302,0,5,0,"1-1","OnUseItemEvent_31352")
	return VALUE_OK
end

function OnUseItemEvent_31353(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	return VALUE_OK
end
function OnUseItemEvent_31354(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	return VALUE_OK
end

function OnUseItemEvent_31355(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	return VALUE_OK
end

function OnUseItemEvent_31356(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	return VALUE_OK
end

function OnUseItemEvent_31357(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","祈福树")
	return VALUE_OK
end

function OnUseItemEvent_31358(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,2,0,"1-1,2-2","祈福树")
	return VALUE_OK
end
function OnUseItemEvent_31359(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,3,0,"1-1,2-2","祈福树")
	return VALUE_OK
end
function OnUseItemEvent_31360(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,4,0,"1-1,2-2","祈福树")
	return VALUE_OK
end
function OnUseItemEvent_31361(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,5,0,"1-1,2-2","祈福树")
	return VALUE_OK
end
function OnUseItemEvent_31362(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,6,0,"1-1,2-2","祈福树")
	return VALUE_OK
end


function OnUseItemEvent_31363(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local itemid = 43007
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level > 60 then itemid = 43007 end
	s_addItem(uid,itemid,0,5,0,"1-1","祈福树")
	return VALUE_OK
end
function OnUseItemEvent_31364(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local itemid = 43007
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level > 60 then itemid = 43007 end
	s_addItem(uid,itemid,0,7,0,"1-1","祈福树")
	return VALUE_OK
end
function OnUseItemEvent_31365(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local itemid = 43007
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level > 60 then itemid = 43007 end
	s_addItem(uid,itemid,0,9,0,"1-1","祈福树")
	return VALUE_OK
end
function OnUseItemEvent_31366(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local itemid = 43007
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level > 60 then itemid = 43007 end
	s_addItem(uid,itemid,0,12,0,"1-1","祈福树")
	return VALUE_OK
end
function OnUseItemEvent_31367(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local itemid = 43007
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level > 60 then itemid = 43007 end
	s_addItem(uid,itemid,0,15,0,"1-1","祈福树")
	return VALUE_OK
end
