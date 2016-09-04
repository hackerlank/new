--击败中立区BOSS
RoleTaskInfo33711 = {}
function RoleTaskInfo33711:GetCorpsTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33711)
	--doneNum
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCorpsVar(corps,1,54))
	end
	--totalNum
	table.insert(outvec, CORPS_ACTIVITY_33711)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,12))
end
