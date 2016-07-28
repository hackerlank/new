
--持续火伤害/1秒

function OnLoopEvent_1Sec_74(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=74,持续火伤害/1秒=%d=%d=%d------------------",param1,param2,param3) 
	local FireDamage = (10 + param1)*param2/10000
	s_subValue(etype,eid,VALUE_TYPE_HP,FireDamage)
end