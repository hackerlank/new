
--每次伤害概率增加生命点数

function OnAddEvent_40(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=40,每次伤害概率增加生命点数=%d=%d=%d------------------",param1,param2,param3) 
	if math.random(10000) <= param1 then
		s_addValue(etype,eid,VALUE_TYPE_HP,param2)
	end
end