--口粮检查冷却
function checkFeedCold1(uid,demonid)
	local feedtime = s_getItemValue(uid,demonid,Item_Attribute_Demon_FeedTime1)
	local secs = s_getCurTime(TIME_ALLSECONDS)
	if secs > feedtime then
		return VALUE_OK
	end
	return VALUE_FAIL
end
--口粮使用冷却
function useFeedCold1(uid,demonid,coldtime)
	local secs = s_getCurTime(TIME_ALLSECONDS)
	s_setItemValue(uid,demonid,Item_Attribute_Demon_FeedTime1,secs+coldtime)
end
--宠物道具，普通口粮
function OnUseItemEvent_43001(uid,thisid,targetid)
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
	if checkFeedCold1(uid,targetid) ~= VALUE_OK then
		local secs = s_getItemValue(uid,targetid,Item_Attribute_Demon_FeedTime1) - s_getCurTime(TIME_ALLSECONDS)
		s_sysInfo(uid,"此宠物还在消化中,剩余"..math.ceil(secs/60).."分钟")
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
	local coldtime = s_getItemValue(uid,thisid,Item_Base_Cold)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_43001") ~= VALUE_OK then
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
	useFeedCold1(uid,targetid,coldtime)
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
	else
		s_refreshItem(uid,targetid)
	end
	return VALUE_OK
end
