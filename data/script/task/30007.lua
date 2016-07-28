--鉴定达人
RoleTaskInfo30007 =
{
	ring = 3,

	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	taskID = 30007,
}


--------------------------------------------------------------------------------
function RoleTaskInfo30007:GetTaskIntroText(uid)
	local msg = [[title(鉴定达人)body(blankline()   鉴定足够多的装备，去找goto(60066,3)。blankline()   每天完成次数无限制。blankline()exp(大量))]]
	return parseToDesc(msg)
end

----------------------------------------------------------------------------------
function RoleTaskInfo30007:getNumber(uid)
	local var = s_getVar(uid,self.taskID,11)
	return math.floor(7 + 3.5*(var+1))
end

function RoleTaskInfo30007:GetSubTaskDescText(uid, taskid, subtaskid)
	local text = nil
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
		text = subinfo.desctext
	end
	if text == nil or text == "" then return end

	local num = RoleTaskInfo30007:getNumber(uid)
	text = string.gsub(text,"$NUM",tostring(num))
	local var = s_getVar(uid,self.taskID,11)
	text = string.gsub(text,"$N",tostring(var+1))
	local minlevel = s_getTaskVar(uid,self.taskID,11)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level <= 60 then
		minlevel = 20
	end
	if minlevel == 0 then
		minlevel = 1
		if level > 10 then
			if level <= 60 then
				minlevel = 20
			else
				minlevel = level - 10
			end
		end
		s_addTaskVar(uid,self.taskID,11,minlevel)
	end
	text = string.gsub(text,"$MINLEVEL",minlevel)
	s_addTaskVar(uid,self.taskID,1,0)
	return text
end

function RoleTaskInfo30007:GetTaskExp(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local var = s_getVar(uid,self.taskID,11) + 1
	return math.floor(15*var^0.5*(50+0.1*level^2.2))
end

function RoleTaskInfo30007:checkShow(uid)
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

	if CheckRoundAndRing(uid, self.taskID) == VALUE_FAIL then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30007:start(uid)
	local taskprocess = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if taskprocess == TaskProcess_Doing or taskprocess == TaskProcess_CanDone then
		RoleTaskInfo30007:checkDoing(uid)
	elseif taskprocess == TaskProcess_None then
		local msg = GetSubTaskAcceptText(uid,self.taskID, 1)
		local call = "RoleTaskInfo30007:add($1)"
		ShowNpcMenuBottomStyle(uid,msg,"接受(3)",call,"离开(3)")
	end
end

function RoleTaskInfo30007:add(uid)
	local num = RoleTaskInfo30007:getNumber(uid)
	AddRoleSubTask(uid,self.taskID,1,num,0)
end

function RoleTaskInfo30007:checkDoing(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_Doing then
		local msg = [[完成任务再来找我吧]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
	elseif process == TaskProcess_CanDone then
		s_addTaskVar(uid,self.taskID,1,0)
		local msg = GetSubTaskFinishText(uid,self.taskID, 1)
		local call = "RoleTaskInfo30007:finish("..uid..")"
		ShowNpcMenuBottomStyle(uid,msg,"确定(3)",call,"离开(3)")
	end
end

function RoleTaskInfo30007:finish(uid)
	FinishRoleTask(uid,self.taskID)
	s_addVar(uid,self.taskID,11,s_getVar(uid,self.taskID,11)+1)
end

function RoleTaskInfo30007:AddOperate(uid,itemlevel)
	local minlevel = s_getTaskVar(uid,self.taskID,11)
	if itemlevel >= minlevel then
		if AddRoleTaskOperate(uid,self.taskID) == VALUE_OK then
			--更新排行榜信息
			local value = (s_getVar(uid,self.taskID,11)+1)*65536 + s_getTaskValue(uid,self.taskID,TaskValue_Operate)
			s_setField(uid,UserVar_Judge,value)
		end
	end
end

function RoleTaskInfo30007:start1(uid)
	local taskprocess = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if taskprocess == TaskProcess_Doing or taskprocess == TaskProcess_CanDone then
		local msg = [[如果完成达人任务，可以去找神秘人米迦勒]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
	elseif taskprocess == TaskProcess_None then
		local msg = GetSubTaskAcceptText(uid,self.taskID, 1)
		local call = "RoleTaskInfo30007:add($1)"
		ShowNpcMenuBottomStyle(uid,msg,"接受(3)",call,"离开(3)")
	end
end

function RoleTaskInfo30007:checkShow1(uid)
	--[[
	local taskprocess = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if taskprocess ~= TaskProcess_None then
	return VALUE_FAIL
	end
	]]
	local var = s_getVar(uid,self.taskID,11)
	if var ~= 0 then
		return VALUE_FAIL
	end
	return RoleTaskInfo30007:checkShow(uid)
end

AppendMenuToNpc(60066,"鉴定达人(2)","RoleTaskInfo30007:start($1)","RoleTaskInfo30007:checkShow($1)")
--AppendMenuToNpc(60007,"鉴定达人(2)","RoleTaskInfo30007:start1($1)","RoleTaskInfo30007:checkShow1($1)")
