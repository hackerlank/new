
--增加电攻

function OnHoldEvent_14(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=14,增加电攻=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_LDAM_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_LDAM_SUB_EXT,math.abs(param1))
	end
end