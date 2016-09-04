--守卫要塞战旗buff
function OnHoldBuff_20504(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,100*level)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,100*level)
end
