--虚弱之咒(BOSS)
function OnHoldBuff_20064(level,etype,eid,value)
	local percent = 3000
	if level == 1 then percent = 1000 end
	if level == 2 then percent = 1500 end
	if level == 3 then percent = 2000 end

	s_addValue(etype,eid,VALUE_TYPE_PDAM_SUB_PER,percent)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_SUB_PER,percent)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_SUB_PER,percent)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_SUB_PER,percent)

	s_addValue(etype,eid,VALUE_TYPE_PDAM_SUB_EXT,value)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_SUB_EXT,value)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_SUB_EXT,value)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_SUB_EXT,value)
end

