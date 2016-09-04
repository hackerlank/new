
--每杀1个单位概率回复法术点

function OnAddEvent_39(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=39,每杀1个单位概率回复法术点=%d=%d=%d------------------",param1,param2,param3) 
	if math.random(10000) <= param1 then
		s_addValue(etype,eid,VALUE_TYPE_SP,param2)
	end
end