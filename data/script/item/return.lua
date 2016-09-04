--以下为逆天药剂，慎重调整
--50-59级
function OnUseItemEvent_34137(uid,thisid)
	local today = s_getCurTime(TIME_ALLDAYS)
	if today ~= s_getVar(uid,10001,15) then
		s_addVar(uid,10001,15,today)
		s_addVar(uid,10001,12,0)
	end
	local times = s_getVar(uid,10001,12)
	if times > 3 then
		s_sysInfo(uid,"今天不能再使用50级逆天药剂了",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"50级逆天药剂") ~= VALUE_OK then
		return VALUE_FAIL
	end
	times = times + 1
	s_addVar(uid,10001,12,times)
	s_levelup(uid)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,5018,1,10)
	return VALUE_OK
end

--60-69级
function OnUseItemEvent_34138(uid,thisid)
	local today = s_getCurTime(TIME_ALLDAYS)
	if today ~= s_getVar(uid,10001,16) then
		s_addVar(uid,10001,16,today)
		s_addVar(uid,10001,13,0)
	end
	local times = s_getVar(uid,10001,13)
	if times > 2 then
		s_sysInfo(uid,"今天不能再使用60级逆天药剂了",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"60级逆天药剂") ~= VALUE_OK then
		return VALUE_FAIL
	end
	times = times + 1
	s_addVar(uid,10001,13,times)
	s_levelup(uid)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,5018,1,10)
	return VALUE_OK
end

--70-79级
function OnUseItemEvent_34139(uid,thisid)
	local today = s_getCurTime(TIME_ALLDAYS)
	if today ~= s_getVar(uid,10001,17) then
		s_addVar(uid,10001,17,today)
		s_addVar(uid,10001,14,0)
	end
	local times = s_getVar(uid,10001,14)
	if times == 2 then
		s_sysInfo(uid,"今天不能再使用70级逆天药剂了",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"70级逆天药剂") ~= VALUE_OK then
		return VALUE_FAIL
	end
	times = times + 1
	s_addVar(uid,10001,14,times)
	s_levelup(uid)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,5018,1,10)
	return VALUE_OK
end

--80-89级
function OnUseItemEvent_34164(uid,thisid)
	local today = s_getCurTime(TIME_ALLDAYS)
	if today ~= s_getVar(uid,10001,19) then
		s_addVar(uid,10001,19,today)
		s_addVar(uid,10001,20,0)
	end
	local times = s_getVar(uid,10001,20)
	if times >= 1 then
		s_sysInfo(uid,"今天不能再使用80级逆天药剂了",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"80级逆天药剂") ~= VALUE_OK then
		return VALUE_FAIL
	end
	times = times + 1
	s_addVar(uid,10001,20,times)
	s_levelup(uid)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,5018,1,10)
	return VALUE_OK
end

--90-99级
function OnUseItemEvent_34169(uid,thisid)
	local today = s_getCurTime(TIME_ALLDAYS)
	if today ~= s_getVar(uid,10001,24) then
		s_addVar(uid,10001,24,today)
		s_addVar(uid,10001,25,0)
	end
	local times = s_getVar(uid,10001,25)
	if times >= 1 then
		s_sysInfo(uid,"今天不能再使用90级逆天药剂了",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"90级逆天药剂") ~= VALUE_OK then
		return VALUE_FAIL
	end
	times = times + 1
	s_addVar(uid,10001,25,times)
	s_levelup(uid)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,5018,1,10)
	return VALUE_OK
end
--100-109级
function OnUseItemEvent_34206(uid,thisid)
	local today = s_getCurTime(TIME_ALLDAYS)
	if today ~= s_getVar(uid,10001,30) then
		s_addVar(uid,10001,30,today)
		s_addVar(uid,10001,31,0)
	end
	local times = s_getVar(uid,10001,31)
	if times >= 1 then
		s_sysInfo(uid,"今天不能再使用100级逆天药剂了",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"100级逆天药剂") ~= VALUE_OK then
		return VALUE_FAIL
	end
	times = times + 1
	s_addVar(uid,10001,31,times)
	s_levelup(uid)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,5018,1,10)
	return VALUE_OK
end
--里程碑道具（初级）
function OnUseItemEvent_34143(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"里程碑初级") ~= VALUE_OK then
		return VALUE_FAIL
	end
	AddRoleTask(uid,16009)
	--s_addItem(uid,10,3,50,0,"1-1","里程碑初级")
	--s_addItem(uid,34144,3,1,0,"1-1","里程碑初级")
	return VALUE_OK
end

--里程碑道具（中级）
function OnUseItemEvent_34144(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"里程碑中级") ~= VALUE_OK then
		return VALUE_FAIL
	end
	AddRoleTask(uid,16002)
	return VALUE_OK
end

--里程碑道具（高级）
function OnUseItemEvent_34145(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"里程碑高级") ~= VALUE_OK then
		return VALUE_FAIL
	end
	AddRoleTask(uid,16003)
	return VALUE_OK
end

--里程碑道具（超级）
function OnUseItemEvent_34170(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"里程碑超级") ~= VALUE_OK then
		return VALUE_FAIL
	end
	AddRoleTask(uid,16005)
	return VALUE_OK
end

