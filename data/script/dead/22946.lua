--内城守卫
function OnNpcDeadEventCountryWar22946(mid,thisid)
	if mid == 0 or mid == nil then
		s_debug("国战出现异常，找不到魔神将军的杀手")
		return
	end
	if thisid == 0 or thisid == nil then
		s_debug("国战出现异常，找不到魔神将军")
		return
	end
	local murdercountry = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_HOMELAND)
	if murdercountry == 0 or murdercountry == nil then
		s_debug("国战出现异常，找不到魔神将军杀手所在国家")
		return
	end
	s_setValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_NPC_COUNTRY,murdercountry)
	--占领后续处理
	local curcountry = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_CURRENT_COUNTRY)
	if curcountry == 0 or curcountry == nil then
		s_debug("国战出现异常，找不到魔神将军所在国家")
		return
	end
	s_addCountryVar(curcountry,1,41,murdercountry)
	local killsecs = s_getCurTime(TIME_ALLSECONDS)
	s_addCountryVar(curcountry,1,45,killsecs)
	--增加称号
	if s_getCountryVar(curcountry,1,50) == 0 then
		s_addTitle(SCENE_ENTRY_PLAYER,mid,29)
		s_addCountryVar(curcountry,1,50,mid)
	end
	if s_getCountryVar(murdercountry,12,6) < COUNTRY_ACTIVITY_33805 then
		s_addCountryVar(murdercountry,12,6,s_getCountryVar(murdercountry,12,6)+1)
	end
	s_setCountryWarVal(Country_War_Inner_Life_Num, 0, curcountry)
	s_countryInfo(curcountry,"魔神将军被击败，敌人潮水般涌进军乐城，请加强霸者雕像的防守！",ChatPos_Honor)
	s_countryInfo(murdercountry,"成功击败魔神将军，霸者雕像的守护结界解除了，现在可以有效攻击它了！",ChatPos_Honor)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,mid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	local buff = {0,5025,5022,5021,5023,5024,5026}
	if npcid ~= 0 then
		s_addbuff(SCENE_ENTRY_NPC,npcid,buff[murdercountry],1,10)
	end
	--向守方国国王弹框
	local marshal = s_getCountryField(curcountry,CountryVar_Marshal)
	local msg ="敌军已突破魔神将军防线，您是否召集本国将士死守霸者雕像?"
	local func = "MsgBox22946("..marshal..",$2,"..curcountry..")"
	local buttons = "确定|3|Enter|取消|4|Esc"
	s_registerRelationMsgBox(marshal,255,0,0,func,buttons,msg)
end

function MsgBox22946(uid,result,country)
	if result == Button_Yes then
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		local msg = ""
		msg = msg.."敌军突破魔神将军防线，国王召集您死守霸者雕像！"
		s_registerGomapMsgBox(homeland,country,5,381,679,61,msg)
	end
end

RegisterMyNpcDeadEvent(22946,"OnNpcDeadEventCountryWar22946($1,$2)")
