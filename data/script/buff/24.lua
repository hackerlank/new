-- 圣甲
function OnHoldBuff_24(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,50)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,50)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,1000)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,1000)
end

