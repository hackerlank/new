
--增加生命值

function OnAddEvent_46(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=46,增加生命值=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_HP,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_HP,math.abs(param1))
	end
end