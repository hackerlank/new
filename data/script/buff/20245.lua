--伤害减免
function OnHoldBuff_20245(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_SUBPH,2000)
	s_addValue(etype,eid,VALUE_TYPE_SUBMH,2000)
end
