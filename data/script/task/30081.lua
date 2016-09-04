--坐骑碎片
RoleTaskInfo30081 = {}
function RoleTaskInfo30081:GetTaskDailyInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 30081)
	--dayNum
	table.insert(outvec, 1)
	--dayDoneNum
	local daydonenum = GetTaskDayDoneNum(uid, 30099) + GetTaskDayDoneNum(uid, 30100) + GetTaskDayDoneNum(uid, 30101)
	table.insert(outvec, daydonenum)
	--weekNum
	table.insert(outvec, 0)
	--weekDoneNum
	table.insert(outvec, 0)
end
