--国战防御激励
function OnHoldBuff_20242(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,1000)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,1000)
end
