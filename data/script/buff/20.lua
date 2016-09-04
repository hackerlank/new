--打倒在地
function OnHoldBuff_20(level,etype,eid)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_MOVE,1)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_SKILL,1)
end
