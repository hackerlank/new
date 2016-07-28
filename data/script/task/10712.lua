RoleTaskInfo10712 =
{
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},
}

function RoleTaskInfo10712:OnAcceptTask(uid)
	AddRoleSubTask(uid, 10712, 1, 1, 0)
	RoleTaskInfo10712:DoFinishTask(uid)
end

function RoleTaskInfo10712:DoFinishTask(uid)
	local msg = GetSubTaskAcceptText(uid,10712,1)
	local func = string.format("RebuildEquipStar($1,$2,$3,$4,%u,%u)",5,10712)
	ShowTaskPack(uid,"强化装备",msg,"强化",func,0)
end

function RebuildEquipStar(uid,baseid,thisid,num,level,taskid)
	local info = rawget(_G,"RoleTaskInfo"..taskid)
	if info == nil then
		return
	end
	if checkEquip(uid,thisid) ~= VALUE_OK then
		s_sysInfo(uid,"非装备无法强化")
		info:DoFinishTask(uid)
		return
	end
	local needlevel = s_getItemBaseValue(baseid,2)
	if needlevel > 60 then
		s_sysInfo(uid,"该装备等级太高")
		info:DoFinishTask(uid)
		return
	end
	if s_getItemValue(uid,thisid,Item_Attribute_Judge) == 0 then
		s_sysInfo(uid,"未鉴定装备不可以强化")
		info:DoFinishTask(uid)
		return
	end
	local star = s_getItemValue(uid,thisid,Item_Attribute_Level)
	if star > 0 then
		s_sysInfo(uid,"已经被强化的装备不可以再强化")
		info:DoFinishTask(uid)
		return
	end
	s_setItemValue(uid,thisid,Item_Attribute_Level,level)
	s_setItemValue(uid,thisid,Item_Attribute_Bind,1)
	s_refreshItem(uid,thisid)
	FinishRoleSubTask(uid,taskid,1)
end


AppendMenuToNpc(113, "[41级]升星奖励(3)%10712", "RoleTaskInfo10712:OnAcceptTask($1)", "CheckSubTaskAcceptShower($1,10712,1)")
AppendMenuToNpc(113, "[41级]升星奖励(3)%10712", "RoleTaskInfo10712:DoFinishTask($1)", "CheckSubTaskFinishShower($1,10712,1)")
