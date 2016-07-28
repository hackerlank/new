--黑暗治愈术
function OnLoopBuffEvent_1Sec_20216(level,etype,eid,time,value)
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	s_addValue(etype,eid,VALUE_TYPE_HP,maxhp * 0.01)
end
