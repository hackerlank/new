--疯狂射击
function OnHoldBuff_20040(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_ATTSPD_ADD_PER,level*100)
end
