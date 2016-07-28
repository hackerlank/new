RoleTaskInfo30040 =
{
}
function RoleTaskInfo30040:GetTaskIntroText(uid)
	local msg = [[title(国王抢夺战)body(blankline()   每周六23：00-24：00将开启hot(国王)抢夺战。blankline()   想成为国王，就来战斗吧。)]]

	return parseToDesc(msg)
end
