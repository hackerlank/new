--复活令旗
function OnUseItemEvent_29566(uid,thisid)
	local stype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if stype ~= CopySceneType_PalaceWar then
		s_sysInfo(uid,"当前场景不能使用该道具！")
		return VALUE_FAIL
	end
	local flag = s_getItemValue(uid,thisid,Item_Attribute_Flag)
	s_debug("使用复活令旗道具后，得到复活旗帜A："..flag)
	if s_deleteItemByThisID(uid,thisid,1,"使用复活令旗") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,20402)
	local cid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	local npcid = s_sysSummon(22991,cid,posx,posy)
	s_setSceneVar(cid,0,104,posx)
	s_setSceneVar(cid,0,105,posy)
	s_setSceneVar(cid,0,102,0)
	if npcid ~= 0 and npcid ~= nil then
		local addhprate = {0,1000,2500,4500,6500,10000,13500,17000,21000,25000}
		local wlevel = s_getWorldLevel()
		s_addbuff(SCENE_ENTRY_NPC,npcid,105,addhprate[wlevel],10)
		s_addbuff(SCENE_ENTRY_NPC,npcid,102,addhprate[wlevel],10)
		s_addbuff(SCENE_ENTRY_NPC,npcid,104,addhprate[wlevel],10)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_DEAD_BORN_NPC,flag)
		s_addGroup(SCENE_ENTRY_NPC,npcid,17)
		CopySceneInfo_75:GroupInfo(cid,1,"<p><n>【系】我方复活点已插旗标记，全民保护令旗！</n></p>")
		CopySceneInfo_75:GroupInfo(cid,2,"<p><n>【系】敌方复活点已插旗标记，速度击破令旗，让敌方失去宫殿内复活点！</n></p>")
	end
	return VALUE_OK
end
