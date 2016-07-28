--恐惧
function OnLoopBuffEvent_1Sec_50006(level,etype,eid,time,value)
	local ex = s_getValue(etype,eid,VALUE_TYPE_POSX)
	local ey = s_getValue(etype,eid,VALUE_TYPE_POSY)
	
	local rx = math.random(-3,3)
	local ry = math.random(-3,3)
	s_moveto(eid,0,1,ex+rx,ey_ry)
end
