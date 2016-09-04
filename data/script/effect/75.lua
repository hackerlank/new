
--持续冰伤害/1秒

function OnLoopEvent_1Sec_75(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=75,持续冰伤害/1秒=%d=%d=%d------------------",param1,param2,param3) 
	local iceDamage = (10 + param1)*param2/10000
	s_subValue(etype,eid,VALUE_TYPE_HP,iceDamage)
end