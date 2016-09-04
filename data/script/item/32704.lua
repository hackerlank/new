--电玩巴士新手卡(1级)
function OnUseItemEvent_32704(uid,thisid)
	local worldlevel = s_getWorldLevel()
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32704") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if worldlevel < 2 then
	--s_addItem(uid,23,0,1,0,"1-1,192-61,193-10","电玩巴士新手卡(1级)")
	--s_addItem(uid,26,0,1,0,"1-1,192-31,193-1","电玩巴士新手卡(1级)")
	end
	s_addItem(uid,32705,0,1,0,"1-1","电玩巴士新手卡(1级)")
	s_addItem(uid,6,0,1,0,"1-1","电玩巴士新手卡(1级)")
	return VALUE_OK
end

--电玩巴士新手卡(10级)
function OnUseItemEvent_32705(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32705") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32706,0,1,0,"1-1","电玩巴士新手卡(10级)")
	s_addItem(uid,26102,0,30,0,"1-1","电玩巴士新手卡(10级)")
	s_addItem(uid,6,0,2,0,"1-1","电玩巴士新手卡(10级)")
	return VALUE_OK
end

--电玩巴士新手卡(20级)
function OnUseItemEvent_32706(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32706") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32707,0,1,0,"1-1","电玩巴士新手卡(20级)")
	s_addItem(uid,6,0,4,0,"1-1","电玩巴士新手卡(20级)")
	s_addItem(uid,29526,0,5,0,"1-1","电玩巴士新手卡(20级)")
	return VALUE_OK
end

--电玩巴士新手卡(30级)
function OnUseItemEvent_32707(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32707") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32708,0,1,0,"1-1","电玩巴士新手卡(30级)")
	s_addItem(uid,6,0,10,0,"1-1","电玩巴士新手卡(30级)")
	s_addItem(uid,26102,0,40,0,"1-1","电玩巴士新手卡(30级)")
	s_addItem(uid,29550,0,3,0,"1-1","电玩巴士新手卡(30级)")
	return VALUE_OK
end

--电玩巴士新手卡(40级)
function OnUseItemEvent_32708(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32708") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20184,0,1,1,"1-1,7-0,3-259200","电玩巴士新手卡(40级)")
	else
		s_addItem(uid,20179,0,1,1,"1-1,7-0,3-259200","电玩巴士新手卡(40级)")
	end
	s_addItem(uid,32709,0,1,0,"1-1","电玩巴士新手卡(40级)")
	s_addItem(uid,6,0,15,0,"1-1","电玩巴士新手卡(40级)")
	s_addItem(uid,27108,0,40,0,"1-1","电玩巴士新手卡(40级)")
	return VALUE_OK
end

--电玩巴士新手卡(50级)
function OnUseItemEvent_32709(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32709") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32710,0,1,0,"1-1","电玩巴士新手卡(50级)")
	s_addItem(uid,6,0,20,0,"1-1","电玩巴士新手卡(50级)")
	s_addItem(uid,27108,0,50,0,"1-1","电玩巴士新手卡(50级)")
	s_addItem(uid,26102,0,50,0,"1-1","电玩巴士新手卡(50级)")
	s_addItem(uid,29003,0,1,0,"1-1","电玩巴士新手卡(50级)")
	return VALUE_OK
end

--电玩巴士新手卡(60级)
function OnUseItemEvent_32710(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32710") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32711,0,1,0,"1-1","电玩巴士新手卡(60级)")
	s_addItem(uid,6,0,30,0,"1-1","电玩巴士新手卡(60级)")
	s_addItem(uid,26149,0,100,0,"1-1","电玩巴士新手卡(60级)")
	s_addItem(uid,35208,0,1,0,"1-1","电玩巴士新手卡(60级)")
	s_addItem(uid,24043,0,1,0,"1-1","电玩巴士新手卡(60级)")
	return VALUE_OK
end

--电玩巴士新手卡(70级)
function OnUseItemEvent_32711(uid,thisid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32711") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if pro == Profession_Soldier then pro = 1
	elseif pro == Profession_Spy then pro = 2
	elseif pro == Profession_Gunman then pro = 3
	elseif pro == Profession_Blast then pro = 4
	elseif pro == Profession_Freeman then pro = 5
	elseif pro == Profession_Doctor then pro = 6
	end
	s_addItem(uid,pro*1000+803,0,1,1,"1-1,6-2,7-3","电玩巴士新手卡(70级)")
	s_addItem(uid,6,0,50,0,"1-1","电玩巴士新手卡(70级)")
	s_addItem(uid,26102,0,20,0,"1-1","电玩巴士新手卡(70级)")
	s_addItem(uid,32359,0,1,0,"1-1","电玩巴士新手卡(70级)")
	s_addItem(uid,52011,0,1,0,"1-1,3-259200,8-259200,","电玩巴士新手卡(70级)")
	return VALUE_OK
end
