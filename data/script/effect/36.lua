
--回复百分比HP值/1秒

function OnLoopEvent_1Sec_36(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=36,回复百分比HP值/1秒=%d=%d=%d------------------",param1,param2,param3) 
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	local percent = param1/10000
	local hp = maxhp * percent
	if hp >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_HP,hp)
	else
		s_subValue(etype,eid,VALUE_TYPE_HP,math.abs(hp))
	end
end