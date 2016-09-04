
--增加治疗效果

function OnHoldEvent_18(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=18,增加治疗效果=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_CURE_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_CURE_SUB_EXT,math.abs(param1))
	end
end