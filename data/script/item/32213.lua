--”8星“星星合金
function OnUseItemEvent_32213(userid,thisid)

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
	elseif worldlevel == 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel == 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel == 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel == 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel == 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel == 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32213") ~= VALUE_OK then
		s_sysInfo(userid,"删除”8星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-8,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”8星“星星合金")
	return VALUE_OK
end

--”9星“星星合金
function OnUseItemEvent_32214(userid,thisid)

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
	elseif worldlevel == 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel == 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel == 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel == 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel == 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel == 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32214") ~= VALUE_OK then
		s_sysInfo(userid,"删除”9星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-9,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”9星“星星合金")
	return VALUE_OK
end

--”10星“星星合金
function OnUseItemEvent_32215(userid,thisid)

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
	elseif worldlevel == 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel == 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel == 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel == 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel == 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel == 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32215") ~= VALUE_OK then
		s_sysInfo(userid,"删除”10星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-10,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”10星“星星合金")
	return VALUE_OK
end

--”11星“星星合金
function OnUseItemEvent_32216(userid,thisid)

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
	elseif worldlevel == 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel == 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel == 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel == 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel == 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel == 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32216") ~= VALUE_OK then
		s_sysInfo(userid,"删除”11星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-11,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”11星“星星合金")
	return VALUE_OK
end

--”12星“星星合金
function OnUseItemEvent_32217(userid,thisid)

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
	elseif worldlevel == 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel == 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel == 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel == 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel == 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel == 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32217") ~= VALUE_OK then
		s_sysInfo(userid,"删除”12星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-12,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”12星“星星合金")
	return VALUE_OK
end

--”13星“星星合金
function OnUseItemEvent_32218(userid,thisid)

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
	elseif worldlevel == 5 then
		minlevel = 60
		maxlevel = 100
		target = 27121
	elseif worldlevel == 6 then
		minlevel = 60
		maxlevel = 110
		target = 27121
	elseif worldlevel == 7 then
		minlevel = 60
		maxlevel = 120
		target = 27121
	elseif worldlevel == 8 then
		minlevel = 60
		maxlevel = 130
		target = 27121
	elseif worldlevel == 9 then
		minlevel = 60
		maxlevel = 140
		target = 27121
	elseif worldlevel == 10 then
		minlevel = 60
		maxlevel = 150
		target = 27121
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_32218") ~= VALUE_OK then
		s_sysInfo(userid,"删除”13星“星星合金失败")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-1,2-13,213-%d,214-%d",minlevel,maxlevel)
	s_addItem(userid,target,0,1,0,attrstr,"”13星“星星合金")
	return VALUE_OK
end
