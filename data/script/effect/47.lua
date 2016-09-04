
--增加法力值

function OnAddEvent_47(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=47,增加法力值=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_SP,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_SP,math.abs(param1))
	end
end