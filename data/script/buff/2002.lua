--炮火支持 团魔甲加攻击
function OnHoldBuff_2002(level,etype,eid,value)
	local defper = {1,1.2,1.4,1.7,2}
	local attadd = { 18,32,48,67,86,104,130,157,185,217,268,309,355,404,457}
	local lv = s_getValue(etype,eid,VALUE_TYPE_LEVEL)
	local result  = attadd[math.floor((lv - 1) / 10 + 1)] * defper[value]
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,result)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,result)
end

