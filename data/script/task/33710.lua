--击败魔甲BOSS
RoleTaskInfo33710 = {}
function RoleTaskInfo33710:GetCorpsTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33710)
	--doneNum
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCorpsVar(corps,1,53))
	end
	--totalNum
	table.insert(outvec, CORPS_ACTIVITY_33710)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,11))
end
