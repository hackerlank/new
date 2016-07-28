--磁力场陷阱减速
function OnHoldBuff_10702(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,100*level)
end
