
--增加智力点数百分比

function OnHoldEvent_52(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=52,增加智力点数百分比=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_ZHILI_ADD_PER,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_ZHILI_SUB_PER,math.abs(param1))
	end
end