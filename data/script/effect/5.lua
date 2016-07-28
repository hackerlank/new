
--增加敏捷点数

function OnHoldEvent_5(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=5,增加精神点数=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_MINJIE_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_MINJIE_SUB_EXT,math.abs(param1))
	end
end