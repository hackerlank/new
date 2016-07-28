--杰克灯
function OnUseItemEvent_55026(uid,thisid,targetid)
	local map,x,y = 7,120,399;
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local qingbaocountry = GetQBTaskTargetCountry(homeland)
	local countryname = s_getCountryName(qingbaocountry)
	if country ~= qingbaocountry  then
		s_sysInfo(uid,"<p><n>似乎不是正确的地点呢！需前往"..countryname.."</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	if mapid ~= map then
		s_sysInfo(uid,"<p><n>似乎不是正确的地点呢！需前往"..countryname.."</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	if math.abs(posx - x) > 5 or math.abs(posy - y) > 5 then
		s_sysInfo(uid,"<p><n>好像距离不太对！需前往"..countryname.."</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_playClientLua(uid,10)
	AddRoleTaskOperate(uid,50013)
	return VALUE_OK
end

--魔法棒
function OnUseItemEvent_55030(uid,thisid,targetid)
	local month = s_getCurTime(TIME_CURMONTHS) + 1
	local mday = s_getCurTime(TIME_CURMDAYS)
	if month ~= 10 and month ~= 11 then
		if month == 11 and mday <= 4 then
			if month == 10 and mday >= 26 then
				return OK
			else
				s_sysInfo(uid,"万圣节活动已经结束，感谢您参与！",ChatPos_Sys + ChatPos_Important)
				return VALUE_FAIL
			end
		end
	end



	local hours = s_getCurTime(TIME_CURHOURS)
	if hours < 18 or hours >= 19 then
		s_sysInfo(uid,"请在活动期间18-19点使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if s_checkZoneType(SCENE_ENTRY_PLAYER,uid,ZONE_DANCE) ~= VALUE_OK or mapid ~= 3 then
		s_sysInfo(uid,"请在活动期间在光明城舞区使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local traffic = s_getTrafficType(uid)
	if traffic == TrafficType_Join or traffic == TrafficType_RTLead or traffic == TrafficType_RTFollow
		or traffic == TrafficType_Dance or traffic == TrafficType_DanceDouble or traffic == TrafficType_Horse
		or traffic == TrafficType_SuperWeapon or traffic == TrafficType_RideChange
		or traffic == TrafficType_InGuard or traffic == TrafficType_InHorse then
		s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用魔法棒扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_resetTrafficType(uid)
	local value = 10189
	local rand = math.random(1,100)
	if rand < 18 then
		value = 10189 --条顿魔将
	elseif rand < 36 then
		value = 10204 --苍林蓝妖
	elseif rand < 54 then
		value = 10213 --土魔邪狮
	elseif rand < 72 then
		value = 10210 --魔族邪豹
	elseif rand < 90 then
		value = 10147 --鬼剑士
	else
		value = 22916 --宫廷小丑
		s_sysInfo(uid,"了不起，竟然化身为稀有的宫廷小丑，穿着这个去舞会鉴定，可以获得2倍经验")
	end
	s_addbuff(SCENE_ENTRY_PLAYER,uid,5036,1,10)
	s_setTrafficType(uid,TrafficType_MagicChange,value,60*15)
	return VALUE_OK
end

--“速递通行证”盒
function OnUseItemEvent_55037(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55037") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 20 and level <= 60 then
		s_openPalace(uid,55037,1)
	elseif level >= 61 then
		s_openPalace(uid,55037,2)
	end
	return VALUE_OK
end

--“南瓜魔导器”盒
function OnUseItemEvent_55036(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55036") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 20 and level <= 60 then
		s_addItem(uid,55031,3,1,0,"1-1","OnUseItemEvent_55036")
	elseif level >= 61 and level <= 80 then
		s_addItem(uid,55032,3,1,0,"1-1","OnUseItemEvent_55036")
	elseif level >= 81 and level <= 90 then
		s_addItem(uid,55033,3,1,0,"1-1","OnUseItemEvent_55036")
	elseif level >= 91 and level <= 100 then
		s_addItem(uid,55034,3,1,0,"1-1","OnUseItemEvent_55036")
	elseif level >= 101 and level <= 110 then
		s_addItem(uid,55035,3,1,0,"1-1","OnUseItemEvent_55036")
	elseif level >= 111 and level <= 120 then
		s_addItem(uid,55248,3,1,0,"1-1","OnUseItemEvent_55036")
	elseif level >= 121 and level <= 130 then
		s_addItem(uid,55249,3,1,0,"1-1","OnUseItemEvent_55036")
	elseif level >= 131 and level <= 140 then
		s_addItem(uid,55250,3,1,0,"1-1","OnUseItemEvent_55036")
	elseif level >= 141 then
		s_addItem(uid,55251,3,1,0,"1-1","OnUseItemEvent_55036")
	end
	return VALUE_OK
end

--南瓜藏宝箱
function OnUseItemEvent_55229(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 35 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	local money = 0
	local maxtime = 20
	if s_getVar(uid,116,165) >= maxtime then
		s_sysInfo(uid,"今日南瓜藏宝箱已经开启".. maxtime .."次，不可再进行开启！")
		return VALUE_FAIL
	end
	if s_getVar(uid,116,165) == 3 then
		money = 50
	elseif s_getVar(uid,116,165) == 4 then
		money = 100
	elseif s_getVar(uid,116,165) == 5 then
		money = 200
	elseif s_getVar(uid,116,165) >= 6 then
		money = 300
	end
	if money ~= 0 then
		if s_removeMoney(uid,MoneyType_Money,money,"开南瓜藏宝箱") ~= VALUE_OK then
			s_sysInfo(uid,"银币不足，不可开启")
			return VALUE_FAIL
		end
	end
	if s_deleteItemByThisID(uid,thisid,1,"开南瓜藏宝箱") ~= VALUE_OK then
		return VALUE_FAIL
	end
	-- 1     2     3    4    5     6     7    8    9    10    11  12  13 几率
	local rates = {1500, 1000, 800, 1500, 1000, 1000, 500, 500, 800, 399, 1000, 50, 1}
	local rand = math.random(1,10000)
	local value = 0
	local itemrates = 0
	for i=1,table.getn(rates) do
		value = value + rates[i]
		itemrates = i
		if rand <= value then
			if itemrates == 1 then
				s_addItem(uid,26102,3,2,0,"1-1","幸运宝石中")
			elseif itemrates == 2 then
				s_addItem(uid,26141,3,3,0,"1-1","初级生命精华小")
			elseif itemrates == 3 then
				s_addItem(uid,32211,3,1,0,"1-1","三绿宝箱")
			elseif itemrates == 4 then
				s_addItem(uid,23051,3,15,0,"1-1","经验药剂小")
			elseif itemrates == 5 then
				s_addItem(uid,29026,3,10,0,"1-1","血精石")
			elseif itemrates == 6 then
				s_addItem(uid,43007,3,10,0,"1-1","潜力之印")
			elseif itemrates == 7 then
				s_addItem(uid,55048,3,1,0,"1-1","神之水滴")
			elseif itemrates == 8 then
				s_addItem(uid,32212,3,1,0,"1-1","三等宝石盒子")
			elseif itemrates == 9 then
				s_addItem(uid,31410,3,3,0,"1-1","装备礼盒")
			elseif itemrates == 10 then
				s_addItem(uid,43006,3,20,0,"1-1","蓝色奇幻球")
			elseif itemrates == 11 then
				s_addItem(uid,10,3,3,0,"1-1","100赠点券")
			elseif itemrates == 12 then
				s_addItem(uid,27110,3,1,0,"1-1,2-4","金刚钻4等")
			elseif itemrates == 13 then
				s_addItem(uid,52064,3,1,0,"1-1","鬼哭神嚎坐骑时装")
				local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
				s_worldInfo("<p><n>【系】"..name.."</n><n>开启南瓜藏宝箱，获得万圣节限定鬼哭狼嚎坐骑时装！这是要逆天么！</n></p>",ChatPos_Sys + ChatPos_Honor)
			end
			break;
		end
	end

	s_setVar(uid,116,165,s_getVar(uid,116,165)+1)
	s_sysInfo(uid,"今日南瓜藏宝箱剩余开启次数：".. (maxtime - s_getVar(uid,116,165)) .."")
	AddRoleTaskOperate(uid,50042)
	return VALUE_OK
end
--万圣节称号拼图（小）
function OnUseItemEvent_55230(uid,thisid,targetid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 21*(50+0.1*level^2.2)
	if s_deleteItemByThisID(uid,thisid,1,"万圣节称号拼图") == VALUE_OK then
		s_refreshExp(uid,exp,ExpType_Item,55230)
	end
	return VALUE_OK
end
--万圣节称号拼图（中）
function OnUseItemEvent_55231(uid,thisid,targetid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 21*(50+0.1*level^2.2)
	if s_deleteItemByThisID(uid,thisid,1,"万圣节称号拼图") == VALUE_OK then
		s_refreshExp(uid,exp,ExpType_Item,55231)
	end
	return VALUE_OK
end
--万圣节称号拼图（大）
function OnUseItemEvent_55232(uid,thisid,targetid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 21*(50+0.1*level^2.2)
	if s_deleteItemByThisID(uid,thisid,1,"万圣节称号拼图") == VALUE_OK then
		s_refreshExp(uid,exp,ExpType_Item,55232)
	end
	return VALUE_OK
end
--万圣节称号拼图（超）
function OnUseItemEvent_55233(uid,thisid,targetid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 21*(50+0.1*level^2.2)
	if s_deleteItemByThisID(uid,thisid,1,"万圣节称号拼图") == VALUE_OK then
		s_refreshExp(uid,exp,ExpType_Item,55233)
	end
	return VALUE_OK
end
--超值限购礼盒（小）
function OnUseItemEvent_55234(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55234") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26102,3,10,0,"1-1","幸运宝石中")
	s_addItem(uid,27108,3,20,0,"1-1","升级宝石中")
	s_addItem(uid,55230,3,1,0,"1-1","万圣节称号拼图小")
	s_addMoney(uid,MoneyType_GoldTicket,800,"800赠点券")
	s_addMoney(uid,MoneyType_Money,1000,"1000银币券",MoneyActionTypeAdd_Tick)
	return VALUE_OK
end
--超值限购礼盒（中）
function OnUseItemEvent_55235(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55235") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26102,3,50,0,"1-1","幸运宝石中")
	s_addItem(uid,27108,3,105,0,"1-1","升级宝石中")
	s_addItem(uid,55231,3,1,0,"1-1","万圣节称号拼图中")
	s_addItem(uid,27123,3,100,0,"1-1","纹章升级宝石中")
	s_addItem(uid,55217,3,5,0,"1-1","玉髓礼盒")
	s_addItem(uid,27110,3,1,0,"1-1,2-3","3级金刚钻")
	s_addMoney(uid,MoneyType_GoldTicket,4000,"4000赠点券")
	s_addMoney(uid,MoneyType_Money,5000,"5000银币券",MoneyActionTypeAdd_Tick)
	return VALUE_OK
end
--超值限购礼盒（大）
function OnUseItemEvent_55236(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55236") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26102,3,100,0,"1-1","幸运宝石中")
	s_addItem(uid,27108,3,220,0,"1-1","升级宝石中")
	s_addItem(uid,55232,3,1,0,"1-1","万圣节称号拼图大")
	s_addItem(uid,27123,3,210,0,"1-1","纹章升级宝石中")
	s_addItem(uid,55217,3,11,0,"1-1","玉髓礼盒")
	s_addItem(uid,27110,3,5,0,"1-1,2-3","3级金刚钻")
	s_addMoney(uid,MoneyType_GoldTicket,8000,"8000赠点券")
	s_addMoney(uid,MoneyType_Money,10000,"10000银币券",MoneyActionTypeAdd_Tick)
	return VALUE_OK
end
--超值限购礼盒（超）
function OnUseItemEvent_55237(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55237") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26102,3,300,0,"1-1","幸运宝石中")
	s_addItem(uid,27108,3,720,0,"1-1","升级宝石中")
	s_addItem(uid,55233,3,1,0,"1-1","万圣节称号拼图超")
	s_addItem(uid,27123,3,660,0,"1-1","纹章升级宝石中")
	s_addItem(uid,55217,3,36,0,"1-1","玉髓礼盒")
	s_addItem(uid,27110,3,25,0,"1-1,2-3","3级金刚钻")
	s_addMoney(uid,MoneyType_GoldTicket,24000,"24000赠点券")
	s_addMoney(uid,MoneyType_Money,30000,"30000银币券",MoneyActionTypeAdd_Tick)
	return VALUE_OK
end
