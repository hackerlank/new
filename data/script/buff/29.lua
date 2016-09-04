--防御设置
function OnHoldBuff_29(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_BASE,level)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_BASE,level)
end
