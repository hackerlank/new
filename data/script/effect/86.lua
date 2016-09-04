
--持续增加经验值/30秒

function OnLoopEvent_30Sec_86(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=86,持续增加经验值/30秒=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_EXP,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_EXP,math.abs(param1))
	end
end