RoleTaskInfo30036 = {}
function RoleTaskInfo30036:GetTaskIntroText(uid)
	local msg = [[title(核子魔窟)body(blankline()   这里有令人发狂的魔兽，让人绝望的巨型怪物。在30分钟内消灭它们，满载宝物而归，还是望兽兴叹，抱憾而归终。总之，努力战斗吧。blankline()   每天的hot(15：30，21：30)
，核子魔窟将会开启。需要hot(核子通行证)才能进入其中。blankline()   名额有限，量力而为吧。)]]

	return parseToDesc(msg)
end

function RoleTaskInfo30036:GetTaskDailyInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 30036)
	--dayNum
	table.insert(outvec, 1)
	--dayDoneNum
	local daydonenum = 0
	local lastday = s_getVar(uid,102,5)
	if lastday == s_getCurTime(TIME_ALLDAYS) then
		daydonenum = 1
	end
	table.insert(outvec, daydonenum)
	--weekNum
	table.insert(outvec, 0)
	--weekDoneNum
	table.insert(outvec, 0)
end

