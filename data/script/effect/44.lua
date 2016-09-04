
--增加法力值上限

function OnHoldEvent_44(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=44,增加法力值上限=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_MAXSP_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_MAXSP_SUB_EXT,math.abs(param1))
	end
end