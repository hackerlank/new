--袭击敌国速递车
RoleTaskInfo33812 = {}
function RoleTaskInfo33812:GetCountryTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33812)
	--doneNum
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == nil or homeland == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCountryVar(homeland,12,13))
	end
	--totalNum
	table.insert(outvec, COUNTRY_ACTIVITY_33812)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,25))
end
