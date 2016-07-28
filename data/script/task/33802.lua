--国家远征
RoleTaskInfo33802 = {}
function RoleTaskInfo33802:GetCountryTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33802)
	--doneNum
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == nil or homeland == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCountryVar(homeland,12,3))
	end
	--totalNum
	table.insert(outvec, COUNTRY_ACTIVITY_33802)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,15))
end
