--金钟护体
function OnUseSkill_6008(level,etype1,eid1,etype2,eid2)
	if etype1 == etype2 and eid1 == eid2 then
		return USE_SKILL_ERROR
	end
	local buff_lev = {1,2,2,2,2}
	local buff_time = {30,60,60,60,60}
	--减伤
	if s_getbufflevel(50005) < buff_lev[level] then
		s_removebuff(etype2,eid2,50005)
	end
	s_addbuff(type2,eid2,50005,buff_lev[level],buff_time[level])
end
