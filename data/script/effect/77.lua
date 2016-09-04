
--持续暗伤害/1秒

function OnLoopEvent_1Sec_77(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=77,持续暗伤害/1秒=%d=%d=%d------------------",param1,param2,param3)
	--获取暗系伤害
	local darkDamage = (10 + param1)*param2/10000
	s_subValue(etype,eid,VALUE_TYPE_HP,darkDamage)
end
