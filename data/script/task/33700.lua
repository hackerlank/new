--团训练
RoleTaskInfo33700 = {}
function RoleTaskInfo33700:GetCorpsTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33700)
	--doneNum
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCorpsVar(corps,1,43))
	end
	--totalNum
	table.insert(outvec, CORPS_ACTIVITY_33700)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,1))
end
