--冰霜
function OnLoopBuffEvent_1Sec_10502(level,etype,eid,time,value)
	if value ~= 0 then
		local hurt = {30,60,120,240,360,540,720,1080,1440,1800,2160}
		DirectAttack(0,SCENE_ENTRY_PLAYER,value,etype,eid,hurt[level])
	end
end

function OnHoldBuff_10502(level,etype,eid)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_MOVE,1)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_ATTACKED,1)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_SKILL,1)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_CURE,1)
end
