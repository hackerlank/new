--核子魔兽减血buff
function OnLoopBuffEvent_1Min_20523(level,etype,eid)
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	s_subValue(etype,eid,VALUE_TYPE_HP,math.floor(maxhp*4*0.01))
end
