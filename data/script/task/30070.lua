--团养殖
RoleTaskInfo30070 = {}
function RoleTaskInfo30070:GetTaskDailyInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 30070)
	--dayNum
	table.insert(outvec, 10)
	--dayDoneNum
	local daydonenum = 0
	local days = s_getCurTime(TIME_ALLDAYS)
	local last = s_getVar(uid,103,2)
	local daydonenum = s_getVar(uid,103,9)
	if last ~= days then
		daydonenum = 0
	end
	table.insert(outvec, daydonenum)
	--weekNum
	table.insert(outvec, 0)
	--weekDoneNum
	table.insert(outvec, 0)
end
