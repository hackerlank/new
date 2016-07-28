--宠物达人
RoleTaskInfo30049 =
{
	ring = 3,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	taskID = 30049,
}
--------------------------------------------------------------------------------
function RoleTaskInfo30049:getDemon(uid)
	local var = s_getVar(uid,self.taskID,12)
	if var == 0 then
		local rand = math.random(1,100)
		if rand <= 35 then
			s_addVar(uid,self.taskID,12,math.random(41001,41006)) --宠物ID
			s_addVar(uid,self.taskID,13,1)	--宠物颜色
			s_addVar(uid,self.taskID,14,1)	--宠物等级
		elseif rand <= 70 then
			s_addVar(uid,self.taskID,12,math.random(41001,41006)) --宠物ID
			s_addVar(uid,self.taskID,13,0)	--宠物颜色
			s_addVar(uid,self.taskID,14,21)	--宠物等级
		elseif rand <= 85 then
			s_addVar(uid,self.taskID,12,math.random(41111,41115)) --宠物ID
			s_addVar(uid,self.taskID,13,0)	--宠物颜色
			s_addVar(uid,self.taskID,14,1)	--宠物等级
		elseif rand <= 95 then
			s_addVar(uid,self.taskID,12,math.random(41111,41115)) --宠物ID
			s_addVar(uid,self.taskID,13,0)	--宠物颜色
			s_addVar(uid,self.taskID,14,21)	--宠物等级
		elseif rand <= 100 then
			s_addVar(uid,self.taskID,12,math.random(41111,41115)) --宠物ID
			s_addVar(uid,self.taskID,13,1)	--宠物颜色
			s_addVar(uid,self.taskID,14,1)	--宠物等级
		end
	end
	local demon = s_getVar(uid,self.taskID,12)
	local quality = s_getVar(uid,self.taskID,13)
	local level = s_getVar(uid,self.taskID,14)
	return demon,quality,level
end

function RoleTaskInfo30049:GetSubTaskDescText(uid,taskid, subtaskid)
	local demon,quality,level = RoleTaskInfo30049:getDemon(uid)
	local text = nil
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
		text = subinfo.desctext
	end
	if text == nil or text == "" then return end
	local var = s_getVar(uid,self.taskID,11)
	text = string.gsub(text,"$N",tostring(var+1))
	local name = s_getNpcBase(demon,1)
	text = string.gsub(text,"$DEMON",name)
	local PZ = {"白色","蓝色","黄色","绿色","紫色"}
	text = string.gsub(text,"$QUALITY",PZ[quality+1])
	text = string.gsub(text,"$LEVEL",level)
	return text
end

function RoleTaskInfo30049:checkShow(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_OK
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minLevel = s_getTaskValue(uid,self.taskID,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,self.taskID,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 30049) == VALUE_FAIL then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30049:start(uid)
	local taskprocess = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if taskprocess == TaskProcess_Doing or taskprocess == TaskProcess_CanDone then
		RoleTaskInfo30049:checkDoing(uid)
	elseif taskprocess == TaskProcess_None then
		local msg = GetSubTaskAcceptText(uid,self.taskID,1)
		local call = "RoleTaskInfo30049:add($1)"
		ShowNpcMenuBottomStyle(uid,msg,"接受(3)",call,"离开(3)")
	end
end

function RoleTaskInfo30049:add(uid)
	AddRoleSubTask(uid,self.taskID,1,1,1)
end

function RoleTaskInfo30049:checkDoing(uid)
	local msg = [[请将收集的宠物放入下面的格子中]]
	local call = "RoleTaskInfo30049:recycMaterial($1,$2,$3,$4)"
	ShowTaskPack(uid,"收集宠物",msg,"确定",call,0,0,0)
end

function RoleTaskInfo30049:recycMaterial(uid,baseid,thisid,num)
	if thisid == 0 or thisid == nil then
		return
	end
	local demon,quality,level = RoleTaskInfo30049:getDemon(uid)
	if needitem ~= baseid then
		s_sysInfo(uid,"这不是我要找的宠物，无法交付",ChatPos_Sys + ChatPos_Important)
		return
	end
	if s_getItemValue(uid,thisid,Item_Attribute_Demon_Level) < level then
		s_sysInfo(uid,"宠物等级不符合要求，无法交付",ChatPos_Sys + ChatPos_Important)
		return
	end
	if s_getItemValue(uid,thisid,Item_Attribute_Quality) < quality then
		s_sysInfo(uid,"宠物品质不符合要求，无法交付",ChatPos_Sys + ChatPos_Important)
		return
	end
	if FinishRoleTask(uid,30049) == VALUE_OK then
		s_deleteItemByThisID(uid,thisid,1 ,"RoleTaskInfo30049")
		s_addVar(uid,self.taskID,11,s_getVar(uid,self.taskID,11)+1)
		s_addMoney(uid,MoneyType_MoneyTicket,200,"RoleTaskInfo30049:finish")
		local RING = {10,25,45,70,100,135,175,220,270,325,385,450,520,595,675,760,850,945,1045,1150,}
		local ring = s_getVar(uid,self.taskID,11)
		for i = 0,table.getn(RING) do
			if ring == RING[i] then --TODO宠物称号
			--s_addTitle(SCENE_ENTRY_PLAYER,uid,100)
			end
		end
		if ring % 50 == 0 then -- 宠物宝箱
			s_addItem(uid,32033,0,1,0,"1-1","宠物达人")
		end
	end
end

--AppendMenuToNpc(60066,"宠物达人(2)","RoleTaskInfo30049:start($1)","RoleTaskInfo30049:checkShow($1)")
