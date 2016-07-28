--国家水晶押运兽
function OnCountryPostDead(baseid,level,thisid,mid)
	if mid == 0 or mid == nil then -- 系统杀死
		return
	end
	if thisid == 0 or thisid == nil then
		s_debug("出现异常，找不到国家水晶押运兽")
		return
	end
	local murdercountry = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_HOMELAND)
	if murdercountry == 0 or murdercountry == nil then
		s_debug("出现异常，找不到国家水晶押运兽杀手所在国家")
		return
	end
	local curcountry = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_CURRENT_COUNTRY)
	if curcountry == 0 or curcountry == nil then
		s_debug("出现异常，找不到国家水晶押运兽所在国家")
		return
	end
	local map = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_CURRENT_MAP)
	--	s_setCountryWarVal(Country_War_Statue_Life_Num, 0, curcountry)
	s_setCountryPostCarVal(COUNTRY_POSTCAR_STATE_KILLED,curcountry,map)
	local mcountryname = s_getCountryName(murdercountry)
	local countryname = s_getCountryName(curcountry)
	local mname = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_NAME)
	s_worldInfo(mcountryname.."玩家"..mname.."给予"..countryname.."水晶押运兽最后一击，"..mcountryname.."国民成功抢夺了水晶押运兽！",ChatPos_Sys + ChatPos_Honor)
	s_postCarEndEvent(thisid,0)
	--掉落
	local cid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSY)
	for i=1,50 do
		s_addSceneItem(5,2,cid,posx,posy,0,"1-1")
	end
	if s_getCountryVar(murdercountry,12,12) < COUNTRY_ACTIVITY_33811 then
		s_addCountryVar(murdercountry,12,12,s_getCountryVar(murdercountry,12,12)+1)
	end
	if s_getVar(mid,130,24) == 0 then
		s_addVar(mid,130,24,1)
		s_addVar(mid,130,200,s_getVar(mid,130,200)+1)
		s_debugUser(mid,"国家活力点，破坏国家水晶兽，参与度：1")
	end
	local list = s_getNineEntry(SCENE_ENTRY_NPC,thisid,30)
	for i = 1, table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER and
			s_getValue(list[i],list[i+1],VALUE_TYPE_HOMELAND) == murdercountry then
			if s_getVar(list[i+1],130,24) == 0 then
				s_setVar(list[i+1],130,24,1)
				s_setVar(list[i+1],130,200,s_getVar(list[i+1],130,200)+1)
				s_debugUser(list[i+1],"国家活力点，破坏国家水晶兽，参与度：1")
			end
		end
	end
end
