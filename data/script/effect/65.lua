
--无法使用技能

function OnHoldEvent_65(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=65,无法使用技能=%d=%d=%d------------------",param1,param2,param3)
	if etype == SCENE_ENTRY_NPC then
		s_debug("是否有嘲讽buff=%d",s_getbufflevel(etype,eid,50001))
		if s_getbufflevel(etype,eid,50001) > 0 then
			return
		end
	end
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_SKILL,1)
end
