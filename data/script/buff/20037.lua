--强化标记
function OnHoldBuff_20037(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_RDAM_ADD_PER,level*100)
end
