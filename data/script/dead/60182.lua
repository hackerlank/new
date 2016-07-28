--边境守卫者
function OnNpcDeadEventCountryWar60182(mid,thisid)
	local npcOwnerID = s_getLastAttackUser(thisid)
	if npcOwnerID == 0 or npcOwnerID == nil then
		s_debug("出现异常，找不到边境战神的杀手")
		return
	end
	if thisid == 0 or thisid == nil then
		s_debug("出现异常，找不到边境战神")
		return
	end
	local murdercountry = s_getValue(SCENE_ENTRY_PLAYER,npcOwnerID,VALUE_TYPE_HOMELAND)
	if murdercountry == 0 or murdercountry == nil then
		s_debug("出现异常，找不到边境战神的杀手的国籍")
		return
	end
	s_setValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_NPC_COUNTRY,murdercountry)
	local curcountry = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_CURRENT_COUNTRY)
	if curcountry == 0 or curcountry == nil then
		s_debug("出现异常，找不到边境战神所在国家")
		return
	end
	local curday = s_getCurTime(TIME_ALLDAYS)
	local killday = s_getCountryVar(curcountry,1,13)
	if killday ~= curday then
		s_addCountryVar(curcountry,1,13,curday)
		if s_getCountryVar(13,1,13) ~= curday then
			s_addCountryVar(13,1,13,curday)
			s_addTitle(SCENE_ENTRY_PLAYER,npcOwnerID,7)
			local name = s_getValue(SCENE_ENTRY_PLAYER,npcOwnerID,VALUE_TYPE_NAME)
			if name == nil then
				s_debug("出现异常，找不到边境战神杀手名字")
				return
			end
			s_worldInfo("【"..s_getCountryName(murdercountry).."】的【"..name.."】今天首次成功击败了边境战神，获得了边境毁灭者的称号",ChatPos_Sys + ChatPos_Honor)
		end
	end
	if s_getCountryVar(murdercountry,12,7) < COUNTRY_ACTIVITY_33806 then
		s_addCountryVar(murdercountry,12,7,s_getCountryVar(murdercountry,12,7)+1)
	end
	if s_getVar(npcOwnerID,130,19) == 0 then
		s_setVar(npcOwnerID,130,19,1)
		s_setVar(npcOwnerID,130,200,s_getVar(npcOwnerID,130,200)+1)
		s_debugUser(npcOwnerID,"国家活力点，击败边境战神，参与度：1")
	end
	local list = s_getNineEntry(SCENE_ENTRY_NPC,thisid,30)
	for i = 1, table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER
			and  s_getValue(SCENE_ENTRY_PLAYER,list[i+1],VALUE_TYPE_HOMELAND) == murdercountry then
			if s_getVar(list[i+1],130,19) == 0 then
				s_setVar(list[i+1],130,19,1)
				s_setVar(list[i+1],130,200,s_getVar(list[i+1],130,200)+1)
				s_debugUser(list[i+1],"国家活力点，击败边境战神，参与度：1")
			end
		end
	end
	--占领后续处理
	local killsecs = s_getCurTime(TIME_ALLSECONDS)
	s_addCountryVar(curcountry,1,17,killsecs)
	local lastcountry = s_getCountryVar(curcountry,1,14)
	if murdercountry ~= curcountry then
		s_worldInfo("【"..s_getCountryName(murdercountry).."】倾一国之力，成功击败了【"..s_getCountryName(curcountry).."】的边境战神！当前【"..s_getCountryName(murdercountry).."】已经可以使用遗忘沙漠的复活点！",ChatPos_Sys + ChatPos_Honor)
	elseif lastcountry ~= 0 and lastcountry ~= curcountry then
		s_worldInfo("经过全体国民的浴血抗战，【"..s_getCountryName(curcountry).."】成功夺回了边境战神，【"..s_getCountryName(lastcountry).."】不能再嚣张了。",ChatPos_Sys + ChatPos_Honor)
	end
	s_addCountryVar(curcountry,1,14,murdercountry)
	-- 国战设置边境战神占领情况
	if s_getCountryVar(curcountry,1,39) == Country_War_State_Start then
		if curcountry == murdercountry or s_isFriendCountry(curcountry,murdercountry) == VALUE_OK then
			s_setCountryWarVal(Country_War_Border, Country_War_Occupy_Defense, curcountry)
		else
			s_setCountryWarVal(Country_War_Border, Country_War_Occupy_Attack, curcountry)
		end
	end
	--发送国家buff
	s_sendBordBuff(curcountry,murdercountry)
end

RegisterMyNpcDeadEvent(60182,"OnNpcDeadEventCountryWar60182($1,$2)")
