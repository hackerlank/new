--VIP
function OnAddBuffEvent_53(level,etype,eid)
	local num = s_getSmallPackNum(eid)
	if num < 3 then
		s_incSmallPackNum(eid)
		s_sysInfo(userid, "恭喜成为VIP，您获得了额外小包裹位")
	end
end
