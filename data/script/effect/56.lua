
--增加闪避率

function OnHoldEvent_56(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=56,增加闪避率=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_HIDE_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_HIDE_SUB_EXT,math.abs(param1))
	end
end