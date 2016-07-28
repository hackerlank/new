RoleTaskInfo30032 = {}
function RoleTaskInfo30032:GetTaskIntroText(uid)
	local msg = [[title(极速狂飙)body(blankline()   每天12：00点以后由各国hot(内务大臣)进行发布。需要两人组队在发布后hot(5分钟内)在goto(60107,3)处报名，报名时间结束后在goto(60107,3)开始竞速。blankline()   完成比赛可以得到一笔hot(可观的经验)。blankline()   传说，男女搭配会带来好运。)]]
	return parseToDesc(msg)
end

function RoleTaskInfo30032:GetTaskDailyInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 30032)
	--dayNum
	table.insert(outvec, 1)
	--dayDoneNum
	local daydonenum = 0
	local lastday = s_getVar(uid, 30032, TvarIndex_Day)
	if lastday == s_getCurTime(TIME_ALLDAYS) then
		daydonenum = 1
	end
	table.insert(outvec, daydonenum)
	--weekNum
	table.insert(outvec, 0)
	--weekDoneNum
	table.insert(outvec, 0)
end
