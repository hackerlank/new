--精神侵害
function OnLoopBuffEvent_1Sec_20020(level,etype,eid)
	local maxsp = s_getValue(etype,eid,VALUE_TYPE_MAXSP)
	s_subValue(etype,eid,VALUE_TYPE_SP,maxsp*0.1)
end
