
--复活玩家

function OnAddEvent_84(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=84,复活玩家=%d=%d=%d------------------",param1,param2,param3)
--	if 复活成功，恢复血蓝 
	s_addValue(etype,eid,VALUE_TYPE_HP,param1)
	s_addValue(etype,eid,VALUE_TYPE_SP,param2)
--  
end
