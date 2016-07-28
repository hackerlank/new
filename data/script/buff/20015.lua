--火焰之盾
function OnHoldBuff_20015(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_RDAM_REFLECT,level * 100)
end
