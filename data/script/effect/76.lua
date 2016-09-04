
--持续电伤害/1秒

function OnLoopEvent_1Sec_76(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=76,持续电伤害/1秒=%d=%d=%d------------------",param1,param2,param3)
	--获取电系伤害
	local elecDamage = (10 + param1)*param2/10000
	s_subValue(etype,eid,VALUE_TYPE_HP,elecDamage)
end
