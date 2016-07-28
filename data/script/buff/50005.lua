--减伤
function OnHoldBuff_50005(level,etype,eid)
	local val_lev = {3000,50000}
	s_addValue(etype,eid,VALUE_TYPE_SUBPH,val_lev[level])
	s_addValue(etype,eid,VALUE_TYPE_SUBMH,val_lev[level])
end
