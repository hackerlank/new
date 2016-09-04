--团BOSS
RoleTaskInfo33701 = {}
function RoleTaskInfo33701:GetCorpsTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33701)
	--doneNum
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCorpsVar(corps,1,44))
	end
	--totalNum
	table.insert(outvec, CORPS_ACTIVITY_33701)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,2))
end
