--装甲掩护
function OnHoldBuff_2003(level,etype,eid,value)
	local defper = {1,1.2,1.4,1.7,2}
	local defadd = {18,32,48,67,86,104,130,157,185,217,268,309,355,404,457}
	local lv = s_getValue(etype,eid,VALUE_TYPE_LEVEL)
	local result  = defadd[math.floor((lv -1 ) / 10 + 1)] * defper[value]
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,result)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,result)
end
