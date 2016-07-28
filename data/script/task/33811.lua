--破坏国家水晶兽
RoleTaskInfo33811 = {}
function RoleTaskInfo33811:GetCountryTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33811)
	--doneNum
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == nil or homeland == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCountryVar(homeland,12,12))
	end
	--totalNum
	table.insert(outvec, COUNTRY_ACTIVITY_33811)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,24))
end
