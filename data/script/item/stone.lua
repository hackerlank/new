--斗气石
function OnInitStoneItemEvent_Random()
	local rand = math.random(1,100)
	if rand <= 33 then
		if math.random(1,100) <= 50 then
			return 0.5,0.3,0
		else
			return 0.3,0.5,0
		end
	elseif rand <= 66 then
		if math.random(1,100) <= 50 then
			return 0,0.5,0.3
		else
			return 0,0.3,0.5
		end
	else
		if math.random(1,100) <= 50 then
			return 0.5,0,0.3
		else
			return 0.3,0,0.5
		end
	end
end
function OnInitStoneItemEvent(uid,baseid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 60 then level = 60 end --没到60级给60级的
	local POINT = {10,15,20,25,30,35,40,45,50,55}
	local num = math.floor(level/10)-5
	if baseid >= 27501 and baseid <= 27510 then
		local r1,r2,r3 = OnInitStoneItemEvent_Random()
		s_setItemValue(uid,thisid,Item_Attribute_ShengDun,r1*POINT[num])
		s_setItemValue(uid,thisid,Item_Attribute_ShenGuang,r2*POINT[num])
		s_setItemValue(uid,thisid,Item_Attribute_BuMie,r3*POINT[num])
		s_setItemValue(uid,thisid,Item_Attribute_WuShuang,POINT[num])
	elseif baseid >= 27511 and baseid <= 27520 then
		local r1,r2,r3 = OnInitStoneItemEvent_Random()
		s_setItemValue(uid,thisid,Item_Attribute_ShengDun,r1*POINT[num])
		s_setItemValue(uid,thisid,Item_Attribute_ShenGuang,r2*POINT[num])
		s_setItemValue(uid,thisid,Item_Attribute_BuMie,r3*POINT[num])
		s_setItemValue(uid,thisid,Item_Attribute_MoShen,POINT[num])
	elseif baseid >= 27521 and baseid <= 27530 then
		local profession =  s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
		if profession == Profession_Soldier or profession == Profession_Gunman then
			local r1,r2,r3 = OnInitStoneItemEvent_Random()
			s_setItemValue(uid,thisid,Item_Attribute_WuShuang,r1*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_ShenGuang,r2*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_BuMie,r3*POINT[num])
		else
			local r1,r2,r3 = OnInitStoneItemEvent_Random()
			s_setItemValue(uid,thisid,Item_Attribute_MoShen,r1*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_ShenGuang,r2*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_BuMie,r3*POINT[num])
		end
		s_setItemValue(uid,thisid,Item_Attribute_ShengDun,POINT[num])
	elseif baseid >= 27531 and baseid <= 27540 then
		local profession =  s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
		if profession == Profession_Soldier or profession == Profession_Gunman then
			local r1,r2,r3 = OnInitStoneItemEvent_Random()
			s_setItemValue(uid,thisid,Item_Attribute_WuShuang,r1*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_ShengDun,r2*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_BuMie,r3*POINT[num])
		else
			local r1,r2,r3 = OnInitStoneItemEvent_Random()
			s_setItemValue(uid,thisid,Item_Attribute_MoShen,r1*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_ShengDun,r2*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_BuMie,r3*POINT[num])
		end
		s_setItemValue(uid,thisid,Item_Attribute_ShenGuang,POINT[num])
	elseif baseid >= 27541 and baseid <= 27550 then
		local profession =  s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
		if profession == Profession_Soldier or profession == Profession_Gunman then
			local r1,r2,r3 = OnInitStoneItemEvent_Random()
			s_setItemValue(uid,thisid,Item_Attribute_WuShuang,r1*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_ShengDun,r2*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_ShenGuang,r3*POINT[num])
		else
			local r1,r2,r3 = OnInitStoneItemEvent_Random()
			s_setItemValue(uid,thisid,Item_Attribute_MoShen,r1*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_ShengDun,r2*POINT[num])
			s_setItemValue(uid,thisid,Item_Attribute_ShenGuang,r3*POINT[num])
		end
		s_setItemValue(uid,thisid,Item_Attribute_BuMie,POINT[num])
	end
	s_refreshItem(uid,thisid)
	return VALUE_OK
end
function OnUseItemEvent_Stone(uid,thisid)
	local v1 = s_getItemValue(uid,thisid,Item_Attribute_WuShuang)
	local v2 = s_getItemValue(uid,thisid,Item_Attribute_MoShen)
	local v3 = s_getItemValue(uid,thisid,Item_Attribute_ShengDun)
	local v4 = s_getItemValue(uid,thisid,Item_Attribute_ShenGuang)
	local v5 = s_getItemValue(uid,thisid,Item_Attribute_BuMie)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_Stone") == VALUE_FAIL then
		return VALUE_FAIL
	end
	if v1 ~= 0 then s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_WUSHUANG,v1) end
	if v2 ~= 0 then s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_MOSHEN,v2) end
	if v3 ~= 0 then s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_SHENGDUN,v3) end
	if v4 ~= 0 then s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_SHENGUANG,v4) end
	if v5 ~= 0 then s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_BUMIE,v5) end
	return VALUE_OK
end
for i=27501,27599 do
	RegisterGetItemEvent(i,"OnInitStoneItemEvent($1,$2,$3)")
end
--无双
function OnUseItemEvent_27501(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27502(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27503(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27504(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27505(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27506(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27507(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27508(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27509(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
--魔神
function OnUseItemEvent_27511(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27512(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27513(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27514(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27515(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27516(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27517(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27518(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27519(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
--圣盾
function OnUseItemEvent_27521(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27522(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27523(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27524(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27525(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27526(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27527(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27528(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27529(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
--神光
function OnUseItemEvent_27531(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27532(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27533(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27534(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27535(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27536(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27537(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27538(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27539(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
--不灭
function OnUseItemEvent_27541(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27542(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27543(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27544(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27545(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27546(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27547(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27548(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
function OnUseItemEvent_27549(uid,thisid,targetid) return OnUseItemEvent_Stone(uid,thisid) end
