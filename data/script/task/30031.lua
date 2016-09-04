--黑市收购
RoleTaskInfo30031 = {}
function RoleTaskInfo30031:GetTaskDailyInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 30031)
	--dayNum
	table.insert(outvec, 10)
	--dayDoneNum
	local daydonenum = 10 - NpcMenuInfo60105:getSellNum(uid)
	table.insert(outvec, daydonenum)
	--weekNum
	table.insert(outvec, 0)
	--weekDoneNum
	table.insert(outvec, 0)
end
