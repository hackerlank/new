
--无法添加减益buff

function OnHoldEvent_68(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=68,无法添加减益buff=%d=%d=%d------------------",param1,param2,param3) 
	s_setValue(etype,eid,VALUE_TYPE_IGNORE_BUFF,1)
end