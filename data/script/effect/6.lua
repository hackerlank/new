
--增加物理攻击

function OnHoldEvent_6(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=6,增加物理攻击=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_PDAM_MIN_ADD_EXT,param1)
		s_addValue(etype,eid,VALUE_TYPE_PDAM_MAX_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_PDAM_MIN_SUB_EXT,math.abs(param1))
		s_subValue(etype,eid,VALUE_TYPE_PDAM_MAX_SUB_EXT,math.abs(param1))
	end
end