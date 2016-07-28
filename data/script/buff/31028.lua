--生活技能加生命上限
function OnHoldBuff_31028(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,600)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,1000)
end
