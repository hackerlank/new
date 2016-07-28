--王国金库
function OnNpcDeadEvent60997(mid,thisid)
	if mid == 0 or mid == nil then
		s_debug("出现异常，找不到王国金库的杀手")
		return
	end
	if thisid == 0 or thisid == nil then
		s_debug("出现异常，找不到王国金库")
		return
	end
	local murdercountry = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_HOMELAND)
	if murdercountry == 0 or murdercountry == nil then
		s_debug("出现异常，找不到王国金库的杀手的国籍")
		return
	end
	s_setValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_NPC_COUNTRY,murdercountry)
	local curcountry = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_CURRENT_COUNTRY)
	if curcountry == 0 or curcountry == nil then
		s_debug("出现异常，找不到王国金库所在国家")
		return
	end
	-- 当前无国家对本国金库发动奇袭,金库死亡无奖励
	local invadecountry = s_getCountryVar(curcountry,1,116)
	if invadecountry == 0 or invadecountry == nil then
		return
	end
	if murdercountry ~= invadecountry then
		s_debug("击败王国金库的不是当前奇袭金库国的玩家")
		return
	end
	local curSec = s_getCurTime(TIME_ALLSECONDS)
	local startTime = s_getCountryVar(invadecountry,1,114)
	if (curSec - startTime) > 60*60 then
		s_debug("金库奇袭已经结束，击败金库无奖励")
	end
	if s_getCountryVar(murdercountry,12,14) < COUNTRY_ACTIVITY_33813 then
		s_addCountryVar(murdercountry,12,14,s_getCountryVar(murdercountry,12,14)+1)
	end
	if s_getVar(mid,130,26) == 0 then
		s_addVar(mid,130,26,1)
		s_addVar(mid,130,200,s_getVar(mid,130,200)+1)
		s_debugUser(mid,"国家活力点，侠盗罗宾，参与度：1")
	end
	local list = s_getNineEntry(SCENE_ENTRY_NPC,thisid,30)
	for i = 1, table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER and
			s_getValue(list[i],list[i+1],VALUE_TYPE_HOMELAND) == murdercountry then
			if s_getVar(list[i+1],130,26) == 0 then
				s_setVar(list[i+1],130,26,1)
				s_setVar(list[i+1],130,200,s_getVar(list[i+1],130,200)+1)
				s_debugUser(list[i+1],"国家活力点，侠盗罗宾，参与度：1")
			end
		end
	end
	--[[
	s_getCountryVar(curcountry,1,13,curday)
	local moneyLose = s_getCountryField(country,CountryVar_LastWage) * (0.28)
	s_addCountryVar(countryVar,1,118,s_getCountryVar(country,1,118) + moneyLose)
	s_addCountryVar(invadecountry,1,117,s_getCountryVar(invadecountry,1,117) + moneyLose)
	local cid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	local npcPosX = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSX)
	local npcPosY = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSY)
	s_addSceneItem(5,moneyLose/20,cid,npcPosX,npcPosY,"")
	]]
end

RegisterNpcDeadEvent(60997,"OnNpcDeadEvent60997($1,$2)")
