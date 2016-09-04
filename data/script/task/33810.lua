--击败神迹
RoleTaskInfo33810 = {}
function RoleTaskInfo33810:GetCountryTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33810)
	--doneNum
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == nil or homeland == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCountryVar(homeland,12,11))
	end
	--totalNum
	table.insert(outvec, COUNTRY_ACTIVITY_33810)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,23))
end
