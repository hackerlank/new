--眩晕
function OnHoldBuff_50004(level,etype,eid)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_MOVE,1)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_SKILL,1)
--	s_setValue(etype,eid,VALUE_TYPE_UNABLE_ATTACKED,1)
end

