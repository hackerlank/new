--伤不起
function OnHoldBuff_144(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,5000)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,5000)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,5000)
end
