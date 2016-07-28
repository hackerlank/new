RoleTaskInfo30033 = {}
function RoleTaskInfo30033:GetTaskIntroText(uid)
	local msg = [[title(要塞守卫)body(blankline()   人类抵抗军为了阻止变异的地底生物不断扩张的实力，在光明城的东南部设立了一座要塞作为战前基地。因此抵御那些变异生物所组成的军团对光明城的骚扰。blankline()   为了攻下这座不可逾越的人类防御屏障。围绕在光明城周围的变异生物开始了新的集结。它们要发起一轮新的总攻了。blankline()   勇士们，握紧你们手中的武器，上好子弹。让这群杂碎尝尝我们的厉害吧。blankline()   想获得hot(升级宝石)么？一起去吧...)]]
	return parseToDesc(msg)
end

function RoleTaskInfo30033:GetTaskDailyInfo(uid, outvec)
	if outvec == nil then return end
	--taskid
	table.insert(outvec, 30033)
	--dayNum
	table.insert(outvec, 3)
	--dayDoneNum
	table.insert(outvec, s_getVar(uid,101,26))
	--weekNum
	table.insert(outvec, 6)
	--weekDoneNum
	table.insert(outvec, s_getVar(uid,101,23))
end
