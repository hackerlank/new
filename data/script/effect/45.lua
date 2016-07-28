
--增加法力值上限百分比

function OnHoldEvent_45(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=45,增加法力值上限百分比=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_MAXSP_ADD_PER,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_MAXSP_SUB_PER,math.abs(param1))
	end
end