
--增加物理致命一击概率

function OnHoldEvent_10(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=10,增加物理致命一击概率=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_LUCKY_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_LUCKY_SUB_EXT,math.abs(param1))
	end
end