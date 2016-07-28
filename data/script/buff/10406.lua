--定时炸弹
function OnRemoveBuffEvent_10406(level,etype,eid,time,value)
	local damage = { 300,400,550,800,1300,2000,3000,4500,6000,7500,9000}

	if value ~= 0 then	--玩家释放
		if s_getTrafficType(eid) == TrafficType_InHorse then
			s_resetTrafficType(eid)
	end
	if s_getTrafficType(eid) == TrafficType_Horse then
		s_resetTrafficType(eid)
	end
	s_addbuff(etype,eid,1016,1,5)
	DirectAttack(0,SCENE_ENTRY_PLAYER,value,etype,eid,damage[level])
	end
end



