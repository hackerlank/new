--驯化达人
RoleTaskInfo30008 =
{
	ring = 3,

	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	taskID = 30008,
}
---------------------------------------------------------------------------
function RoleTaskInfo30008:GetTaskIntroText(uid)
	local msg = [[title(驯化达人)body(blankline()   驯化足够多的宠物后去找神秘人米迦勒。blankline()   每天完成次数无限制。blankline()exp(大量))]]
	return parseToDesc(msg)
end
----------------------------------------------------------------------------
function RoleTaskInfo30008:getNumber(uid)
	local var = s_getVar(uid,self.taskID,11) + 1
	return math.floor(3+0.15*var^1.4)
end

function RoleTaskInfo30008:GetSubTaskDescText(uid, taskid, subtaskid)
	s_addTaskVar(uid,self.taskID,1,0)

	local text = nil
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
		text = subinfo.desctext
	end
	if text == nil or text == "" then return end

	local num = RoleTaskInfo30008:getNumber(uid)
	text = string.gsub(text,"$NUM",tostring(num))
	local var = s_getVar(uid,self.taskID,11)
	text = string.gsub(text,"$N",tostring(var+1))
	return text
end

function RoleTaskInfo30008:GetTaskExp(uid)
	local num = s_getVar(uid,self.taskID,11) + 1
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	return math.floor(20*num^0.5*(50+0.1*level^2.2))
end

function RoleTaskInfo30008:checkShow(uid)
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

function RoleTaskInfo30008:start(uid)
	local taskprocess = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if taskprocess == TaskProcess_Doing or taskprocess == TaskProcess_CanDone then
		RoleTaskInfo30008:checkDoing(uid)
	elseif taskprocess == TaskProcess_None then
		local msg = GetSubTaskAcceptText(uid,self.taskID,1)
		local call = "RoleTaskInfo30008:add($1)"
		ShowNpcMenuBottomStyle(uid,msg,"接受(3)",call,"离开(3)")
	end
end

function RoleTaskInfo30008:add(uid)
	local num = RoleTaskInfo30008:getNumber(uid)
	AddRoleSubTask(uid,self.taskID,1,num,0)
end

function RoleTaskInfo30008:checkDoing(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_Doing then
		local msg = [[完成任务再来找我吧]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
	elseif process == TaskProcess_CanDone then
		s_addTaskVar(uid,self.taskID,1,0)
		local msg = GetSubTaskFinishText(uid,self.taskID,1)
		local call = "RoleTaskInfo30008:finish("..uid..")"
		ShowNpcMenuBottomStyle(uid,msg,"确定(3)",call,"离开(3)")
	end
end

function RoleTaskInfo30008:finish(uid)
	FinishRoleTask(uid,self.taskID)
	s_addVar(uid,self.taskID,11,s_getVar(uid,self.taskID,11)+1)
end

function RoleTaskInfo30008:OnGetDemon(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_Doing then
		local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
		if map ~= 100 and map ~= 102 then
			local state = s_getTaskValue(uid,self.taskID,TaskValue_State)
			local operate = s_getTaskValue(uid,self.taskID,TaskValue_Operate)
			if AddRoleTaskOperate(uid,self.taskID,string.format("驯化宠物 %d/%d",operate+1,state)) == VALUE_OK then
				local value = (s_getVar(uid,self.taskID,11)+1)*65536 + s_getTaskValue(uid,self.taskID,TaskValue_Operate)
				s_setField(uid,UserVar_Demon,value)
			end
		end
	end
end

function RoleTaskInfo30008:start1(uid)
	local taskprocess = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if taskprocess == TaskProcess_Doing or taskprocess == TaskProcess_CanDone then
		local msg = [[如果完成达人任务，可以去找神秘人米迦勒]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
	elseif taskprocess == TaskProcess_None then
		local msg = GetSubTaskAcceptText(uid,self.taskID,1)
		local call = "RoleTaskInfo30008:add($1)"
		ShowNpcMenuBottomStyle(uid,msg,"接受(3)",call,"离开(3)")
	end
end

function RoleTaskInfo30008:checkShow1(uid)
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
	return RoleTaskInfo30008:checkShow(uid)
end


RegisterGetDemonEvent("RoleTaskInfo30008:OnGetDemon($1)")
AppendMenuToNpc(60066,"驯化达人(2)","RoleTaskInfo30008:start($1)","RoleTaskInfo30008:checkShow($1)")