--老兵心得录
function OnUseItemEvent_34146(uid,thisid)
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		s_sysInfo(uid,"您当前没有团，请加入团之后使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local times = s_getCorpsVar(corps,10001,1)
	if times == 10 then
		s_sysInfo(uid,"团老兵心得录使用已达10次，不可再次通过该道具增加团属性",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"老兵心得录") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addField(uid,4,20)
	s_addCorpsField(corps,CorpVar_Glory,100)
	s_addCorpsField(corps,CorpVar_MagicMaterials,20)
	s_addCorpsVar(corps,10001,1,times +1)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,5027,1,10)
	return VALUE_OK
end

--老兵装备礼包(攻)
function OnUseItemReturnItemG(uid,thisid,quality)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"老兵5星装备") ~= VALUE_OK then
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
	x = math.random(1,4)
	if x <= 1 then s_addItem(uid,1000*pro+itemlevel,0,1,1,quality,"OnUseItemEvent_34180") return VALUE_OK end
	if x <= 2 then s_addItem(uid,11000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEvent_34180") return VALUE_OK end
	if x <= 3 then s_addItem(uid,12000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEvent_34180") return VALUE_OK end
	if x <= 4 then s_addItem(uid,13000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEvent_34180") return VALUE_OK end
	return VALUE_OK
end

--老兵装备礼包(防)
function OnUseItemReturnItemF(uid,thisid,quality)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"老兵5星装备") ~= VALUE_OK then
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
	x = math.random(1,12)
	if x <= 1 then s_addItem(uid,14100+itemlevel,0,1,1,quality,"OnUseItemReturnItemF")	return VALUE_OK	end
	if x <= 2 then	s_addItem(uid,14200+itemlevel,0,1,1,quality,"OnUseItemReturnItemF")	return VALUE_OK	end
	if x <= 3 then	s_addItem(uid,15100+itemlevel,0,1,1,quality,"OnUseItemReturnItemF")	return VALUE_OK	end
	if x <= 4 then	s_addItem(uid,15200+itemlevel,0,1,1,quality,"OnUseItemReturnItemF")	return VALUE_OK	end
	if x <= 5 then	s_addItem(uid,16100+itemlevel,0,1,1,quality,"OnUseItemReturnItemF")	return VALUE_OK	end
	if x <= 6 then	s_addItem(uid,16200+itemlevel,0,1,1,quality,"OnUseItemReturnItemF")	return VALUE_OK	end
	if x <= 7 then	s_addItem(uid,17100+itemlevel,0,1,1,quality,"OnUseItemReturnItemF")	return VALUE_OK	end
	if x <= 8 then	s_addItem(uid,17200+itemlevel,0,1,1,quality,"OnUseItemReturnItemF") return VALUE_OK	end
	if x <= 9 then	s_addItem(uid,18100+itemlevel,0,1,1,quality,"OnUseItemReturnItemF")	return VALUE_OK	end
	if x <= 10 then s_addItem(uid,18200+itemlevel,0,1,1,quality,"OnUseItemReturnItemF") return VALUE_OK end
	if x <= 11 then s_addItem(uid,19100+itemlevel,0,1,1,quality,"OnUseItemReturnItemF") return VALUE_OK end
	if x <= 12 then s_addItem(uid,19200+itemlevel,0,1,1,quality,"OnUseItemReturnItemF") return VALUE_OK end
	return VALUE_OK
end


--老兵装备礼包1
function OnUseItemEvent_34180(uid,thisid)
	OnUseItemReturnItemG(uid, thisid, "1-1,2-5,6-2,7-3","老兵完美5星")
	s_addItem(uid,34181,0,1,0,"1-1","老兵装备礼包1")
	return VALUE_OK
end

--老兵装备礼包2
function OnUseItemEvent_34181(uid,thisid)
	OnUseItemReturnItemG(uid, thisid, "1-1,2-5,6-2,7-3","老兵完美5星")
	s_addItem(uid,34182,0,1,0,"1-1","老兵装备礼包2")
	return VALUE_OK
end

--老兵装备礼包3
function OnUseItemEvent_34182(uid,thisid)
	OnUseItemReturnItemG(uid, thisid, "1-1,2-5,6-2,7-3","老兵完美5星")
	s_addItem(uid,34183,0,1,0,"1-1","老兵装备礼包3")
	return VALUE_OK
end

--老兵装备礼包4
function OnUseItemEvent_34183(uid,thisid)
	OnUseItemReturnItemF(uid, thisid, "1-1,2-5,6-2,7-3","老兵完美5星")
	s_addItem(uid,34184,0,1,0,"1-1","老兵装备礼包4")
	return VALUE_OK
end

--老兵装备礼包5
function OnUseItemEvent_34184(uid,thisid)
	OnUseItemReturnItemF(uid, thisid, "1-1,2-5,6-2,7-3","老兵完美5星")
	s_addItem(uid,34185,0,1,0,"1-1","老兵装备礼包4")
	return VALUE_OK
end

--老兵装备礼包6
function OnUseItemEvent_34185(uid,thisid)
	OnUseItemReturnItemF(uid, thisid, "1-1,2-5,6-2,7-3","老兵完美5星")
	s_addItem(uid,34186,0,1,0,"1-1","老兵装备礼包4")
	return VALUE_OK
end

--老兵装备礼包7
function OnUseItemEvent_34186(uid,thisid)
	OnUseItemReturnItemF(uid, thisid, "1-1,2-5,6-2,7-3","老兵完美5星")
end
