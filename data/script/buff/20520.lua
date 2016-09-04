--防御下降
function OnHoldBuff_20520(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_SUB_PER,level*100)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_SUB_PER,level*100)
end

