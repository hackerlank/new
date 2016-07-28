--羞辱
function OnUseSkill_6004(level,etype1,eid1,etype2,eid2)
--	s_debug("调用脚本6004,level=%d,etype1=%d,eid1=%d,etype2=%d,eid2=%d",level,etype1,eid1,etype2,eid2)
	if etype1 == etype2 and eid1 == eid2 then
		return USE_SKILL_ERROR
	end
	local buff_lev = {1,2,2,2,2}
	local buff_time = {3,60,60,60,60}
	--嘲讽
	if s_getbufflevel(50001) <= buff_lev[level] then
		s_removebuff(etype2,eid2,50001)
		s_addbuff(etype2,eid2,50001,buff_lev[level],buff_time[level],eid1)
	end
	--	s_setValue(etype,eid2,VALUE_TYPE_UNABLE_SKILL,1)
	
	if etype2 == SCENE_ENTRY_NPC then
		s_setEnemyEnmity(eid2,etype1,eid1,10000)
	end
--	s_debug("level=%d,time=%d",buff_lev[level],buff_time[level])
end
