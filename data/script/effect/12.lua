
--增加火攻

function OnHoldEvent_12(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=12,增加火攻=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_HDAM_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_HDAM_SUB_EXT,math.abs(param1))
	end
end