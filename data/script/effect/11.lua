
--增加法术致命一击概率

function OnHoldEvent_11(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=11,增加法术致命一击概率=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_MLUCKY_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_MLUCKY_SUB_EXT,math.abs(param1))
	end
end