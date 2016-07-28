--公主徽章BUFF
function OnHoldBuff_20238(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,200)
end
