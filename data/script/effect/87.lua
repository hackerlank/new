
--附加仇恨值

function OnAddEvent_87(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=87,附加仇恨值=%d,=%d,=%d------------------",param1,param2,param3)
	if etype == SCENE_ENTRY_NPC then
		local att = s_getValue(ptype,pid,VALUE_TYPE_PDAM)
		local enmity = att*param1/10000+param2
		s_setEnemyEnmity(eid,ptype,pid,enmity)
		s_debug("物攻＝%d,仇恨值=%d",att,enmity)
	end
end
