--强力腐蚀咒语
function OnHoldBuff_20047(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_SUB_PER,level*100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_SUB_PER,level*100)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_SUB_PER,level*100)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_SUB_PER,level*100)
end
