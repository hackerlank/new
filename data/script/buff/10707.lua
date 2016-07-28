--雷霆万钧攻击减速
function OnHoldBuff_10707(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_ATTSPD_SUB_PER,level*100)
end
