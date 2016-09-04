--救赎启示
function OnLoopBuffEvent_2Sec_10606(level,etype,eid)
	local percent = {40,45,50,55,60,65}
	local addhp = {1500,2500,4000,5500,7500,10000}
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	local jingshen = s_getValue(etype,eid,VALUE_TYPE_JINGSHEN)
	local value = maxhp * 0.001 * percent[level] + addhp[level] * (100 + jingshen*0.5)/100
	s_addValue(etype,eid,VALUE_TYPE_HP,value)
end
