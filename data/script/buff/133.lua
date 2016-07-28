--NPC闪避
function  OnHoldBuff_133(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_HIDE,level*100)
end
