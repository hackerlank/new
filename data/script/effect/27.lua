
--增加法术防御百分比

function OnHoldEvent_27(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=27,增加法术防御百分比=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_MDEF_MIN_ADD_PER,param1)
		s_addValue(etype,eid,VALUE_TYPE_MDEF_MAX_ADD_PER,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_MDEF_MIN_SUB_PER,math.abs(param1))
		s_subValue(etype,eid,VALUE_TYPE_MDEF_MAX_SUB_PER,math.abs(param1))
	end
end