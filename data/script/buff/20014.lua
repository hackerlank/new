--火焰冲击波
function OnLoopBuffEvent_1Sec_20014(level, etype, eid)
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	local damage = 0.2 * maxhp
	s_subValue(etype,eid,VALUE_TYPE_HP,damage)
	local curnumber = 0
	local list = s_getNineEntry(etype,eid,1)
	for i = 1,table.getn(list), 2 do
		if list[i] == etype and list[i+1] ~= eid then
			maxhp = s_getValue(list[i],list[i+1],VALUE_TYPE_MAXHP)
			damage = 0.2 * maxhp
			s_subValue(list[i],list[i+1],VALUE_TYPE_HP,damage)
			curnumber = curnumber + 1
			if curnumber >= 10 then
				break
			end
		end
	end
end
