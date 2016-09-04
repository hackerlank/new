--重击
function OnHoldBuff_160(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_FORCE,level)
end
--致命
function OnHoldBuff_161(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_LUCKY,level)
end
--忽视
function OnHoldBuff_162(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_IGNOREDEF,level)
end
--反伤
function OnHoldBuff_163(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_HURTECHO,level)
end
--闪避
function OnHoldBuff_164(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_HIDE,level)
end
--物减
function OnHoldBuff_165(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SUBPH,level)
end
--魔减
function OnHoldBuff_166(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SUBMH,level)
end
