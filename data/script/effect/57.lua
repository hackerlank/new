
--增加移动速度百分比

function OnHoldEvent_57(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=57,增加移动速度百分比=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_SPEED_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_SPEED_SUB_EXT,math.abs(param1))
	end
end