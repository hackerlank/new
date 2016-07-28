--宙斯之力
function OnHoldBuff_31067(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,1000)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,1000)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,1000)
end

--撒旦之力
function OnHoldBuff_31068(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,3000)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,3000)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,3000)
end
