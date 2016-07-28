--火焰伤痕
function OnLoopBuffEvent_2Sec_20009(level,etype,eid,time,value)
	local hpvalue = s_getValue(etype, eid, VALUE_TYPE_MAXHP)
	if hpvalue ~= 0 then
		hpvalue = math.floor((hpvalue * level)/100)
		if hpvalue > value then hpvalue = value end
		if hpvalue == 0 then hpvalue = 1 end
		s_subValue(etype, eid, VALUE_TYPE_HP, hpvalue)
	end
end
