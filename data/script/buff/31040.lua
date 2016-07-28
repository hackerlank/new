--特抗药剂
function OnHoldBuff_31040(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_LDEF,level)
	s_addValue(etype,eid,VALUE_TYPE_HDEF,level)
	s_addValue(etype,eid,VALUE_TYPE_BDEF,level)
	s_addValue(etype,eid,VALUE_TYPE_WDEF,level)
end
