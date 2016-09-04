
--增加法术攻击百分比

function OnHoldEvent_17(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=17,增加法术攻击百分比=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_MDAM_MIN_ADD_PER,param1)
		s_addValue(etype,eid,VALUE_TYPE_MDAM_MAX_ADD_PER,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_MDAM_MIN_SUB_PER,math.abs(param1))
		s_subValue(etype,eid,VALUE_TYPE_MDAM_MAX_SUB_PER,math.abs(param1))
	end
end