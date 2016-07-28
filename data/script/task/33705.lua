--颁发团奖金
RoleTaskInfo33705 = {}
function RoleTaskInfo33705:GetCorpsTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33705)
	--doneNum
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCorpsVar(corps,1,48))
	end
	--totalNum
	table.insert(outvec, CORPS_ACTIVITY_33705)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,6))
end
