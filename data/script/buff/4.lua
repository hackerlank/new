--休息回血
function OnLoopBuffEvent_5Sec_4(level,etype,eid)
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	local hp = s_getValue(etype,eid,VALUE_TYPE_HP)
	if hp < maxhp then
		if hp + 50 < maxhp then
			s_setValue(etype,eid,VALUE_TYPE_HP,hp+50+maxhp*0.02)
		else
			s_setValue(etype,eid,VALUE_TYPE_HP,maxhp)
		end
	end
	local maxsp = s_getValue(etype,eid,VALUE_TYPE_MAXSP)
	local sp = s_getValue(etype,eid,VALUE_TYPE_SP)
	if sp < maxsp then
		if sp + 20 < maxsp then
			s_setValue(etype,eid,VALUE_TYPE_SP,sp+20)
		else
			s_setValue(etype,eid,VALUE_TYPE_SP,maxsp)
		end
	end
end
