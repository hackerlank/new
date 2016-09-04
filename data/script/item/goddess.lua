--命运女神的垂青
--所有任务所需道具脚本均在此配置

--通用逆天药剂，慎重调整，使用后提升1级，每天最多3次
function OnUseItemEvent_35200(uid,thisid)
	local today = s_getCurTime(TIME_ALLDAYS)
	if today ~= s_getVar(uid,10001,22) then
		s_addVar(uid,10001,22,today)
		s_addVar(uid,10001,21,0)
	end
	local times = s_getVar(uid,10001,21)
	if times > 3 then
		s_sysInfo(uid,"今天不能再使用通用逆天药剂了",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"通用逆天药剂") ~= VALUE_OK then
		return VALUE_FAIL
	end
	times = times + 1
	s_addVar(uid,10001,21,times)
	s_levelup(uid)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,5018,1,10)
	return VALUE_OK
end

--必绿道具
function OnUseItemEvent_35202(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_35202") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,150)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,150,1,60*60,country)
	return VALUE_OK
end

--猎命师手札通用
function OnUseItemEventlieming(uid,thisid,color)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"黄色猎命师手札") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 50 then
		s_addItem(uid,47001,0,1,0,color,"40级猎命师手札")
	elseif level >= 50 and level < 60 then
		s_addItem(uid,47001,0,1,0,color,"50级猎命师手札")
	elseif level >= 60 and level < 70 then
		s_addItem(uid,47001,0,1,0,color,"60级猎命师手札")
	elseif level >= 70 and level < 80 then
		s_addItem(uid,47001,0,1,0,color,"70级猎命师手札")
	elseif level >= 80 and level < 90 then
		s_addItem(uid,47001,0,1,0,color,"80级猎命师手札")
	elseif level >= 90 then
		s_addItem(uid,47001,0,1,0,color,"90级猎命师手札")
	end
	return VALUE_OK
end

--黄色猎命师手札
function OnUseItemEvent_35201(uid,thisid)	return OnUseItemEventlieming(uid, thisid, "1-1,7-2"	)	end

--绿色猎命师手札
function OnUseItemEvent_35207(uid,thisid)	return OnUseItemEventlieming(uid, thisid, "1-1,7-3"	)	end


