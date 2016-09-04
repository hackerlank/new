
--恐惧

function OnLoopEvent_1Sec_80(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=80,恐惧=%d=%d=%d------------------",param1,param2,param3)
	local ex = s_getValue(etype,eid,VALUE_TYPE_POSX)
	local ey = s_getValue(etype,eid,VALUE_TYPE_POSY)

	local rx = math.random(-3,3)
	local ry = math.random(-3,3)
	s_moveto(eid,0,1,ex+rx,ey+ry)
end
