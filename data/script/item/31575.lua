--烟花
function OnUseItemEvent_31575(uid,thisid)
	local map,x,y = 156,120,399;
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countryname = s_getCountryName(homeland)
	if country ~= homeland  then
		s_sysInfo(uid,"<p><n color=GXColorBlueSky>似乎不是正确的地点呢！需前往"..countryname.."婚礼殿堂</n></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	if mapid ~= map then
		s_sysInfo(uid,"<p><n color=GXColorBlueSky>似乎不是正确的地点呢！需前往"..countryname.."婚礼殿堂</n></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	local randbuff = {5002,5003,5009,5010}
	s_addbuff(SCENE_ENTRY_NPC,npcid,randbuff[math.random(1,4)],1,10)
	AddRoleTaskOperate(uid,22418)
	return VALUE_OK
end
