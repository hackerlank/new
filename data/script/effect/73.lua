
--持续物理伤害/1秒

function OnLoopEvent_1Sec_73(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=73,持续物理伤害/1秒=%d=%d=%d------------------",param1,param2,param3) 
	local physicsDamage = (10 + param1)*param2/10000
	s_subValue(etype,eid,VALUE_TYPE_HP,physicsDamage)
end