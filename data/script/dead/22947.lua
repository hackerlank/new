--天象祭坛
function OnNpcDeadEventCountryWar22947(mid,thisid)
	--召唤破损的天象祭坛0血，记录天象祭坛
	if mid == 0 or mid == nil then
		s_debug("国战出现异常，找不到天象祭坛的杀手")
		return VALUE_FAIL
	end
	local cid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	if cid == 0 or cid == nil then
		s_debug("国战出现异常，天象祭坛死亡时找不到天象祭坛")
		return VALUE_FAIL
	end
	local npclist = s_getNpcByBaseID(cid, 60595)
	if #npclist == 0 then
		local npcid = s_sysSummon(60595,cid,478,572,1036)
		if npcid == 0 or npcid == nil then
			s_debug("国战出现异常，天象祭坛死亡时，破损的天象祭坛召唤失败")
			return VALUE_FAIL
		end
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_HP,1)
	end
	local curcountry = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_CURRENT_COUNTRY)
	if curcountry == 0 or curcountry == nil then
		s_debug("国战出现异常，天象祭坛死亡时，找不到天象祭坛所在国家")
		return VALUE_FAIL
	end
	s_addCountryVar(curcountry,1,42,1)
	if s_getCountryVar(curcountry,1,51) == 0 then
		s_addTitle(SCENE_ENTRY_PLAYER,mid,30)
		s_addCountryVar(curcountry,1,51,mid)
	end
	s_setCountryWarVal(Country_War_Alter_Life_Num, 0, curcountry)
	s_countryInfo(curcountry,"天象祭坛被破坏，一段时间内无法探测国战区域地形和使用召集类道具，请加紧修复后可恢复正常。")
	local murdercountry = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_HOMELAND)
	if murdercountry ~= 0 and murdercountry ~= nil then
		s_countryInfo(murdercountry,"成功破坏天象祭坛，对方无法使用召集类道具且无法查看地图，请乘机加强攻势！")
	end
end
RegisterMyNpcDeadEvent(22947,"OnNpcDeadEventCountryWar22947($1,$2)")
