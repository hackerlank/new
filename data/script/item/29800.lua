--福利哥哥召唤器
function OnUseItemEvent_29800(uid,thisid,targetid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		return VALUE_FAIL
	end
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 7 then
		s_sysInfo(uid,"请在遗忘沙漠使用此道具")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29800") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = 0
	if level >= 21 and level <=30 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10341)
	elseif level >= 31 and level <=40 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10342)
	elseif level >= 41 and level <=50 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10343)
	elseif level >= 51 and level <=60 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10344)
	elseif level >= 61 and level <=70 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10345)
	elseif level >= 71 and level <=80 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10346)
	elseif level >= 81 and level <=90 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10347)
	elseif level >= 91 and level <=100 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10348)
	elseif level >= 101 and level <=110 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10349)
	elseif level >= 111 and level <=120 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10350)
	elseif level >= 121 and level <=130 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10351)
	elseif level >= 131 and level <=140 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10352)
	elseif level >= 141 and level <=150 then
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,10353)
	end
	if npcid == 0 then
		return VALUE_FAIL
	end
	--成就点奖励
	AddAchieveTaskOperate(uid,40005,1)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*60*1000)
	return VALUE_OK
end