--装备奖励
function OnUseItemEventnvshenitem(uid,thisid,quality)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEventnvshenitem") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if pro == Profession_Soldier then pro = 1 mo = 1
	elseif pro == Profession_Spy then pro = 2 mo = 2
	elseif pro == Profession_Gunman then pro = 3 mo = 1
	elseif pro == Profession_Blast then pro = 4 mo = 2
	elseif pro == Profession_Freeman then pro = 5 mo = 2
	elseif pro == Profession_Doctor then pro = 6 mo = 2
	end
	if level < 61 then itemlevel = 5
	elseif level >= 61 and level <= 70 then itemlevel = 6
	elseif level >= 71 and level <= 80 then itemlevel = 7
	elseif level >= 81 and level <= 90 then itemlevel = 8
	elseif level >= 91 then	itemlevel = 9
	end
	x = math.random(1,160)
	if x <= 10 then s_addItem(uid,14100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 20 then	s_addItem(uid,14200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 30 then	s_addItem(uid,15100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 40 then	s_addItem(uid,15200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 50 then	s_addItem(uid,16100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 60 then	s_addItem(uid,16200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 70 then	s_addItem(uid,17100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 80 then	s_addItem(uid,17200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK	end
	if x <= 90 then	s_addItem(uid,18100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 100 then s_addItem(uid,18200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 110 then s_addItem(uid,19100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 120 then s_addItem(uid,19200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 130 then s_addItem(uid,1000*pro+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 140 then s_addItem(uid,11000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 150 then s_addItem(uid,12000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 160 then s_addItem(uid,13000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	return VALUE_OK
end

--完美绿色装备宝箱
function OnUseItemEvent_35204(uid,thisid)	return OnUseItemEventnvshenitem(uid, thisid, "1-1,6-2,7-3","女神绿色装备")	end

--完美绿色5星装备宝箱
function OnUseItemEvent_35206(uid,thisid)	return OnUseItemEventnvshenitem(uid, thisid, "1-1,2-5,6-2,7-3","女神5星绿色装备")	end

--斗气石礼盒
function OnUseItemEvent_35205(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_35205") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 60 then	itemlevel = 1
	elseif level >= 60 and level < 70 then itemlevel = 1
	elseif level >= 70 and level < 80 then itemlevel = 2
	elseif level >= 80 and level < 90 then itemlevel = 3
	elseif level >= 90 and level < 100 then itemlevel = 4
	elseif level >= 100 and level < 110 then itemlevel = 5
	elseif level >= 110 and level < 120 then itemlevel = 6
	elseif level >= 120 and level < 130 then itemlevel = 7
	elseif level >= 130 and level < 140 then itemlevel = 8
	else itemlevel = 9
	end
	if pro == Profession_Soldier or pro == Profession_Gunman then
		s_addItem(uid,27500+itemlevel,0,1,0,"1-1","斗气石礼包")
		s_addItem(uid,27520+itemlevel,0,1,0,"1-1","斗气石礼包")
		s_addItem(uid,27530+itemlevel,0,1,0,"1-1","斗气石礼包")
		s_addItem(uid,27540+itemlevel,0,1,0,"1-1","斗气石礼包")
	else
		s_addItem(uid,27510+itemlevel,0,1,0,"1-1","斗气石礼包")
		s_addItem(uid,27520+itemlevel,0,1,0,"1-1","斗气石礼包")
		s_addItem(uid,27530+itemlevel,0,1,0,"1-1","斗气石礼包")
		s_addItem(uid,27540+itemlevel,0,1,0,"1-1","斗气石礼包")
	end
	return VALUE_OK
end

--1-4等金刚钻
function OnUseItemEvent_35208(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_35208") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,1,0,"1-1,2-1","金刚钻礼包")
	s_addItem(uid,27110,0,1,0,"1-1,2-2","金刚钻礼包")
	s_addItem(uid,27110,0,1,0,"1-1,2-3","金刚钻礼包")
	s_addItem(uid,27110,0,1,0,"1-1,2-4","金刚钻礼包")
	return VALUE_OK
end


--绑银上限清除道具
function OnUseItemEvent_35210(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"绑银上限清除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_setVar(uid,1,20,0)
	s_removeMoney(uid,MoneyType_MoneyTicket,1,"清上限刷新显示")
	return VALUE_OK
end

--女神的经验赐福（封印经验道具）
function OnUseItemEventfengyin(uid,thisid)
	local worldlevel = s_getWorldLevel()
	if s_deleteItemByThisID(uid,thisid,1,"女神的封印经验药剂") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if worldlevel == 1  then x = 0
	elseif worldlevel == 2	then x = 1
	elseif worldlevel == 3	then x = 2
	elseif worldlevel == 4	then x = 3
	elseif worldlevel == 5	then x = 4
	elseif worldlevel == 6	then x = 5
	elseif worldlevel == 7	then x = 6
	else x = 7
	end
	s_addItem(uid,34101 + x,0,1,0,"1-1","女神的经验赐福（封印经验道具）")
	return VALUE_OK
end


--女神的经验赐福（封印经验道具）
function OnUseItemEvent_35212(uid,thisid)	return OnUseItemEventfengyin(uid, thisid, "1-1"	)	end

--女神的时装礼包
function OnUseItemEvent_35213(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_35213") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20208,0,1,0,"1-1","女神的时装礼包男")
	else
		s_addItem(uid,20206,0,1,0,"1-1","女神的时装礼包女")
	end
	return VALUE_OK
end

--女神的宠物时装礼包
function OnUseItemEvent_35214(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_35214") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,29518,0,3,0,"1-1","女神宠物礼包男")
	else
		s_addItem(uid,29519,0,3,0,"1-1","女神宠物礼包女")
	end
	return VALUE_OK
end
