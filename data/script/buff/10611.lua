--变形药水
function OnHoldBuff_10611(level,etype,eid)
	s_setValue(etype,eid,VALUE_TYPE_SPEED,768)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_SKILL,1)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_CURE,1)
end
