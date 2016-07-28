--侠盗召集信号弹
function OnUseItemEvent_55095(uid,thisid,targetid)
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local cid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local aimcountry = s_getCountryVar(homeland,1,115)
	if aimcountry == 0 or aimcountry == nil then
		s_sysInfo(uid,"系统没有找到突袭目标国！无法使用物品",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local usedTime = s_getCurTime(TIME_ALLSECONDS) - s_getCountryVar(homeland,1,114)
	if  usedTime > 60* 60 or usedTime < 0 then
		s_sysInfo(uid,"金库奇袭时间已过，无法使用侠盗召集信号弹！",ChatPos_Sys + ChatPos_Important)
	end
	local aimcountryname = s_getCountryName(aimcountry)
	local map,x,y = 5,390,735;
	if aimcountry ~= 0 and curcountry ~= aimcountry then
		s_sysInfo(uid,"<p><n>似乎不是正确的地点呢！需前往" .. aimcountryname .. "</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if mapid ~= map then
		s_sysInfo(uid,"<p><n>似乎不是正确的地点呢！需前往" .. aimcountryname .. "</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if math.abs(posx - x) > 10 or math.abs(posy - y) > 10 then
		s_sysInfo(uid,"<p><n>好像还有不少距离啊！需前往" .. aimcountryname .. "</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	--新召唤出的罗宾用100号AI，不动不攻击
	local robinid = s_sysSummon(60995,cid,390,735,100,0)
	local treasuryid = s_sysSummon(60997,cid,380,750,100,0)
	if robinid == 0 or robinid == nil then
		s_sysInfo(uid,"对不起，系统错误，未能成功召唤出侠盗罗宾。",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	s_addCountryVar(curcountry,1,120,s_getValue(SCENE_ENTRY_NPC,robinid,VALUE_TYPE_HP))
	s_addCountryVar(curcountry,1,121,robinid)
	s_addCountryVar(curcountry,1,122,treasuryid)
	if treasuryid == 0 or treasuryid == nil  then
		s_sysInfo(uid,"对不起，系统错误，未能成功召唤出王国金库。",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	s_setValue(SCENE_ENTRY_NPC,robinid,VALUE_TYPE_NPC_COUNTRY,homeland)
	s_setValue(SCENE_ENTRY_NPC,robinid,VALUE_TYPE_LIFE,3610000 - usedTime)
	s_setValue(SCENE_ENTRY_NPC,treasuryid,VALUE_TYPE_LIFE,3610000 - usedTime)
	local msg = "侠盗罗宾号召本国勇士一起奇袭<" .. s_getCountryName(aimcountry) .. ">的王国金库，前往增援可获得散落的银币，是否立即前往？"
	s_registerGomapMsgBox(homeland,curcountry,mapid,posx,posy,61,msg)

	--召唤者记录下召唤出的罗宾ID,金库ID
	s_setVar(uid,101,54,robinid)
	s_setVar(uid,101,55,treasuryid)

	--罗宾光环
	s_addbuff(SCENE_ENTRY_NPC,robinid,20272,1,60 * 60,1)
	return VALUE_OK
end
