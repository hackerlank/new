--使用团长召集令
RoleTaskInfo33706 = {}
function RoleTaskInfo33706:GetCorpsTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33706)
	--doneNum
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCorpsVar(corps,1,49))
	end
	--totalNum
	table.insert(outvec, CORPS_ACTIVITY_33706)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,7))
end
