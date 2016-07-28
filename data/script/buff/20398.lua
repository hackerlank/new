--万王之王buff
function OnHoldBuff_20398(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_FORCE,400)
	s_addValue(etype,eid,VALUE_TYPE_LUCKY,400)
	s_addValue(etype,eid,VALUE_TYPE_IGNOREDEF,400)
end

