
--受到的伤害转为法力消耗

function OnFinallyEvent_63(etype,eid,pid,ptype,damage,param1,param2,param3)
	s_debug("-------------ID=63,受到的伤害转为法力消耗=%d,=%d,=%d,=%d------------------",damage,param1,param2,param3)
	reduceDamageProb = param1/10000
	decSp = damage/(1-reduceDamageProb)*reduceDamageProb*param2/10000
	s_debug("伤害=%d,减伤=%d,扣蓝=%d",damage,reduceDamageProb,decSp)
	local sp = s_getValue(etype,eid,VALUE_TYPE_SP)
	if decSp > sp then
		s_subValue(etype,eid,VALUE_TYPE_SP,sp)
		s_subValue(etype,eid,VALUE_TYPE_HP,decSp-sp)
		s_debug("蓝不足用血代替，扣蓝＝%d,扣血＝%d",sp,decSp-sp)
	else
		s_subValue(etype,eid,VALUE_TYPE_SP,decSp)
	end
end
