--国战攻击激励
function OnHoldBuff_20241(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,1000)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,1000)
end
