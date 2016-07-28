
--增加伤害加深百分比

function OnHoldEvent_58(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=58,增加伤害加深百分比=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_HARM_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_HARM_SUB_EXT,math.abs(param1))
	end
end