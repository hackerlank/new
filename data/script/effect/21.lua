
--增加冰防

function OnHoldEvent_21(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=21,增加冰防=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_BDEF_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_BDEF_SUB_EXT,math.abs(param1))
	end
end