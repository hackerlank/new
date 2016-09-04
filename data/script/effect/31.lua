
--点数增加反弹伤害

function OnHoldEvent_31(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=31,点数增加反弹伤害=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_REBOUND_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_REBOUND_SUB_EXT,math.abs(param1))
	end
end