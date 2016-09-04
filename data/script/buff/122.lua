--国战开始进攻方增益buff
function OnHoldBuff_122(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,1500)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,1500)
end
