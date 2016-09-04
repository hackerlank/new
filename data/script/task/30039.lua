RoleTaskInfo30039 =
{
}

function RoleTaskInfo30039:GetTaskIntroText(uid)
	local msg = [[title(军战争)body(blankline()  周三与周六20：30-21：00将开启军与军之间的战争。blankline()  获胜的军团将获得更多的hot(军积分),胜利是军生存壮大的基础。)blankline()  hot(只有军长可以报名！)]]

	return parseToDesc(msg)
end
