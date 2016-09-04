RoleTaskInfo30035 =
{
}

function RoleTaskInfo30035:GetTaskIntroText(uid)
	local msg = [[title(探险者地宫)body(blankline()   幽暗的地宫孕育着各种危险的生物。它们狂暴而嗜血，极端的环境让它们的体内蕴藏有大量的hot(血精石)结晶。)]]
	return parseToDesc(msg)
end

function RoleTaskInfo30035:GetTaskDailyInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 30035)
	--dayNum
	table.insert(outvec, 1)
	--dayDoneNum
	local daydonenum = 0
	local cur_time = s_getCurTime(TIME_ALLSECONDS)
	local last_time = s_getVar(uid,101,9)
	if math.floor(last_time/86400) == math.floor(cur_time/86400) then
		local last = s_getVar(uid,101,10)
		if last >= 60*60 then daydonenum = 1 end
	end
	table.insert(outvec, daydonenum)
	--weekNum
	table.insert(outvec, 0)
	--weekDoneNum
	table.insert(outvec, 0)
end
