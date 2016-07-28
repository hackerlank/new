--挑战倒计时
function OnLoopBuffEvent_1Sec_11(level,etype,eid,time,value)
	if etype == SCENE_ENTRY_NPC then
		return
	end
	if time > 1 then
		s_sysInfo(eid,"挑战倒计时:" .. time - 1,ChatPos_Important)
	else
		s_addbuff(etype,eid,12,level,180)
		s_sysInfo(eid,"挑战开始",ChatPos_Important)
	end
end
function OnHoldBuff_11(level,etype,eid)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_CURE,1)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_SKILL,1)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_ATTACKED,1)
end
