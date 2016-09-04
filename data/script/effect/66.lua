
--无法使用道具

function OnHoldEvent_66(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=66,无法使用道具=%d=%d=%d------------------",param1,param2,param3) 
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_CURE,1)
end