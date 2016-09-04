--旋转魔方
function OnUseItemEvent_31411(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,100)
	if rand <= 84 then
		s_addItem(uid,31411,0,1,0,"1-1","旋转魔方")
		s_sysInfo(uid,"咔…咔…咔…魔方旋转了几下，可惜未解开。")
		s_messageBox(uid,"咔…咔…咔…魔方旋转了几下，可惜未解开。")
	else
		s_addItem(uid,31412,0,1,0,"1-1","旋转魔方")
		s_sysInfo(uid,"咔嚓，三阶魔方解开了，里面浮出一颗璀璨的结晶！")
		s_messageBox(uid,"咔嚓，三阶魔方解开了，里面浮出一颗璀璨的结晶！")
	end
	return VALUE_OK
end

function OnUseItemEvent_31412(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 87 * (50 + 0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31412)
	return VALUE_OK
end
--变身卡1
function OnUseItemEvent_31400(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31400") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,22981,3600)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--变身卡2
function OnUseItemEvent_31401(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31401") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,10081,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--变身卡3
function OnUseItemEvent_31402(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31402") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,10177,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--变身卡4
function OnUseItemEvent_31403(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31403") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,10178,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--变身卡5
function OnUseItemEvent_31404(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31404") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,10189,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--变身卡6
function OnUseItemEvent_31405(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31405") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,10190,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--变身卡7
function OnUseItemEvent_31406(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31406") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,10184,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--变身卡8
function OnUseItemEvent_31407(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31407") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,22912,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--变身卡9
function OnUseItemEvent_31408(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31408") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,10183,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--变身卡10
function OnUseItemEvent_31409(uid,thisid,targetid)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31409") == VALUE_OK then
		s_setTrafficType(uid,TrafficType_MagicChange,10128,60)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--[[塔布里斯装备礼盒
function OnUseItemEvent_31410(uid,thisid)
if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
return VALUE_FAIL
end
local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
local weapons = 10
local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
if pro ~= nil and pro ~= 0 then
if pro == Profession_Soldier then
weapons = 10
end
if pro == Profession_Spy then
weapons = 20
end
if pro == Profession_Gunman then
weapons = 30
end
if pro == Profession_Blast then
weapons = 40
end
if pro == Profession_Freeman then
weapons = 50
end
if pro == Profession_Doctor then
weapons = 60
end
table.insert(EQUIP,weapons) --在表中插入武器
if pro == Profession_Soldier or pro == Profession_Gunman then
table.insert(EQUIP,111) --项链、勋章、戒指
table.insert(EQUIP,121)
table.insert(EQUIP,131)
else
table.insert(EQUIP,112) --项链、勋章、戒指
table.insert(EQUIP,122)
table.insert(EQUIP,132)
end
end
local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","寻找小丑")
local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","寻找小丑")
return VALUE_OK
end]]--
--愚人节商城礼盒（61级以上）
function OnUseItemEvent_31421(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31421") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_31421")
	s_addItem(uid,26102,0,20,0,"1-1","OnUseItemEvent_31421")
	s_addItem(uid,27110,0,1,0,"1-1,2-4","OnUseItemEvent_31421")
	s_addItem(uid,27123,0,20,0,"1-1","OnUseItemEvent_31421")
	s_addItem(uid,31399,0,1,0,"1-1","OnUseItemEvent_31421")
	return VALUE_OK
end
--魔法扑克盒
function OnUseItemEvent_31397(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31397") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31397,0)
	return VALUE_OK
end
--高级魔法扑克盒
function OnUseItemEvent_31399(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31399") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31399,0)
	return VALUE_OK
end
--塔布里斯远征箱
function OnUseItemEvent_31416(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31416") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 20 and level <= 60 then
		s_openPalace(uid,31416,1)
	elseif level >= 61 then
		s_openPalace(uid,31416,2)
	end
	return VALUE_OK
end
--塔布里斯速递箱
function OnUseItemEvent_31417(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31417") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 20 and level <= 60 then
		s_openPalace(uid,31417,1)
	elseif level >= 61 then
		s_openPalace(uid,31417,2)
	end
	return VALUE_OK
end
--塔布里斯舞票箱
function OnUseItemEvent_31418(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31418") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 20 and level <= 60 then
		s_openPalace(uid,31418,1)
	elseif level >= 61 then
		s_openPalace(uid,31418,2)
	end
	return VALUE_OK
end
--塔布里斯钓鱼箱
function OnUseItemEvent_31419(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31419") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31419,0)
	return VALUE_OK
end
--塔布里斯猎命箱
function OnUseItemEvent_31420(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31420") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 21 and level <= 29 then
		s_openPalace(uid,31420,1)
	elseif level >= 30 and level <= 39 then
		s_openPalace(uid,31420,2)
	elseif level >= 40 and level <= 49 then
		s_openPalace(uid,31420,3)
	elseif level >= 50 and level <= 59 then
		s_openPalace(uid,31420,4)
	elseif level >= 60 and level <= 69 then
		s_openPalace(uid,31420,5)
	elseif level >= 70 and level <= 79 then
		s_openPalace(uid,31420,6)
	elseif level >= 80 and level <= 89 then
		s_openPalace(uid,31420,7)
	elseif level >= 90 and level <= 99 then
		s_openPalace(uid,31420,8)
	elseif level >= 100 then
		s_openPalace(uid,31420,9)
	end
	return VALUE_OK
end
