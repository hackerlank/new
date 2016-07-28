--1v1模拟战
--///////////////////////////////////////////////////////////////////
-- 副本场景变量定义
--0_101		胜方ID
--0_102		负方ID
--0_103		开始时间
--0_104		比赛结束
--0_105		跳出循环

--NPC数据
Npc_Profession				= 1		--职业
Npc_Uid						= 2		--角色
Npc_HP						= 3		--生命值
Npc_Pdam					= 4		--物攻
Npc_Mdam					= 5		--魔攻
Npc_Pdef					= 6		--物防
Npc_Mdef					= 7		--魔防
Npc_Phsub					= 8		--物减
Npc_Mhsub					= 9		--魔减
Npc_Lucky					= 10	--致命
Npc_Ignoredef				= 11	--忽视
Npc_Force					= 12	--重击
Npc_Hide					= 13	--闪避
Npc_Hurtecho				= 14	--反伤
Npc_Superdam				= 15	--特伤-四系中的最大特伤
Npc_Superdef				= 16	--特抗-四系中的最大特抗
Npc_Suitehsub				= 17	--套装效果减伤
Npc_Thisid					= 18	--模拟NPCID
Npc_Hit						= 19	--命中
Npc_Type                    = 20    --挑战类型

CopySceneInfo_69 = {
	professionInfo = {
		{1.7,60870, 60876},
		{1.7,60871, 60877},
		{2.0,60872, 60878},
		{2.0,60873, 60879},
		{2.0,60874, 60880},
		{2.0,60875, 60881},
	},
	zonelist = {
		{posx = 120, posy = 100},
		{posx = 121, posy = 117},
	},
}

--NPC变量
function CopySceneInfo_69:GetSimulationNpcVar(sid,index,key)
	return s_getSceneVar(sid,3,index*100+key)
end
function CopySceneInfo_69:SetSimulationNpcVar(sid,index,key,value)
	s_setSceneVar(sid,3,index*100+key,value)
end

function CopySceneInfo_69:InitCopyScene(cid)
	local cursec = s_getCurTime(TIME_ALLSECONDS)
	s_setSceneVar(cid,0,103,cursec)
	s_setSceneVar(cid,0,105,0)
end
function CopySceneInfo_69:CopyExtInitEvent(ctype, cid)
end

function CopySceneInfo_69:OnPlayerLeaveCopyScene(cid,uid)
	--删除buff
	s_removebuff(SCENE_ENTRY_PLAYER,uid,71)
	s_setSelfHide(SCENE_ENTRY_PLAYER,uid,2)
end

function CopySceneInfo_69:OnPlayerIntoCopyScene(cid,uid)
	local last = s_getCurTime(TIME_ALLSECONDS) - s_getSceneVar(cid,0,103)
	s_sendCopyInfo(cid,3*60-last,"1v1模拟战")
	--添加buff
	s_addbuff(SCENE_ENTRY_PLAYER,uid,71,1,10*60)
	s_setSelfHide(SCENE_ENTRY_PLAYER,uid,1)
	--	AddRoleTaskOperate(uid,15223)
	--	AddAchieveTaskOperate(uid,41004,1)
end

function OnLoopCopyScene_1Sec_69(ctype,cid)
	CopySceneInfo_69:Loop_1Sec(ctype,cid)
