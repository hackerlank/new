--团突袭
RoleTaskInfo33703 = {}
function RoleTaskInfo33703:GetCorpsTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33703)
	--doneNum
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCorpsVar(corps,1,46))
	end
	--totalNum
	table.insert(outvec, CORPS_ACTIVITY_33703)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,4))
end
