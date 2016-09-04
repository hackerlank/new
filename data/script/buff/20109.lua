--扑克回血
function OnLoopBuffEvent_10Sec_20109(level, etype, eid)
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	if maxhp * 0.02 ~= 0 then
		s_addValue(etype,eid,VALUE_TYPE_HP,maxhp*0.02)
	end
end
