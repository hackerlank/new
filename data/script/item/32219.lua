--”5星“星星合金
function OnUseItemEvent_32219(userid,thisid)

	local worldlevel = s_getWorldLevel()

	local minlevel = 0
	local maxlevel = 0
	local target = 0
	if worldlevel <2 then
		minlevel = 0
		maxlevel = 60
		target = 27120
	elseif worldlevel == 2 then
		minlevel = 60
		maxlevel = 70
		target = 27121
	elseif worldlevel == 3 then
		minlevel = 60
		maxlevel = 80
		target = 27121
	elseif worldlevel == 4 then
		minlevel = 60
		maxlevel = 90
		target = 27121
	elseif worldlevel >= 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel >= 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel >= 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel >= 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel >= 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel >= 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32219") ~= VALUE_OK then
		s_sysInfo(userid,"删除”5星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-5,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”5星“星星合金")
	return VALUE_OK
end

--”6星“星星合金
function OnUseItemEvent_32220(userid,thisid)

	local worldlevel = s_getWorldLevel()

	local minlevel = 0
	local maxlevel = 0
	local target = 0
	if worldlevel <2 then
		minlevel = 0
		maxlevel = 60
		target = 27120
	elseif worldlevel == 2 then
		minlevel = 60
		maxlevel = 70
		target = 27121
	elseif worldlevel == 3 then
		minlevel = 60
		maxlevel = 80
		target = 27121
	elseif worldlevel == 4 then
		minlevel = 60
		maxlevel = 90
		target = 27121
	elseif worldlevel >= 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel >= 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel >= 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel >= 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel >= 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel >= 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32220") ~= VALUE_OK then
		s_sysInfo(userid,"删除”6星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-6,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”6星“星星合金")
	return VALUE_OK
end

--”7星“星星合金
function OnUseItemEvent_32221(userid,thisid)

	local worldlevel = s_getWorldLevel()

	local minlevel = 0
	local maxlevel = 0
	local target = 0
	if worldlevel <2 then
		minlevel = 0
		maxlevel = 60
		target = 27120
	elseif worldlevel == 2 then
		minlevel = 60
		maxlevel = 70
		target = 27121
	elseif worldlevel == 3 then
		minlevel = 60
		maxlevel = 80
		target = 27121
	elseif worldlevel == 4 then
		minlevel = 60
		maxlevel = 90
		target = 27121
	elseif worldlevel >= 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel >= 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel >= 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel >= 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel >= 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel >= 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32221") ~= VALUE_OK then
		s_sysInfo(userid,"删除”7星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-7,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”7星“星星合金")
	return VALUE_OK
end

--”8星“星星合金
function OnUseItemEvent_32222(userid,thisid)

	local worldlevel = s_getWorldLevel()

	local minlevel = 0
	local maxlevel = 0
	local target = 0
	if worldlevel <2 then
		minlevel = 0
		maxlevel = 60
		target = 27120
	elseif worldlevel == 2 then
		minlevel = 60
		maxlevel = 70
		target = 27121
	elseif worldlevel == 3 then
		minlevel = 60
		maxlevel = 80
		target = 27121
	elseif worldlevel == 4 then
		minlevel = 60
		maxlevel = 90
		target = 27121
	elseif worldlevel >= 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel >= 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel >= 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel >= 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel >= 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel >= 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32222") ~= VALUE_OK then
		s_sysInfo(userid,"删除”8星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-8,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”8星“星星合金")
	return VALUE_OK
end

--”9星“星星合金
function OnUseItemEvent_32223(userid,thisid)

	local worldlevel = s_getWorldLevel()

	local minlevel = 0
	local maxlevel = 0
	local target = 0
	if worldlevel <2 then
		minlevel = 0
		maxlevel = 60
		target = 27120
	elseif worldlevel == 2 then
		minlevel = 60
		maxlevel = 70
		target = 27121
	elseif worldlevel == 3 then
		minlevel = 60
		maxlevel = 80
		target = 27121
	elseif worldlevel == 4 then
		minlevel = 60
		maxlevel = 90
		target = 27121
	elseif worldlevel >= 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel >= 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel >= 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel >= 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel >= 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel >= 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32223") ~= VALUE_OK then
		s_sysInfo(userid,"删除”9星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-9,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”9星“星星合金")
	return VALUE_OK
end

--”10星“星星合金
function OnUseItemEvent_32224(userid,thisid)

	local worldlevel = s_getWorldLevel()

	local minlevel = 0
	local maxlevel = 0
	local target = 0
	if worldlevel <2 then
		minlevel = 0
		maxlevel = 60
		target = 27120
	elseif worldlevel == 2 then
		minlevel = 60
		maxlevel = 70
		target = 27121
	elseif worldlevel == 3 then
		minlevel = 60
		maxlevel = 80
		target = 27121
	elseif worldlevel == 4 then
		minlevel = 60
		maxlevel = 90
		target = 27121
	elseif worldlevel >= 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel >= 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel >= 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel >= 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel >= 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel >= 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32224") ~= VALUE_OK then
		s_sysInfo(userid,"删除”10星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-10,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”10星“星星合金")
	return VALUE_OK
end
