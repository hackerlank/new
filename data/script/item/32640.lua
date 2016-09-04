--360新手卡(1级)
function OnUseItemEvent_32640(uid,thisid)
	local worldlevel = s_getWorldLevel()
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32640") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if worldlevel < 2 then
	--s_addItem(uid,23,0,1,0,"1-1,192-61,193-10","360新手卡(1级)")
	--s_addItem(uid,26,0,1,0,"1-1,192-31,193-1","360新手卡(1级)")
	end
	s_addItem(uid,32641,0,1,0,"1-1","360新手卡(1级)")
	s_addItem(uid,6,0,1,0,"1-1","360新手卡(1级)")
	return VALUE_OK
end

--360新手卡(10级)
function OnUseItemEvent_32641(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32641") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32642,0,1,0,"1-1","360新手卡(10级)")
	s_addItem(uid,26102,0,30,0,"1-1","360新手卡(10级)")
	s_addItem(uid,6,0,2,0,"1-1","360新手卡(10级)")
	return VALUE_OK
end

--360新手卡(20级)
function OnUseItemEvent_32642(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32642") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32643,0,1,0,"1-1","360新手卡(20级)")
	s_addItem(uid,6,0,4,0,"1-1","360新手卡(20级)")
	s_addItem(uid,29528,0,5,0,"1-1","360新手卡(1级)")
	return VALUE_OK
end

--360新手卡(30级)
function OnUseItemEvent_32643(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32643") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32644,0,1,0,"1-1","360新手卡(30级)")
	s_addItem(uid,6,0,10,0,"1-1","360新手卡(30级)")
	s_addItem(uid,26102,0,40,0,"1-1","360新手卡(30级)")
	s_addItem(uid,29550,0,3,0,"1-1","360新手卡(30级)")
	return VALUE_OK
end

--360新手卡(40级)
function OnUseItemEvent_32644(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32644") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20184,0,1,1,"1-1,7-0,3-259200","360新手卡(40级)")
	else
		s_addItem(uid,20179,0,1,1,"1-1,7-0,3-259200","360新手卡(40级)")
	end
	s_addItem(uid,32645,0,1,0,"1-1","360新手卡(40级)")
	s_addItem(uid,6,0,15,0,"1-1","360新手卡(40级)")
	s_addItem(uid,27108,0,40,0,"1-1","360新手卡(40级)")
	return VALUE_OK
end

--360新手卡(50级)
function OnUseItemEvent_32645(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32645") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32646,0,1,0,"1-1","360新手卡(50级)")
	s_addItem(uid,6,0,20,0,"1-1","360新手卡(50级)")
	s_addItem(uid,27108,0,50,0,"1-1","360新手卡(50级)")
	s_addItem(uid,26102,0,50,0,"1-1","360新手卡(50级)")
	s_addItem(uid,29003,0,1,0,"1-1","360新手卡(50级)")
	return VALUE_OK
end

--360新手卡(60级)
function OnUseItemEvent_32646(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32646") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32647,0,1,0,"1-1","360新手卡(60级)")
	s_addItem(uid,6,0,30,0,"1-1","360新手卡(60级)")
	s_addItem(uid,10,0,20,0,"1-1","360新手卡(60级)")
	s_addItem(uid,35208,0,1,0,"1-1","360新手卡(60级)")
	s_addItem(uid,24037,0,1,0,"1-1","360新手卡(60级)")
	return VALUE_OK
end

--360新手卡(70级)
function OnUseItemEvent_32647(uid,thisid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32647") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if pro == Profession_Soldier then pro = 1
	elseif pro == Profession_Spy then pro = 2
	elseif pro == Profession_Gunman then pro = 3
	elseif pro == Profession_Blast then pro = 4
	elseif pro == Profession_Freeman then pro = 5
	elseif pro == Profession_Doctor then pro = 6
	end
	s_addItem(uid,pro*1000+803,0,1,1,"1-1,6-2,7-3","360新手卡(70级)")
	s_addItem(uid,6,0,50,0,"1-1","360新手卡(70级)")
	s_addItem(uid,26102,0,20,0,"1-1","360新手卡(70级)")
	s_addItem(uid,32359,0,1,0,"1-1","360新手卡(70级)")
	s_addItem(uid,52011,0,1,0,"1-1,3-259200,8-259200,","360新手卡(70级)")
	return VALUE_OK
end
