
--回复百分比MP值/5秒

function OnLoopEvent_5Sec_37(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=37,回复百分比MP值/5秒=%d=%d=%d------------------",param1,param2,param3) 
	local maxsp = s_getValue(etype,eid,VALUE_TYPE_MAXSP)
	local percent = param1/10000
	local sp = maxsp * percent
	if sp >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_SP,sp)
	else
		s_subValue(etype,eid,VALUE_TYPE_SP,math.abs(sp))
	end
end