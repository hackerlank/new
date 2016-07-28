
--增加冰攻

function OnHoldEvent_13(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=13,增加冰攻=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_BDAM_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_BDAM_SUB_EXT,math.abs(param1))
	end
end