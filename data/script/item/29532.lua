--梦幻珊瑚
function OnUseItemEvent_29532(userid,thisid,targetid)
	local baseid = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_BASE_ID)
	if baseid ~= 60625 then
		s_sysInfo(userid,"请先选中安古瑞")
		return VALUE_FAIL
	end
	local country = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_NPC_COUNTRY)
	if country ~= s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HOMELAND) then
		s_sysInfo(userid,"安古瑞似乎不愿意吃非本国人抛来的零食！")
		return VALUE_FAIL
	end
	if math.floor(s_getVar(userid,109,3) /100) ~= s_getCurTime(TIME_ALLDAYS) then
		s_addVar(userid,109,3,s_getCurTime(TIME_ALLDAYS) * 100 + 0)
	end
	if s_getVar(userid,109,3) % 100 >= 10 then
		s_sysInfo(userid,"今日喂食次数已满")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_29532") == VALUE_OK then
		if s_getbufflevel(SCENE_ENTRY_NPC,targetid,20203) ~= 0 then
			OnFeedSeaMonsterHungry(userid,SCENE_ENTRY_NPC,targetid,2,100)
		else
			OnFeedSeaMonsterHungry(userid,SCENE_ENTRY_NPC,targetid,1,100)
		end
		ShowAttack(7150,SCENE_ENTRY_PLAYER,userid,SCENE_ENTRY_NPC,targetid)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--七彩海贝
function OnUseItemEvent_29533(userid,thisid,targetid)
	local baseid = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_BASE_ID)
	if baseid ~= 60625 then
		s_sysInfo(userid,"请先选中安古瑞")
		return VALUE_FAIL
	end
	local country = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_NPC_COUNTRY)
	if country ~= s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HOMELAND) then
		s_sysInfo(userid,"安古瑞似乎不愿意吃非本国人抛来的零食！")
		return VALUE_FAIL
	end
	if math.floor(s_getVar(userid,109,3) /100) ~= s_getCurTime(TIME_ALLDAYS) then
		s_addVar(userid,109,3,s_getCurTime(TIME_ALLDAYS) * 100 + 0)
	end
	if s_getVar(userid,109,3) % 100 >= 10 then
		s_sysInfo(userid,"今日喂食次数已满")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_29533") == VALUE_OK then
		if s_getbufflevel(SCENE_ENTRY_NPC,targetid,20204) ~= 0 then
			OnFeedSeaMonsterHungry(userid,SCENE_ENTRY_NPC,targetid,2,100)
		else
			OnFeedSeaMonsterHungry(userid,SCENE_ENTRY_NPC,targetid,1,100)
		end
		ShowAttack(7151,SCENE_ENTRY_PLAYER,userid,SCENE_ENTRY_NPC,targetid)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--淘气海星
function OnUseItemEvent_29534(userid,thisid,targetid)
	local baseid = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_BASE_ID)
	if baseid ~= 60625 then
		s_sysInfo(userid,"请先选中安古瑞")
		return VALUE_FAIL
	end
	local country = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_NPC_COUNTRY)
	if country ~= s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HOMELAND) then
		s_sysInfo(userid,"安古瑞似乎不愿意吃非本国人抛来的零食！")
		return VALUE_FAIL
	end
	if math.floor(s_getVar(userid,109,3) /100) ~= s_getCurTime(TIME_ALLDAYS) then
		s_addVar(userid,109,3,s_getCurTime(TIME_ALLDAYS) * 100 + 0)
	end
	if s_getVar(userid,109,3) % 100 >= 10 then
		s_sysInfo(userid,"今日喂食次数已满")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_29534") == VALUE_OK then
		if s_getbufflevel(SCENE_ENTRY_NPC,targetid,20205) ~= 0 then
			OnFeedSeaMonsterHungry(userid,SCENE_ENTRY_NPC,targetid,2,100)
		else
			OnFeedSeaMonsterHungry(userid,SCENE_ENTRY_NPC,targetid,1,100)
		end
		ShowAttack(7152,SCENE_ENTRY_PLAYER,userid,SCENE_ENTRY_NPC,targetid)
		return VALUE_OK
	end
	return VALUE_FAIL
end
--喂食
function OnFeedSeaMonsterHungry(userid,etype,eid,mul,hp)
	local times = s_getVar(userid,109,3) %100
	s_sysInfo(userid,"今日剩余喂食次数" .. 9 - times)
	s_addVar(userid,109,3,s_getCurTime(TIME_ALLDAYS)* 100 + times + 1)

	local level = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_LEVEL)
	local exp = 15 * (50+0.1*level^2.2) * mul
	s_refreshExp(userid,exp,ExpType_Fish,29532)
	s_addValue(etype,eid,VALUE_TYPE_HP,hp)
	if mul == 1 then
		s_sysInfo(userid,"『安古瑞』当前似乎不喜欢这个零食，请注意观察它的喜好哦！")
	else
		s_sysInfo(userid,"『安古瑞』当前似乎很喜欢这个零食！")
	end

	local curhp = s_getValue(etype,eid,VALUE_TYPE_HP)
	if curhp == 10000 or curhp == 30000 or curhp == 50000 then
		local world_level = s_getWorldLevel() - 1
		local cid = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_SCENE_ID)
		local posx = s_getValue(etype,eid,VALUE_TYPE_POSX)
		local posy = s_getValue(etype,eid,VALUE_TYPE_POSY)
		local npcid = s_sysSummon(22950 + world_level * 3 + math.random(0,2),cid,posx,posy)
	end
	if curhp == 50000 then
		s_clearNpc(eid)
		local country = s_getValue(etype,eid,VALUE_TYPE_NPC_COUNTRY)
		s_countryInfo(country,"小海兽『安古瑞』吃的饱饱的，幸福的游回海洋深处了，为了感谢大家的热情款待，它在军乐城钓鱼区的岸边吹了几个祈愿水泡，谢礼就装在里面呢！",ChatPos_Sys + ChatPos_Honor)
	end
end
