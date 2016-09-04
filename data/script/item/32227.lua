--星星雕纹
function OnUseItemEvent_32227(uid,thisid,equipid)
	if checkEquip(uid,equipid) ~= VALUE_OK then
		s_sysInfo(uid,"目标不是装备，无法使用")
		return VALUE_FAIL
	end
	local needlevel = s_getItemValue(uid,equipid,Item_Base_NeedLevel)
	local minlevel = s_getItemValue(uid,thisid,Item_Attribute_MinLevel)
	local maxlevel = s_getItemValue(uid,thisid,Item_Attribute_MaxLevel)
	if needlevel < minlevel or needlevel > maxlevel then
		s_sysInfo(uid,"目标装备等级不符合星星雕文要求")
		return VALUE_FAIL
	end
	local thislevel = s_getItemValue(uid,thisid,Item_Attribute_Level)
	local level = s_getItemValue(uid,equipid,Item_Attribute_Level)
	if thislevel - 1 ~= level then
		s_sysInfo(uid,"目标装备星星等级不是".. thislevel - 1 .."星")
		return VALUE_FAIL
	end
	--绑定标志
	local needbind = s_getItemValue(uid,thisid,Item_Attribute_Bind)
	if s_deleteItemByThisID(uid,thisid,1,"删除星星雕文"..thislevel.."") ~= VALUE_OK then
		s_sysInfo(uid,"删除星星雕文失败")
		return VALUE_FAIL
	end
	if needbind > 0 then
		s_setItemValue(uid,equipid,Item_Attribute_Bind,1)
	end
	s_setItemValue(uid,equipid,Item_Attribute_Level,thislevel)
	if s_getItemValue(uid,equipid,Item_Attribute_Level_Max) < thislevel then
		s_setItemValue(uid,equipid,Item_Attribute_Level_Max,0)
		s_setItemValue(uid,equipid,Item_Attribute_Level_MaxTime,0)
		s_setItemValue(uid,equipid,Item_Attribute_Level_BadTimes,0)
	end
	if level >= 10 then
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		s_setItemValue(uid,equipid,Item_Attribute_Maker,name)
	end
	s_refreshItem(uid,equipid)
	return VALUE_OK
end

--4升5星雕纹箱
function OnUseItemEvent_55270(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55270") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32227,0,1,0,"1-1,2-5,213-1,214-150","OnUseItemEvent_55270")
	return VALUE_OK
end

--6升7星雕纹箱
function OnUseItemEvent_32228(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32228") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32227,0,1,0,"1-1,2-7,213-1,214-150","OnUseItemEvent_32228")
	return VALUE_OK
end

--7升8星雕纹箱
function OnUseItemEvent_32229(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32229") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32227,0,1,0,"1-1,2-8,213-1,214-150","OnUseItemEvent_32229")
	return VALUE_OK
end

--8升9星雕纹箱
function OnUseItemEvent_32230(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32230") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32227,0,1,0,"1-1,2-9,213-1,214-150","OnUseItemEvent_32230")
	return VALUE_OK
end

--9升10星雕纹箱
function OnUseItemEvent_32231(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32231") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32227,0,1,0,"1-1,2-10,213-1,214-150","OnUseItemEvent_32231")
	return VALUE_OK
end

--10升11星雕纹箱
function OnUseItemEvent_32232(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32232") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32227,0,1,0,"1-1,2-11,213-61,214-150","OnUseItemEvent_32232")
	return VALUE_OK
end

--11升12星雕纹箱
function OnUseItemEvent_32233(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32233") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32227,0,1,0,"1-1,2-12,213-61,214-150","OnUseItemEvent_322332")
	return VALUE_OK
end

--12升13星雕纹箱
function OnUseItemEvent_32234(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32234") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32227,0,1,0,"1-1,2-13,213-61,214-150","OnUseItemEvent_32234")
	return VALUE_OK
end

--13升14星雕纹箱
function OnUseItemEvent_32235(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32235") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32227,0,1,0,"1-1,2-14,213-71,214-150","OnUseItemEvent_32235")
	return VALUE_OK
end

--14升15星雕纹箱
function OnUseItemEvent_32236(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32236") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32227,0,1,0,"1-1,2-15,213-71,214-150","OnUseItemEvent_32236")
	return VALUE_OK
end


