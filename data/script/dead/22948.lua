--霸者雕像
function OnNpcDeadEventCountryWar22948(mid,thisid)
	if mid == 0 or mid == nil then
		s_debug("出现异常，找不到霸者的杀手")
		return
	end
	if thisid == 0 or thisid == nil then
		s_debug("出现异常，找不到霸者")
		return
	end
	local murdercountry = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_HOMELAND)
	if murdercountry == 0 or murdercountry == nil then
		s_debug("国战出现异常，找不到霸者杀手所在国家")
		return
	end
	local curcountry = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_CURRENT_COUNTRY)
	if curcountry == 0 or curcountry == nil then
		s_debug("国战出现异常，找不到霸者所在国家")
		return
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,mid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid ~= 0 then
		s_addbuff(SCENE_ENTRY_NPC,npcid,5027,1,10)
	end
	s_addCountryVar(curcountry,1,43,murdercountry)
	s_addTitle(SCENE_ENTRY_PLAYER,mid,31)
	s_setCountryWarVal(Country_War_Statue_Life_Num, 0, curcountry)
	local cid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	local npclist = s_getNpcByBaseID(cid, 22982)
	if npclist ~= nil then
		for i=1,#npclist do
			s_killnpc(npclist[i])
		end
	end
	--前提是正常流程
	if s_getCountryVar(curcountry,1,72) == 0 then
		--召唤开启宫殿战传送NPC
		s_sysSummon(22984,cid,380,687)
		--守方直接传进副本
		local call = "PalaceWarGoinAndStart($1,$2,"..curcountry..")"
		local buttons = "确定|3|Enter|取消|4|Esc"
		local msg = "敌国已攻入宫殿，是否传送进宫殿保卫主神？"
		s_registerRelationMsgBox(0,Relation_Country,curcountry,61,call,buttons,msg,300)
		--攻方传送到副本入口NPC
		local attackcountry = s_getCountryVar(curcountry,1,37)
		msg = "宫殿入口已出现，可以点击（传送NPC）传送入宫殿击败敌国主神，彻底占领敌国吧！"
		s_registerGomapMsgBox(attackcountry,curcountry,5,380,687,61,msg)
		s_addCountryVar(curcountry,1,161,attackcountry)
		s_addCountryVar(curcountry,1,162,curcountry)
	end
end
function PalaceWarGoinAndStart(uid,ret,dcountry)
	if ret ~= Button_Yes then
		return
	end
	if s_getCountryVar(dcountry,1,39) ~= Country_War_State_Start then
		return
	end
	s_intoCopy(uid,75,dcountry)
end
RegisterMyNpcDeadEvent(22948,"OnNpcDeadEventCountryWar22948($1,$2)")
