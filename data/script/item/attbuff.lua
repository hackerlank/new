--生活技能攻击buff
ATTACK_BUFF_DATA =
{
	{23001,31001},
	{23002,31002},
	{23003,31003},
	{23004,31004},
	{23005,31005},
	{23006,31006},
	{23007,31007},
	{23008,31008},
	{23009,31009},
	{23010,31010},
}

--同IDBUFF时间叠加,同类不能使用
function OnUseBuffItem(uid,itemid,info)
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
				if s_deleteItemByThisID(uid,itemid,1,"OnUseBuffItem") == VALUE_OK then
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
	if s_deleteItemByThisID(uid,itemid,1,"OnUseBuffItem") == VALUE_OK then
		s_addbuff(SCENE_ENTRY_PLAYER,uid,buffid,1,30*60)
		return VALUE_OK
	end
	return VALUE_FAIL
end

function OnUseItemEvent_23001(uid,thisid,targetid)
	return OnUseBuffItem(uid,thisid,ATTACK_BUFF_DATA)
end

function OnUseItemEvent_23002(uid,thisid,targetid)
	return OnUseBuffItem(uid,thisid,ATTACK_BUFF_DATA)
end

function OnUseItemEvent_23003(uid,thisid,targetid)
	return OnUseBuffItem(uid,thisid,ATTACK_BUFF_DATA)
end

function OnUseItemEvent_23004(uid,thisid,targetid)
	return OnUseBuffItem(uid,thisid,ATTACK_BUFF_DATA)
end

function OnUseItemEvent_23005(uid,thisid,targetid)
	return OnUseBuffItem(uid,thisid,ATTACK_BUFF_DATA)
end

function OnUseItemEvent_23006(uid,thisid,targetid)
	return OnUseBuffItem(uid,thisid,ATTACK_BUFF_DATA)
end

function OnUseItemEvent_23007(uid,thisid,targetid)
	return OnUseBuffItem(uid,thisid,ATTACK_BUFF_DATA)
end

function OnUseItemEvent_23008(uid,thisid,targetid)
	return OnUseBuffItem(uid,thisid,ATTACK_BUFF_DATA)
end

function OnUseItemEvent_23009(uid,thisid,targetid)
	return OnUseBuffItem(uid,thisid,ATTACK_BUFF_DATA)
end

function OnUseItemEvent_23010(uid,thisid,targetid)
	return OnUseBuffItem(uid,thisid,ATTACK_BUFF_DATA)
end
