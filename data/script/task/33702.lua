--团战
RoleTaskInfo33702 = {}
function RoleTaskInfo33702:GetCorpsTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33702)
	--doneNum
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCorpsVar(corps,1,45))
	end
	--totalNum
	table.insert(outvec, CORPS_ACTIVITY_33702)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,3))
end
