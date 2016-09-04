
--增加物理伤害吸收点数

function OnHoldEvent_28(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=28,增加物理伤害吸收点数=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_PABS_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_PABS_SUB_EXT,math.abs(param1))
	end
end