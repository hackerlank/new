--团空间道具1
function OnUseItemEvent_63009(uid,thisid)
	local baseid = 63009
	--判断是否有团
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		s_sysInfo(uid,"没有团，不可使用此道具")
		return VALUE_FAIL
	end
	local sid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	local curcorps = s_getSceneVar(sid,0,1)
	if corps ~= curcorps then
		s_sysInfo(uid,"不是在自己的团，不能使用该道具")
		return VALUE_FAIL
	end
	--判断是否区域内
	--	if s_checkZoneType(SCENE_ENTRY_PLAYER,uid,ZONE_CORP_TREASURY) == VALUE_FAIL then
	if s_isInZoneByPos(SCENE_ENTRY_PLAYER,uid,ZONE_CORP_TREASURY) == VALUE_FAIL then
		s_sysInfo(uid,"非团藏宝库区域不能使用团空间道具");
		return VALUE_FAIL
	end
	--判断空间是否充足
	if GetCorpSpaceUsedCapacity(corps)+GetCorpSpaceItemCapacity(baseid) > GetCorpSpaceCapacity(s_getCorpsVar(corps,110,1)) then
		s_sysInfo(uid,"团藏宝库已达上限，不能继续召唤");
		return VALUE_FAIL
	end
	local pdam = s_getItemValue(uid,thisid,Item_Attribute_ExtPdam)
	local mdam = s_getItemValue(uid,thisid,Item_Attribute_ExtMdam)
	local pdef = s_getItemValue(uid,thisid,Item_Attribute_ExtPdef)
	local mdef = s_getItemValue(uid,thisid,Item_Attribute_ExtMdef)
	local maxhp = s_getItemValue(uid,thisid,Item_Attribute_ExtMaxhp)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,baseid,1061)
	if npcid ~= 0 and npcid ~= nil then
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_MASTER,uid)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_NPC_CORPS,corps)--记录团信息，防止团突袭误操作
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SIMULATION_MAXHP,maxhp)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SIMULATION_PDAM,pdam)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SIMULATION_MDAM,mdam)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SIMULATION_PDEF,pdef)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SIMULATION_MDEF,mdef)
		local cursec = s_getCurTime(TIME_ALLSECONDS)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_BIRTH_TIME,cursec)
		--道具属性添加到NPC上
		local num = s_getCorpsVar(corps,110,3)
		--保存道具的thisid
		s_addCorpsVar(corps,109,1+num*100,baseid)
		s_addCorpsVar(corps,109,2+num*100,npcid)
		--保存道具的基础属性
		s_addCorpsVar(corps,109,3+num*100,pdam)
		s_addCorpsVar(corps,109,4+num*100,mdam)
		s_addCorpsVar(corps,109,5+num*100,pdef)
		s_addCorpsVar(corps,109,6+num*100,mdef)
		s_addCorpsVar(corps,109,7+num*100,maxhp)
		local posx = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSX)
		local posy = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSY)
		s_addCorpsVar(corps,109,8+num*100,posx)
		s_addCorpsVar(corps,109,9+num*100,posy)
		s_addCorpsVar(corps,109,10+num*100,cursec)
		s_addCorpsVar(corps,109,11+num*100,uid)
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		local npcname = s_getNpcBase(baseid,1)
		s_corpsInfo(corps,"团成员"..name.."在团基地成功召唤"..npcname.."！")
		s_addCorpsVar(corps,110,3,num+1)
		s_refreshNpc(npcid)
		AddAchieveTaskOperate(uid,43011,1,1)
	end
	s_notifyCorpsSkill(uid,corps)
	return VALUE_OK
end
