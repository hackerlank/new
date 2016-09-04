--小丑的眼泪
function OnHoldBuff_20111(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,5000)
	s_addValue(etype,eid,VALUE_TYPE_ATTSPD_SUB_PER,5000)
end
