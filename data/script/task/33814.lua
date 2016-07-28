--核子魔窟
RoleTaskInfo33814 = {}
function RoleTaskInfo33814:GetCountryTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33814)
	--doneNum
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == nil or homeland == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCountryVar(homeland,12,15))
	end
	--totalNum
	table.insert(outvec, COUNTRY_ACTIVITY_33814)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,27))
end
