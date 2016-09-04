--熔岩附体
function OnHoldBuff_10413(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SUBPH,10000)
	s_addValue(etype,eid,VALUE_TYPE_SUBMH,10000)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_SKILL,1)
end
