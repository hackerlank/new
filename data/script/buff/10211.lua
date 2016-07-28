--战术隐蔽
function OnHoldBuff_10211(level,etype,eid,value)
	if value == 10609 then	--集体隐身
		return
	elseif value == 10511 then --空间瞬移
		return
	elseif value == 7103 then
		return
	elseif value == 10211 then	--战术隐蔽
		local percent = {50,45,40,35,30}
		s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,percent[level]*100)
	end
end
function OnLoopBuffEvent_2Sec_10211(level,etype,eid,time,value)
	if value == 7103 then
		local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
		s_addValue(etype,eid,VALUE_TYPE_HP,maxhp * 0.01)
	end
end
