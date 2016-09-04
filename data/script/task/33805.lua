--击败魔神将军
RoleTaskInfo33805 = {}
function RoleTaskInfo33805:GetCountryTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33805)
	--doneNum
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == nil or homeland == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCountryVar(homeland,12,6))
	end
	--totalNum
	table.insert(outvec, COUNTRY_ACTIVITY_33805)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,18))
end
