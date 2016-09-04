
--无法添加控制buff

function OnHoldEvent_69(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=69,无法添加控制buff=%d=%d=%d------------------",param1,param2,param3) 
	s_setValue(etype,eid,VALUE_TYPE_IGNORE_BUFF,1)
end