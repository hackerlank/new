--国家舞会
RoleTaskInfo33800 = {}
function RoleTaskInfo33800:GetCountryTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33800)
	--doneNum
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == nil or homeland == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCountryVar(homeland,12,1))
	end
	--totalNum
	table.insert(outvec, COUNTRY_ACTIVITY_33800)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,13))
end
