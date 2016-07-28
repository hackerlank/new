--反射盾
function OnHoldBuff_20362(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_RDAM_REFLECT,100*level)
	s_addValue(etype,eid,VALUE_TYPE_NDAM_REFLECT,100*level)
end
