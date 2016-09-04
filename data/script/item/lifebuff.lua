--生活技能生命buff
LIFE_BUFF_DATA =
{
	{23021,31021},
	{23022,31022},
	{23023,31023},
	{23024,31024},
	{23025,31025},
	{23026,31026},
	{23027,31027},
	{23028,31028},
	{23029,31029},
	{23030,31070},
}

--同IDBUFF时间叠加,同类不能使用
function OnUseLifeBuffItem(uid,itemid,info,addhp)
	local minlevel = s_getItemValue(uid,itemid,Item_Base_NeedLevel)
	local maxlevel = s_getItemValue(uid,itemid,Item_Base_MaxLevel)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < minlevel or level >= maxlevel then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	local baseid = s_getItemValue(uid,itemid,Item_Base_ID)
	local buffid = 0
	for i = 1, table.getn(info) do
		if baseid == info[i][1] then
			buffid = info[i][2]
		end
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,info[i][2]) ~= 0 then
			if baseid == info[i][1] then
				if s_deleteItemByThisID(uid,itemid,1,"OnUseLifeBuffItem") == VALUE_OK then
					local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,info[i][2])
					s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,info[i][2],time + 30*60)
					return VALUE_OK
				else
					return VALUE_FAIL
				end
			else
				s_sysInfo(uid,"已有同类型状态，无法使用")
				return VALUE_FAIL
			end
		end
	end
	--没有buff直接使用
	if s_deleteItemByThisID(uid,itemid,1,"OnUseLifeBuffItem") == VALUE_OK then
		s_addbuff(SCENE_ENTRY_PLAYER,uid,buffid,1,30*60)
		s_setup(SCENE_ENTRY_PLAYER,uid,1)
		s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP,addhp)
		return VALUE_OK
	end
	return VALUE_FAIL
end

function OnUseItemEvent_23021(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXHP)
	local add  = hp * 0.03 + (200/maxhp)*hp
	return OnUseLifeBuffItem(uid,thisid,LIFE_BUFF_DATA,add)
end

function OnUseItemEvent_23022(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXHP)
	local add  = hp * 0.04 + (250/maxhp)*hp
	return OnUseLifeBuffItem(uid,thisid,LIFE_BUFF_DATA,add)
end

function OnUseItemEvent_23023(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXHP)
	local add  = hp * 0.05 + (300/maxhp)*hp
	return OnUseLifeBuffItem(uid,thisid,LIFE_BUFF_DATA,add)
end

function OnUseItemEvent_23024(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXHP)
	local add  = hp * 0.06 + (350/maxhp)*hp
	return OnUseLifeBuffItem(uid,thisid,LIFE_BUFF_DATA,add)
end

function OnUseItemEvent_23025(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXHP)
	local add  = hp * 0.07 + (400/maxhp)*hp
	return OnUseLifeBuffItem(uid,thisid,LIFE_BUFF_DATA,add)
end

function OnUseItemEvent_23026(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXHP)
	local add  = hp * 0.08 + (450/maxhp)*hp
	return OnUseLifeBuffItem(uid,thisid,LIFE_BUFF_DATA,add)
end

function OnUseItemEvent_23027(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXHP)
	local add  = hp * 0.09 + (500/maxhp)*hp
	return OnUseLifeBuffItem(uid,thisid,LIFE_BUFF_DATA,add)
end

function OnUseItemEvent_23028(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXHP)
	local add  = hp * 0.10 + (550/maxhp)*hp
	return OnUseLifeBuffItem(uid,thisid,LIFE_BUFF_DATA,add)
end

function OnUseItemEvent_23029(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXHP)
	local add  = hp * 0.10 + (600/maxhp)*hp
	return OnUseLifeBuffItem(uid,thisid,LIFE_BUFF_DATA,add)
end

function OnUseItemEvent_23030(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXHP)
	local add  = hp * 0.10 + (650/maxhp)*hp
	return OnUseLifeBuffItem(uid,thisid,LIFE_BUFF_DATA,add)
end
