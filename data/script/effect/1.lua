
--增加力量点数

function OnHoldEvent_1(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=1,增加力量点数=%d=%d=%d------------------",param1,param2,param3) 
	if param1 >= 0 then
		s_addValue(etype,eid,VALUE_TYPE_LILIANG_ADD_EXT,param1)
	else
		s_subValue(etype,eid,VALUE_TYPE_LILIANG_SUB_EXT,math.abs(param1))
	end
end