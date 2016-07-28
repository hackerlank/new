--腐蚀榴弹
function OnHoldBuff_10318(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,5000)
end

function OnLoopBuffEvent_2Sec_10318(level,etype,eid,time,value)
	local percent = { 3,3.5,4,4.5,5,5.5 }
	local hurt = math.floor(value*percent[level]/100)
	--    s_subValue(etype,eid,VALUE_TYPE_HP,hurt)
	DirectAttack(0,etype,eid,etype,eid,hurt)
end
