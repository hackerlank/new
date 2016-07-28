--举火烧天
function OnLoopBuffEvent_2Sec_10415(level,etype,eid,time,value)
	local hurt = {300,400,500,700,900,1000}
	DirectAttack(0,SCENE_ENTRY_PLAYER,value,etype,eid,hurt[level])
end