end
function CopySceneInfo_69:Loop_1Sec(ctype,cid)
	if s_getSceneVar(cid,0,105) == 2 then
		return
	end
	local cursec = s_getCurTime(TIME_ALLSECONDS)
	local start = s_getSceneVar(cid,0,103)
	if cursec - start < 3 then
		s_copyInfo(cid,"开始倒计时:" .. 3-(cursec-start))
		return
	end
	if s_getSceneVar(cid,0,105) == 0 then
		local list = s_getSimulationInfo(cid)
		local j=1
		for i = 1,table.getn(list),19 do
			self:SetSimulationNpcVar(cid,j,Npc_Profession,list[i])
			self:SetSimulationNpcVar(cid,j,Npc_Uid,list[i+1])
			self:SetSimulationNpcVar(cid,j,Npc_HP,list[i+2])
			self:SetSimulationNpcVar(cid,j,Npc_Pdam,list[i+3])
			self:SetSimulationNpcVar(cid,j,Npc_Mdam,list[i+4])
			self:SetSimulationNpcVar(cid,j,Npc_Pdef,list[i+5])
			self:SetSimulationNpcVar(cid,j,Npc_Mdef,list[i+6])
			self:SetSimulationNpcVar(cid,j,Npc_Phsub,list[i+7])
			self:SetSimulationNpcVar(cid,j,Npc_Mhsub,list[i+8])
			self:SetSimulationNpcVar(cid,j,Npc_Lucky,list[i+9])
			self:SetSimulationNpcVar(cid,j,Npc_Ignoredef,list[i+10])
			self:SetSimulationNpcVar(cid,j,Npc_Force,list[i+11])
			self:SetSimulationNpcVar(cid,j,Npc_Hide,list[i+12])
			self:SetSimulationNpcVar(cid,j,Npc_Hurtecho,list[i+13])
			self:SetSimulationNpcVar(cid,j,Npc_Superdam,list[i+14])
			self:SetSimulationNpcVar(cid,j,Npc_Superdef,list[i+15])
			self:SetSimulationNpcVar(cid,j,Npc_Suitehsub,list[i+16])
			self:SetSimulationNpcVar(cid,j,Npc_Hit,list[i+17])
			self:SetSimulationNpcVar(cid,j,Npc_Type,list[i+18])
			j = j+1
		end
		--召唤NPC
		for i=1,2 do
			local profession = self:GetSimulationNpcVar(cid,i,Npc_Profession)
			local baseid = self.professionInfo[profession][2]
			--判断此人是否在线
			local uid = self:GetSimulationNpcVar(cid,i,Npc_Uid)
			local ulist = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
			for i=1,table.getn(ulist), 2 do
				if uid == ulist[i+1] then
					local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
					baseid = self.professionInfo[profession][sex+1]
				end
			end
			local npcid = s_sysSummon(baseid,cid,self.zonelist[i].posx,self.zonelist[i].posy,1044)
			if npcid == 0 or npcid == nil then
				s_debug("模拟战NPC配置错误")
				return
			end
			self:SetSimulationNpcVar(cid,i,Npc_Thisid,npcid)
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_MAXHP, self:GetSimulationNpcVar(cid,i,Npc_HP))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_PDAM, self:GetSimulationNpcVar(cid,i,Npc_Pdam))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_MDAM, self:GetSimulationNpcVar(cid,i,Npc_Mdam))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_PDEF, self:GetSimulationNpcVar(cid,i,Npc_Pdef))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_MDEF, self:GetSimulationNpcVar(cid,i,Npc_Mdef))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_PHSUB, self:GetSimulationNpcVar(cid,i,Npc_Phsub))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_MHSUB, self:GetSimulationNpcVar(cid,i,Npc_Mhsub))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_LUCKY, self:GetSimulationNpcVar(cid,i,Npc_Lucky))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_IGNOREDEF, self:GetSimulationNpcVar(cid,i,Npc_Ignoredef))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_FORCE, self:GetSimulationNpcVar(cid,i,Npc_Force))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_HIDE, self:GetSimulationNpcVar(cid,i,Npc_Hide))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_HURTECHO, self:GetSimulationNpcVar(cid,i,Npc_Hurtecho))
			s_addValue(SCENE_ENTRY_NPC, npcid, VALUE_TYPE_SIMULATION_HIT, self:GetSimulationNpcVar(cid,i,Npc_Hit))
		end
		-- 计算结果
		local a1 = 0
		local a2 = 0
		local b1 = 0
		local b2 = 0
		local a3 = 0
		local b3 = 0
		local a4 = 0
		local b4 = 0
		local a5 = 0
		local b5 = 0
		local profession1 = self:GetSimulationNpcVar(cid,1,Npc_Profession)
		local profession2 = self:GetSimulationNpcVar(cid,2,Npc_Profession)
		if profession1 == 1 or profession1 == 2 then
			a1 = math.floor(((self:GetSimulationNpcVar(cid,1,Npc_Pdam)+self:GetSimulationNpcVar(cid,1,Npc_Hit)*0.5)*(1+0.5*self:GetSimulationNpcVar(cid,1,Npc_Force)/10000)
				-self:GetSimulationNpcVar(cid,2,Npc_Pdef)*(1-self:GetSimulationNpcVar(cid,1,Npc_Ignoredef)/10000))
				*(1+self:GetSimulationNpcVar(cid,1,Npc_Lucky)/10000))
			if a1 < 0 then
				a1 = 0
			end
			a2 = math.floor(a1*(1-self:GetSimulationNpcVar(cid,2,Npc_Phsub)/10000)*(1-self:GetSimulationNpcVar(cid,2,Npc_Hide)/10000)/self.professionInfo[profession1][1])
		else
			a1 = math.floor(((self:GetSimulationNpcVar(cid,1,Npc_Mdam)+self:GetSimulationNpcVar(cid,1,Npc_Hit)*0.5)*(1+0.5*self:GetSimulationNpcVar(cid,1,Npc_Force)/10000)
				-self:GetSimulationNpcVar(cid,2,Npc_Mdef)*(1-self:GetSimulationNpcVar(cid,1,Npc_Ignoredef)/10000))
				*(1+self:GetSimulationNpcVar(cid,1,Npc_Lucky)/10000))
			if a1 < 0 then
				a1 = 0
			end
			a2 = math.floor(a1*(1-self:GetSimulationNpcVar(cid,2,Npc_Mhsub)/10000)*(1-self:GetSimulationNpcVar(cid,2,Npc_Hide)/10000)/self.professionInfo[profession1][1])
		end
		if profession2 == 1 or profession2 == 2 then
			b1 = math.floor(((self:GetSimulationNpcVar(cid,2,Npc_Pdam)+self:GetSimulationNpcVar(cid,1,Npc_Hit)*0.5)*(1+0.5*self:GetSimulationNpcVar(cid,2,Npc_Force)/10000)
				-self:GetSimulationNpcVar(cid,1,Npc_Pdef)*(1-self:GetSimulationNpcVar(cid,2,Npc_Ignoredef)/10000))
				*(1+self:GetSimulationNpcVar(cid,2,Npc_Lucky)/10000))
			if b1 < 0 then
				b1 = 0
			end
			b2 = math.floor(b1*(1-self:GetSimulationNpcVar(cid,1,Npc_Phsub)/10000)*(1-self:GetSimulationNpcVar(cid,1,Npc_Hide)/10000)/self.professionInfo[profession2][1])
		else
			b1 = math.floor(((self:GetSimulationNpcVar(cid,2,Npc_Mdam)+self:GetSimulationNpcVar(cid,1,Npc_Hit)*0.5)*(1+0.5*self:GetSimulationNpcVar(cid,2,Npc_Force)/10000)
				-self:GetSimulationNpcVar(cid,1,Npc_Mdef)*(1-self:GetSimulationNpcVar(cid,2,Npc_Ignoredef)/10000))
				*(1+self:GetSimulationNpcVar(cid,2,Npc_Lucky)/10000))
			if b1 < 0 then
				b1 = 0
			end
			b2 = math.floor(b1*(1-self:GetSimulationNpcVar(cid,1,Npc_Mhsub)/10000)*(1-self:GetSimulationNpcVar(cid,1,Npc_Hide)/10000)/self.professionInfo[profession2][1])
		end
		a3 = math.floor(b2*self:GetSimulationNpcVar(cid,1,Npc_Hurtecho)/10000)
		b3 = math.floor(a2*self:GetSimulationNpcVar(cid,2,Npc_Hurtecho)/10000)

		local asupdam = self:GetSimulationNpcVar(cid,1,Npc_Superdam)
		local bsupdam = self:GetSimulationNpcVar(cid,2,Npc_Superdam)
		local asupdef = self:GetSimulationNpcVar(cid,1,Npc_Superdef)
		local bsupdef = self:GetSimulationNpcVar(cid,2,Npc_Superdef)
		if asupdam > bsupdef then
			a4 = math.floor(a2+a3+(asupdam-bsupdef))
		else
			a4 = math.floor(a2+a3)
		end
		if bsupdam > asupdef then
			b4 = math.floor(b2+b3+(bsupdam-asupdef))
		else
			b4 = math.floor(b2+b3)
		end
		a5 = math.floor(self:GetSimulationNpcVar(cid,2,Npc_HP)/a4)
		b5 = math.floor(self:GetSimulationNpcVar(cid,1,Npc_HP)/b4)
		if a5 >= b5 then
			s_setSceneVar(cid,0,101,self:GetSimulationNpcVar(cid,2,Npc_Uid))
			s_setSceneVar(cid,0,102,self:GetSimulationNpcVar(cid,1,Npc_Uid))
		else
			s_setSceneVar(cid,0,101,self:GetSimulationNpcVar(cid,1,Npc_Uid))
			s_setSceneVar(cid,0,102,self:GetSimulationNpcVar(cid,2,Npc_Uid))
		end
		for i=1,2 do
			local npc = self:GetSimulationNpcVar(cid,i,Npc_Thisid)
			s_addValue(SCENE_ENTRY_NPC, npc, VALUE_TYPE_SIMULATION_WINER, s_getSceneVar(cid,0,101))
			s_addValue(SCENE_ENTRY_NPC, npc, VALUE_TYPE_SIMULATION_MASTER, self:GetSimulationNpcVar(cid,i,Npc_Uid))
		end
		s_setSceneVar(cid,0,105,1)
	end
	if cursec >= start + 3*60 - 10 and s_getSceneVar(cid,0,104) == 0 then
		self:OnCopyFinish(cid)
	end
	if self:GetSimulationNpcVar(cid,1,Npc_Type) == 1  then
		s_setSceneVar(cid,0,104,1)
	end
	local finishsec = s_getSceneVar(cid,0,104)
	if finishsec ~= 0 then
		local finishsec=finishsec-1
		s_setSceneVar(cid,0,104,finishsec)
		if finishsec ~= 0 then
			s_copyInfo(cid,"结束倒计时:" .. finishsec)
			return
		else
			local winer = s_getSceneVar(cid,0,101)
			local loser = s_getSceneVar(cid,0,102)
			s_finishSimulation(winer,loser,self:GetSimulationNpcVar(cid,1,Npc_Type))
			local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
			for i = 1,table.getn(list), 2 do
				s_removebuff(SCENE_ENTRY_PLAYER,list[i+1],71)
				s_setSelfHide(SCENE_ENTRY_PLAYER,list[i+1],2)
			end
			s_setSceneVar(cid,0,105,2)
			s_clearCopy(cid)
		end
	end
end
function CopySceneInfo_69:OnCopyFinish(sid)
	s_setSceneVar(sid,0,104,10)
end

------------------------------------------------------------------------------------
