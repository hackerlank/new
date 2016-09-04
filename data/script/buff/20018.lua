--恶臭气体
function OnHoldBuff_20018(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_SUB_PER,5000)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_SUB_PER,5000)
end
