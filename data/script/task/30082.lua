--收集情报
RoleTaskInfo30082 = {}
function RoleTaskInfo30082:GetTaskDailyInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 30082)
	--dayNum
	table.insert(outvec, s_getTaskValue(uid,30025,TaskValue_DayNum) or 0)
	--dayDoneNum
	local daydonenum = GetTaskDayDoneNum(uid,30025) + GetTaskDayDoneNum(uid,30055)
	table.insert(outvec, daydonenum)
	--weekNum
	table.insert(outvec, 0)
	--weekDoneNum
	table.insert(outvec, 0)
end
