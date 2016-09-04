--虚弱之咒(中咒者)
function OnHoldBuff_10712(level,etype,eid,value)
	local percent = { 5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}
	local addition = { 40,50,60,70,85,100,115,150,195,250,320,400,490,590,700,825}

	if etype == SCENE_ENTRY_NPC then
		s_addValue(etype,eid,VALUE_TYPE_ADDPH,500)
		s_addValue(etype,eid,VALUE_TYPE_ADDMH,500)
	end

	if level < 1 or level > 16 then
		s_debug("虚弱之咒level(%d)错误",level)
		return
	end
	local per = 100 * percent[level]
	local add = addition[level] * (100 + value)/100
	s_addValue(etype,eid,VALUE_TYPE_PDAM_SUB_PER,per)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_SUB_PER,per)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_SUB_EXT,add)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_SUB_EXT,add)
end

