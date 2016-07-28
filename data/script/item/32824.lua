--顺网至尊逆袭礼包(1级)
function OnUseItemEvent_32824(uid,thisid)
	local worldlevel = s_getWorldLevel()
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32824") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32825,0,1,0,"1-1","顺网至尊逆袭礼包(1级)")
	s_addItem(uid,6,0,1,0,"1-1","顺网至尊逆袭礼包(1级)")
	s_addItem(uid,24108,0,1,0,"1-1","顺网至尊逆袭礼包(1级)")
	return VALUE_OK
end

--顺网至尊逆袭礼包(10级)
function OnUseItemEvent_32825(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32825") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32826,0,1,0,"1-1","顺网至尊逆袭礼包(10级)")
	s_addItem(uid,26102,0,30,0,"1-1","顺网至尊逆袭礼包(10级)")
	s_addItem(uid,6,0,2,0,"1-1","顺网至尊逆袭礼包(10级)")
	return VALUE_OK
end

--顺网至尊逆袭礼包(20级)
function OnUseItemEvent_32826(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32826") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32827,0,1,0,"1-1","顺网至尊逆袭礼包(20级)")
	s_addItem(uid,6,0,4,0,"1-1","顺网至尊逆袭礼包(20级)")
	s_addItem(uid,29525,0,3,0,"1-1","顺网至尊逆袭礼包(20级)")
	s_addItem(uid,24109,0,1,0,"1-1","顺网至尊逆袭礼包(20级)")
	return VALUE_OK
end

--顺网至尊逆袭礼包(30级)
function OnUseItemEvent_32827(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32827") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32828,0,1,0,"1-1","顺网至尊逆袭礼包(30级)")
	s_addItem(uid,6,0,10,0,"1-1","顺网至尊逆袭礼包(30级)")
	s_addItem(uid,26102,0,40,0,"1-1","顺网至尊逆袭礼包(30级)")
	s_addItem(uid,29550,0,3,0,"1-1","顺网至尊逆袭礼包(30级)")
	return VALUE_OK
end

--顺网至尊逆袭礼包(40级)
function OnUseItemEvent_32828(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32828") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20184,0,1,1,"1-1,7-0,3-259200","顺网至尊逆袭礼包(40级)")
	else
		s_addItem(uid,20179,0,1,1,"1-1,7-0,3-259200","顺网至尊逆袭礼包(40级)")
	end
	s_addItem(uid,32829,0,1,0,"1-1","顺网至尊逆袭礼包(40级)")
	s_addItem(uid,6,0,15,0,"1-1","顺网至尊逆袭礼包(40级)")
	s_addItem(uid,27108,0,40,0,"1-1","顺网至尊逆袭礼包(40级)")
	return VALUE_OK
end

--顺网至尊逆袭礼包(50级)
function OnUseItemEvent_32829(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32829") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32830,0,1,0,"1-1","顺网至尊逆袭礼包(50级)")
	s_addItem(uid,6,0,20,0,"1-1","顺网至尊逆袭礼包(50级)")
	s_addItem(uid,27108,0,50,0,"1-1","顺网至尊逆袭礼包(50级)")
	s_addItem(uid,26102,0,50,0,"1-1","顺网至尊逆袭礼包(50级)")
	s_addItem(uid,29003,0,1,0,"1-1","顺网至尊逆袭礼包(50级)")
	s_addItem(uid,26142,0,1,0,"1-1","顺网至尊逆袭礼包(50级)")
	return VALUE_OK
end

--顺网至尊逆袭礼包(60级)
function OnUseItemEvent_32830(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32830") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32831,0,1,0,"1-1","顺网至尊逆袭礼包(60级)")
	s_addItem(uid,6,0,30,0,"1-1","顺网至尊逆袭礼包(60级)")
	s_addItem(uid,10,0,20,0,"1-1","顺网至尊逆袭礼包(60级)")
	s_addItem(uid,35208,0,1,0,"1-1","顺网至尊逆袭礼包(60级)")
	s_addItem(uid,24110,0,1,0,"1-1","顺网至尊逆袭礼包(60级)")
	s_addItem(uid,29301,0,5,0,"1-1","顺网至尊逆袭礼包(60级)")
	return VALUE_OK
end

--顺网至尊逆袭礼包(70级)
function OnUseItemEvent_32831(uid,thisid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32831") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if pro == Profession_Soldier then pro = 1
	elseif pro == Profession_Spy then pro = 2
	elseif pro == Profession_Gunman then pro = 3
	elseif pro == Profession_Blast then pro = 4
	elseif pro == Profession_Freeman then pro = 5
	elseif pro == Profession_Doctor then pro = 6
	end
	s_addItem(uid,pro*1000+803,0,1,1,"1-1,6-2,7-3","顺网至尊逆袭礼包(70级)")
	s_addItem(uid,6,0,50,0,"1-1","顺网至尊逆袭礼包(70级)")
	s_addItem(uid,26102,0,20,0,"1-1","顺网至尊逆袭礼包(70级)")
	s_addItem(uid,32359,0,1,0,"1-1","顺网至尊逆袭礼包(70级)")
	s_addItem(uid,52011,0,1,0,"1-1,3-259200,8-259200,","顺网至尊逆袭礼包(70级)")
	s_addItem(uid,26143,0,1,0,"1-1","顺网至尊逆袭礼包(70级)")
	return VALUE_OK
end
