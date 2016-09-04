--命中设置
function OnHoldBuff_28(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PHIT_ADD_BASE,level)
	s_addValue(etype,eid,VALUE_TYPE_MHIT_ADD_BASE,level)
end
