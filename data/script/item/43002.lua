--宠物道具，普通口粮
function OnUseItemEvent_43002(uid,thisid,targetid)
	local targettype = s_getItemValue(uid,targetid,Item_Base_Type)
	if targettype ~= 41 then
		return  VALUE_FAIL
	end
	local value = s_getItemValue(uid,targetid,Item_Attribute_Demon_Loyalty)
	local maxvalue = s_getItemValue(uid,targetid,Item_Attribute_Demon_MaxLoyalty)
	if value == maxvalue then
		s_sysInfo(uid,"此宠物快乐度已满")
		return VALUE_FAIL
	end
	--等级检查
	local minlevel = s_getItemValue(uid,thisid,Item_Base_NeedLevel)
	local maxlevel = s_getItemValue(uid,thisid,Item_Base_MaxLevel)
	local demonlevel = s_getItemValue(uid,thisid,Item_Attribute_Demon_Level)
	if demonlevel < minlevel then
		s_sysInfo(uid,"该宠物等级太低，无法使用")
		return VALUE_FAIL
	end
	if demonlevel >= maxlevel then
		s_sysInfo(uid,"该宠物等级太高，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_43002") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local baseid = s_getItemValue(uid,targetid,Item_Base_ID)
	local var = s_getVar(uid,100,5)
	if (baseid == 41613 or baseid == 41614) and var == 0 then
		s_setItemValue(uid,targetid,Item_Attribute_Demon_Loyalty,maxvalue)
		s_addVar(uid,100,5,1)
	else
		if value + 10 > maxvalue then
			s_setItemValue(uid,targetid,Item_Attribute_Demon_Loyalty,maxvalue)
		else
			s_setItemValue(uid,targetid,Item_Attribute_Demon_Loyalty,value+10)
		end
	end
	--随机给宠物增加经验
	local level = s_getItemValue(uid,targetid,Item_Attribute_Demon_Level)
	local exp = math.floor((level^1.5)*0.6*math.random(1,10))
	if exp < 1 then
		exp = 1
	end
	local name = s_getItemValue(uid,targetid,Item_Attribute_Demon_Name)
	if name == "" then
		name = s_getItemValue(uid,targetid,Item_Base_Name)
	end
	if s_refreshdemonexp(uid,exp,targetid,0) == VALUE_OK then
		s_sysInfo(uid,string.format("喂养成功，您的%s心情大好，获得%d点经验奖励！",name,exp))
	end
	s_refreshItem(uid,targetid)
	return VALUE_OK
end
