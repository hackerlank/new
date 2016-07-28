--中立BOSS
RoleTaskInfo33816 = {}
function RoleTaskInfo33816:GetCountryTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33816)
	--doneNum
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == nil or homeland == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCountryVar(homeland,12,17))
	end
	--totalNum
	table.insert(outvec, COUNTRY_ACTIVITY_33816)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,29))
end
