--侠盗罗宾
RoleTaskInfo33813 = {}
function RoleTaskInfo33813:GetCountryTaskWeekInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 33813)
	--doneNum
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == nil or homeland == 0 then
		table.insert(outvec, 0)
	else
		table.insert(outvec,s_getCountryVar(homeland,12,14))
	end
	--totalNum
	table.insert(outvec, COUNTRY_ACTIVITY_33813)
	--joinNum
	table.insert(outvec, s_getVar(uid,130,26))
end
