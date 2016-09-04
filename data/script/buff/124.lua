--越挫越勇buf
function OnHoldBuff_124(level,etype,eid)
	if level > 30 then
		return
	end
	--s_debugUser(eid,"越挫越勇" .. level)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,level * 1000)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,level * 1000)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,level * 1000)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,level * 1000)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,level * 1000)
end
