--===================================================
--lostItem(userid,packtype,percent,minnum,maxnum,hat)
--===================================================
function OnPlayerDeathEvent(userid,dtype,new_user_buf)
	---死亡掉落
	local murdertype = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MURDER_TYPE)
	local murderid = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MURDER_ID)
	if murderid == 0 or murderid == nil then
		return
	end
	local goodstate = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_GOODSTATE)
	if goodstate == GoodNess_Hero then
		s_lostItem(userid,1,5,1,3)
	elseif goodstate == GoodNess_Normal then
		s_lostItem(userid,1,10,1,3)
		s_lostItem(userid,2,1,1,1)
		s_lostItem(userid,3,3,1,1)
		s_lostItem(userid,4,3,1,1)
		s_lostItem(userid,5,3,1,1)
	elseif goodstate == GoodNess_Rioter then
		s_lostItem(userid,1,35,1,5)
		s_lostItem(userid,2,5,1,1)
		s_lostItem(userid,3,10,1,3)
		s_lostItem(userid,4,10,1,3)
		s_lostItem(userid,5,10,1,3)
	elseif goodstate == GoodNess_Badman then
		s_lostItem(userid,1,100,1,5)
		s_lostItem(userid,2,10,1,1)
		s_lostItem(userid,3,25,1,3)
		s_lostItem(userid,4,25,1,3)
		s_lostItem(userid,5,25,1,3)
	elseif goodstate == GoodNess_Evil then
		s_lostItem(userid,1,100,5,15)
		s_lostItem(userid,2,20,1,1)
		s_lostItem(userid,3,50,1,5)
		s_lostItem(userid,4,50,1,5)
		s_lostItem(userid,5,50,1,5)
	end

	--[[
	local murderhomeland = s_getValue(SCENE_ENTRY_PLAYER,murderhomeland,VALUE_TYPE_HOMELAND)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HOMELAND)
	if murdertype == SCENE_ENTRY_PLAYER then
	if murderhomeland ~= homeland then
	s_sysInfo(murderid,"101,78 = " .. s_getVar(murderid,101,78))
	s_sysInfo(murderid,"process = " .. s_getTaskValue(murderid,s_getVar(murderid,101,78),TaskValue_Process))
	if s_getVar(murderid,101,78) / 10 == 5010 and s_getTaskValue(murderid,s_getVar(murderid,101,78),TaskValue_Process) == TaskProcess_Doing then
	AddRoleTaskOperate(murderid,s_getVar(murderid,101,78))
	end
	end
	end
	]]

	--掉落镖车物资
	local rand = math.random(1,100)
	if rand <= 50 then
		local list = s_dropItem(userid, 31488, 0, 0, 0, "死亡掉落")
		if list ~= nil then
			for i=1, table.getn(list), 1 do
				local owner = s_getItemValue(0,list[i],Item_Attribute_Guard_Owner)
				if owner == nil then owner = 0 end
				s_setSceneItemValue(list[i],2,4)
				s_setSceneItemValue(list[i],3,owner)
				s_refreshSceneItem(list[i],2);
			end
		end
	end
	local rand1 = math.random(1,100)
	if rand1 <= 50 then
		list = s_dropItem(userid, 31489, 0, 0, 0, "死亡掉落")
		if list ~= nil then
			for i=1, table.getn(list), 1 do
				local owner = s_getItemValue(0,list[i],Item_Attribute_Guard_Owner)
				if owner == nil then owner = 0 end
				s_setSceneItemValue(list[i],2,4)
				s_setSceneItemValue(list[i],3,owner)
				s_refreshSceneItem(list[i]);
			end
		end
	end
	list = s_dropItem(userid, 31548, 0, 0, 0, "死亡掉落")
	if list ~= nil then
		for i=1, table.getn(list), 1 do
			local owner = s_getItemValue(0,list[i],Item_Attribute_Guard_Owner)
			if owner == nil then owner = 0 end
			s_setSceneItemValue(list[i],2,4)
			s_setSceneItemValue(list[i],3,owner)
			s_refreshSceneItem(list[i]);
		end
	end

	--特定BOSS杀人后回血
	if murdertype == SCENE_ENTRY_NPC then
		local baseid = s_getValue(SCENE_ENTRY_NPC,murderid,VALUE_TYPE_BASE_ID)
		if baseid ~= nil and baseid >= 20001 and baseid <= 20010 then
			local addhp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXHP)
			s_addValue(SCENE_ENTRY_NPC,murderid,VALUE_TYPE_HP,addhp)
		end
	end
	if new_user_buf == 1 then
		local buflevel = s_getbufflevel(SCENE_ENTRY_PLAYER,userid,124);
		if(buflevel >= 1) then
			s_removebuff(SCENE_ENTRY_PLAYER,userid,124)
		end
		s_addbuff(SCENE_ENTRY_PLAYER,userid,124,buflevel + 1,60)
	end
end

