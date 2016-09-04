--外城守卫
function OnNpcDeadEventCountryWar22945(mid,thisid)
	if mid == 0 or mid == nil then
		s_debug("出现异常，找不到前哨的杀手")
		return
	end
	if thisid == 0 or thisid == nil then
		s_debug("国战出现异常，找不到前哨")
		return
	end
	local murdercountry = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_HOMELAND)
	if murdercountry == 0 or murdercountry == nil then
		s_debug("国战出现异常，找不到前哨所在国家")
		return
	end
	s_setValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_NPC_COUNTRY,murdercountry)
	--占领后续处理
	local curcountry = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_CURRENT_COUNTRY)
	if curcountry == 0 or curcountry == nil then
		s_debug("国战出现异常，找不到前哨所在国家")
		return
	end
	s_addCountryVar(curcountry,1,40,murdercountry)
	local killsecs = s_getCurTime(TIME_ALLSECONDS)
	s_addCountryVar(curcountry,1,44,killsecs)
	s_worldInfo("<"..s_getCountryName(murdercountry)..">成功占领前哨掌旗官，控制了军乐城的攻方复活点！",ChatPos_Sys + ChatPos_Honor)
	if s_getCountryVar(curcountry,1,39) == Country_War_State_Start then
		local npcid = s_summon(SCENE_ENTRY_PLAYER,mid,60570)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
		if npcid ~= 0 then
			s_addbuff(SCENE_ENTRY_NPC,npcid,5020,1,10)
		end
		if curcountry == murdercountry or s_isFriendCountry(curcountry,murdercountry) == VALUE_OK then
			s_setCountryWarVal(Country_War_Outside, Country_War_Occupy_Defense, curcountry)
		else
			s_setCountryWarVal(Country_War_Outside, Country_War_Occupy_Attack, curcountry)
			--向攻方国国王弹框
			local attackcountry = s_getCountryVar(curcountry,1,37)
			local marshal = s_getCountryField(attackcountry,CountryVar_Marshal)
			local msg ="国王陛下，前哨掌旗官已被我等拿下，您是否需要卑职前往我方复活点支援?"
			local func = "MsgBox22945("..marshal..",$2,"..curcountry..")"
			local buttons = "确定|3|Enter|取消|4|Esc"
			s_registerRelationMsgBox(marshal,255,0,0,func,buttons,msg)
		end
		local cid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_SCENE_ID)
		if cid ~= 0 and cid ~= nil then
			local magmaid = s_sysSummon(22983,cid,494,630,1055)
			if magmaid ~= 0 and magmaid ~= nil then
				s_setNpcDir(magmaid,2)
			end
			local gateid = s_sysSummon(22982,cid,490,630,1056,1)
			if gateid ~= 0 and gateid ~= nil then
				s_setNpcDir(gateid,4)
			end
			s_setMagmaID(gateid,magmaid)
			magmaid = s_sysSummon(22983,cid,380,529,1055)
			if magmaid ~= 0 and magmaid ~= nil then
				s_setNpcDir(magmaid,4)
			end
			gateid = s_sysSummon(22982,cid,381,535,1056,1)
			if gateid ~= 0 and gateid ~= nil then
				s_setNpcDir(gateid,6)
			end
			s_setMagmaID(gateid,magmaid)
			s_countryInfo(curcountry,"前线掌旗官已被功方击破，守方城门已召唤！",ChatPos_Sys+ChatPos_Important)
			local attackcountry = s_getCountryVar(curcountry,1,37)
			s_countryInfo(attackcountry,"前线掌旗官已被功方击破，守方城门已召唤！",ChatPos_Sys+ChatPos_Important)
		end
	end
end

function MsgBox22945(uid,result,country)
	if result == Button_Yes then
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		local msg = ""
		msg = msg.."敌方前哨掌旗官，已被我军斩于马下，【国王】" .. name .. "在【" ..s_getCountryName(country) .. " 军乐城 】召集所有将士集结，是否接受召集？"
		s_registerGomapMsgBox(homeland,country,5,640,188,61,msg)
	end
end

RegisterMyNpcDeadEvent(22945,"OnNpcDeadEventCountryWar22945($1,$2)")
