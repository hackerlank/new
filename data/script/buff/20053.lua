--怒吼黄沙
function OnHoldBuff_20053(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,5000)
	s_addValue(etype,eid,VALUE_TYPE_ATTSPD_SUB_PER,10000)
end
