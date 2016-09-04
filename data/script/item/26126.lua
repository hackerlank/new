--萃取液
function OnUseItemEvent_26126(userid,thisid,equipid)
	if checkEquip(userid,equipid) ~= VALUE_OK then
		s_sysInfo(userid,"目标不是装备，无法使用")
		return VALUE_FAIL
	end
	local needbind = 0
	if s_getItemValue(userid,equipid,Item_Attribute_Bind) > 0 then
		needbind = 1
	end
	local level = s_getItemValue(userid,equipid,Item_Attribute_Level)
	if level < 8 then
		s_sysInfo(userid,"8星以上装备才可以萃取")
		return VALUE_FAIL
	end
	local target = 0
	local needlevel = s_getItemValue(userid,equipid,Item_Base_NeedLevel)
	local m = math.floor(needlevel / 10)
	local minlevel = m * 10 + 1
	local maxlevel = m * 10 + 20
	--计算合金的等级需求上下线
	if needlevel>=1 and needlevel<=60 then
		target = 27120
		minlevel=1
		maxlevel=70
	elseif needlevel>60 then
		target = 27121
	end
	if target == 0 then
		s_sysInfo(userid,"没有星星合金可以生成")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_26126") ~= VALUE_OK then
		s_sysInfo(userid,"萃取液无法删除")
		return VALUE_FAIL
	end
	local attrstr = string.format("1-%d,2-%d,213-%d,214-%d",needbind,level-1,minlevel,maxlevel)
	if needlevel <= 70 then
		attrstr = string.format("1-%d,2-%d,213-%d,214-%d",needbind,level,minlevel,maxlevel)
	elseif needlevel >= 71 then
		local rand = math.random(1,100)
		if rand <= 49 then
			attrstr = string.format("1-%d,2-%d,213-%d,214-%d",needbind,level,minlevel,maxlevel)
		end
	end
	s_addItem(userid,target,0,1,0,attrstr,"萃取")
	s_setItemValue(userid,equipid,Item_Attribute_Level,0)
	s_setItemValue(userid,equipid,Item_Attribute_Level_Max,0)
	s_setItemValue(userid,equipid,Item_Attribute_Level_MaxTime,0)
	s_setItemValue(userid,equipid,Item_Attribute_Level_BadTimes,0)
	s_refreshItem(userid,equipid)
	s_leachStarItem(userid,equipid)
	return VALUE_OK
end
