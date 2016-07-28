
--经验倍数

function OnHoldEvent_85(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=85,经验倍数=%d=%d=%d------------------",param1,param2,param3)
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_EXP_ADD_PER,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_EXP_SUB_PER,math.abs(param1))
	end
end