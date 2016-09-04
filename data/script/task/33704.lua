--团拓展
RoleTaskInfo33704 = {}
function RoleTaskInfo33704:GetCorpsTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33704)
	--doneNum
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCorpsVar(corps,1,47))
	end
	--totalNum
	table.insert(outvec, CORPS_ACTIVITY_33704)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,5))
end
