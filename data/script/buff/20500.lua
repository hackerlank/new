--国战攻击激励
function OnHoldBuff_20500(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,100*level)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,100*level)
end
