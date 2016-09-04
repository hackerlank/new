----粘液袭击
function OnLoopBuffEvent_1Sec_20023(level,etype,eid)
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	s_subValue(etype,eid,VALUE_TYPE_HP,math.floor(maxhp*0.1))
end
