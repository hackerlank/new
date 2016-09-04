--袭击要人警护
RoleTaskInfo33708 = {}
function RoleTaskInfo33708:GetCorpsTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33708)
	--doneNum
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCorpsVar(corps,1,51))
	end
	--totalNum
	table.insert(outvec, CORPS_ACTIVITY_33708)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,9))
end
