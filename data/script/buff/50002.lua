--加血
function OnLoopBuffEvent_1Sec_50002(level,etype,eid)
	local val_lev = {30,50}
	s_addValue(etype,eid,VALUE_TYPE_HP,val_lev[level])
end
