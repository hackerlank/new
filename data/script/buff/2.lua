--GM专用BUFF
function OnHoldBuff_2(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_HIDE,10000);
	s_addValue(etype,eid,VALUE_TYPE_SPEED_ADD_PER,10000)

	s_setValue(etype,eid,VALUE_TYPE_UNABLE_SKILL,1)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_ATTACKED,1)
end
