--英灵引导
RoleTaskInfo30075 = {}
function RoleTaskInfo30075:GetTaskDailyInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 30075)
	--dayNum
	table.insert(outvec, 3)
	--dayDoneNum
	local daydonenum = 0
	local day = s_getVar(uid,116, 5)
	local today = s_getCurTime(TIME_ALLDAYS)
	local times = s_getVar(uid,116, 6)
	if day ~= 0 and day ~= today then
		daydonenum = 0
	else
		daydonenum = times
	end
	table.insert(outvec, daydonenum)
	--weekNum
	table.insert(outvec, 0)
	--weekDoneNum
	table.insert(outvec, 0)
end
