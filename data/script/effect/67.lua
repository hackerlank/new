
--无法受到伤害

function OnHoldEvent_67(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=67,无法受到伤害=%d=%d=%d------------------",param1,param2,param3) 
	s_setValue(etype,eid,VALUE_TYPE_FIGHT_GOD,1)
end