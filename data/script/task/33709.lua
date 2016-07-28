--破坏团雕像
RoleTaskInfo33709 = {}
function RoleTaskInfo33709:GetCorpsTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33709)
	--doneNum
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCorpsVar(corps,1,52))
	end
	--totalNum
	table.insert(outvec, CORPS_ACTIVITY_33709)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,10))
end
