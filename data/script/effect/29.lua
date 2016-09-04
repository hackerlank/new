
--增加法术伤害吸收点数

function OnHoldEvent_29(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=29,增加法术伤害吸收点数=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_MABS_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_MABS_SUB_EXT,math.abs(param1))
	end
end