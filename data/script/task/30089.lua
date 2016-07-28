--国外救援
RoleTaskInfo30089 = {}
function RoleTaskInfo30089:GetTaskDailyInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 30089)
	--dayNum
	table.insert(outvec, RoleTaskInfo30089.ring)
	--dayDoneNum
	local daydonenum = GetTaskDayDoneNum(uid, 30406)
	if daydonenum >= 1 then
		daydonenum = 1
	end
	table.insert(outvec, daydonenum)
	--weekNum
	table.insert(outvec, 0)
	--weekDoneNum
	table.insert(outvec, 0)
	AddRoleTaskOperate(uid,16002)
	AddRoleTaskOperate(uid,16009)
end
