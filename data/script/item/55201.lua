--团拓展：特勤机甲 PD特勤通讯仪
local robotInfo = {
	{44339, 1150000},
	{44340, 1380000},
	{44341, 1610000},
	{44342, 1955000},
	{44343, 2300000},
}

local hpAdd = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
function OnUseItemEvent_55201(uid,thisid,targetid)
	if uid == 0 or uid == nil then
		return VALUE_FAIL
	end
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		s_sysInfo(uid,"您必须加入团才可使用通讯仪！",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_getCurTime(TIME_ALLSECONDS) - s_getCorpsVar(corps,1,39) > 60 * 60 then
		s_sysInfo(uid,"对不起，本次拓展时间已过,无法使用通讯仪！",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local cid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local aimcountry = s_getVar(uid,101,61)
	if aimcountry == 0 or aimcountry == nil then
		s_sysInfo(uid,"系统没有找到目标国！无法使用通讯仪",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local aimcountryname = s_getCountryName(aimcountry)
	if aimcountryname == "" then
		return VALUE_FAIL
	end
	local map,x,y = 5,437,562;
	if aimcountry ~= 0 and curcountry ~= aimcountry then
		s_sysInfo(uid,"<p><n>似乎不是正确的地点呢！需前往" .. aimcountryname .. "</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if mapid ~= map then
		s_sysInfo(uid,"<p><n>似乎不是正确的地点呢！需前往" .. aimcountryname .. "</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if math.abs(posx - x) > 8 or math.abs(posy - y) > 8 then
		s_sysInfo(uid,"<p><n>好像还有不少距离啊！需前往" .. aimcountryname .. "</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	--新召唤出的魔甲用1051号AI被动御敌不移动
	local robotBaseID = robotInfo[s_getCorpsVar(corps,1,36)][1]
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	local robotid = s_sysSummon(robotBaseID,cid,posx,posy,1051,0)
	if robotid == 0 or robotid == nil then
		s_sysInfo(uid,"对不起，系统错误，未能成功召唤出特勤机甲。",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	s_setValue(SCENE_ENTRY_NPC,robotid,VALUE_TYPE_NPC_CORPS,corps)
	s_setValue(SCENE_ENTRY_NPC,robotid,VALUE_TYPE_MAXHP,robotInfo[s_getCorpsVar(corps,1,36)][2])
	local worldlevel = s_getWorldLevel()
	local hpAddRate = hpAdd[worldlevel]
	s_setValue(SCENE_ENTRY_NPC,robotid,VALUE_TYPE_MAXHP,hpAddRate * s_getValue(SCENE_ENTRY_NPC,robotid,VALUE_TYPE_HP))
	s_setValue(SCENE_ENTRY_NPC,robotid,VALUE_TYPE_NPC_COUNTRY,homeland)
	s_refreshAdditionData(robotid)
	local usedTime = s_getCurTime(TIME_ALLSECONDS) - s_getCorpsVar(corps,1,39)
	if usedTime > 60 * 60 * 1000 then
		usedTime = 60 * 60 * 1000
	end
	s_setValue(SCENE_ENTRY_NPC,robotid,VALUE_TYPE_LIFE,61 * 60 * 1000 - usedTime * 1000)
	s_addCorpsVar(corps,1,40,robotid)
	s_addCorpsVar(corps,1,42,s_getCurTime(TIME_ALLSECONDS))
	local msg = "<p><n>贵团奉大议长密令保护</n><n color='GXColorGreen'>特勤机甲</n><n>采集水晶样本,即刻前往！</n><n color='GXColorRed'>注意：这不是演习！</n></p>"
	s_sysCallUp(Relation_Corps,corps,cid,posx,posy,msg,2,uid)

	local corpsName = s_getCorpsField(corps,CorpVar_Name)
	if corpsName ~= 0 and s_getCorpsVar(corps,1,36) >= 4 then
		s_worldInfo(corpsName .. "团向<" .. aimcountryname .. ">生命水晶区域空投了特勤机甲！",ChatPos_Sys + ChatPos_Important)
	end

	--播放烟花特效
	s_addbuff(SCENE_ENTRY_NPC,robotid,20256,1,5,1)
	return VALUE_OK
end
