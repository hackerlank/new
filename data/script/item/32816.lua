--电玩巴士至尊逆袭礼包(1级)
function OnUseItemEvent_32816(uid,thisid)
	local worldlevel = s_getWorldLevel()
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32816") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32817,0,1,0,"1-1","电玩巴士至尊逆袭礼包(1级)")
	s_addItem(uid,6,0,1,0,"1-1","电玩巴士至尊逆袭礼包(1级)")
	s_addItem(uid,24105,0,1,0,"1-1","电玩巴士至尊逆袭礼包(1级)")
	return VALUE_OK
end

--电玩巴士至尊逆袭礼包(10级)
function OnUseItemEvent_32817(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32817") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32818,0,1,0,"1-1","电玩巴士至尊逆袭礼包(10级)")
	s_addItem(uid,26102,0,30,0,"1-1","电玩巴士至尊逆袭礼包(10级)")
	s_addItem(uid,6,0,2,0,"1-1","电玩巴士至尊逆袭礼包(10级)")
	return VALUE_OK
end

--电玩巴士至尊逆袭礼包(20级)
function OnUseItemEvent_32818(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32818") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32819,0,1,0,"1-1","电玩巴士至尊逆袭礼包(20级)")
	s_addItem(uid,6,0,4,0,"1-1","电玩巴士至尊逆袭礼包(20级)")
	s_addItem(uid,29554,0,3,0,"1-1","电玩巴士至尊逆袭礼包(20级)")
	s_addItem(uid,24106,0,1,0,"1-1","电玩巴士至尊逆袭礼包(20级)")
	return VALUE_OK
end

--电玩巴士至尊逆袭礼包(30级)
function OnUseItemEvent_32819(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32819") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32820,0,1,0,"1-1","电玩巴士至尊逆袭礼包(30级)")
	s_addItem(uid,6,0,10,0,"1-1","电玩巴士至尊逆袭礼包(30级)")
	s_addItem(uid,26102,0,40,0,"1-1","电玩巴士至尊逆袭礼包(30级)")
	s_addItem(uid,29550,0,3,0,"1-1","电玩巴士至尊逆袭礼包(30级)")
	return VALUE_OK
end

--电玩巴士至尊逆袭礼包(40级)
function OnUseItemEvent_32820(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32820") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20184,0,1,1,"1-1,7-0,3-259200","电玩巴士至尊逆袭礼包(40级)")
	else
		s_addItem(uid,20179,0,1,1,"1-1,7-0,3-259200","电玩巴士至尊逆袭礼包(40级)")
	end
	s_addItem(uid,32821,0,1,0,"1-1","电玩巴士至尊逆袭礼包(40级)")
	s_addItem(uid,6,0,15,0,"1-1","电玩巴士至尊逆袭礼包(40级)")
	s_addItem(uid,27108,0,40,0,"1-1","电玩巴士至尊逆袭礼包(40级)")
	return VALUE_OK
end

--电玩巴士至尊逆袭礼包(50级)
function OnUseItemEvent_32821(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32821") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32822,0,1,0,"1-1","电玩巴士至尊逆袭礼包(50级)")
	s_addItem(uid,6,0,20,0,"1-1","电玩巴士至尊逆袭礼包(50级)")
	s_addItem(uid,27108,0,50,0,"1-1","电玩巴士至尊逆袭礼包(50级)")
	s_addItem(uid,26102,0,50,0,"1-1","电玩巴士至尊逆袭礼包(50级)")
	s_addItem(uid,29003,0,1,0,"1-1","电玩巴士至尊逆袭礼包(50级)")
	s_addItem(uid,26142,0,1,0,"1-1","电玩巴士至尊逆袭礼包(50级)")
	return VALUE_OK
end

--电玩巴士至尊逆袭礼包(60级)
function OnUseItemEvent_32822(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32822") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32823,0,1,0,"1-1","电玩巴士至尊逆袭礼包(60级)")
	s_addItem(uid,6,0,30,0,"1-1","电玩巴士至尊逆袭礼包(60级)")
	s_addItem(uid,10,0,20,0,"1-1","电玩巴士至尊逆袭礼包(60级)")
	s_addItem(uid,35208,0,1,0,"1-1","电玩巴士至尊逆袭礼包(60级)")
	s_addItem(uid,24107,0,1,0,"1-1","电玩巴士至尊逆袭礼包(60级)")
	s_addItem(uid,29301,0,5,0,"1-1","电玩巴士至尊逆袭礼包(60级)")
	return VALUE_OK
end

--电玩巴士至尊逆袭礼包(70级)
function OnUseItemEvent_32823(uid,thisid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32823") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if pro == Profession_Soldier then pro = 1
	elseif pro == Profession_Spy then pro = 2
	elseif pro == Profession_Gunman then pro = 3
	elseif pro == Profession_Blast then pro = 4
	elseif pro == Profession_Freeman then pro = 5
	elseif pro == Profession_Doctor then pro = 6
	end
	s_addItem(uid,pro*1000+803,0,1,1,"1-1,6-2,7-3","电玩巴士至尊逆袭礼包(70级)")
	s_addItem(uid,6,0,50,0,"1-1","电玩巴士至尊逆袭礼包(70级)")
	s_addItem(uid,26102,0,20,0,"1-1","电玩巴士至尊逆袭礼包(70级)")
	s_addItem(uid,32359,0,1,0,"1-1","电玩巴士至尊逆袭礼包(70级)")
	s_addItem(uid,52011,0,1,0,"1-1,3-259200,8-259200,","电玩巴士至尊逆袭礼包(70级)")
	s_addItem(uid,26143,0,1,0,"1-1","电玩巴士至尊逆袭礼包(70级)")
	return VALUE_OK
end
