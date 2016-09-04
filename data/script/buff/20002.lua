--攻击加速
function OnHoldBuff_20002(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,2000)
	s_addValue(etype,eid,VALUE_TYPE_ATTSPD_ADD_PER,3000)
end
