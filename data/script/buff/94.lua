--首次情报保护
function OnHoldBuff_94(level,etype,eid)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_SKILL,1)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_ATTACKED,1)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_ADD_PER,5000)
end

