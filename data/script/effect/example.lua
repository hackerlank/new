
--增加力量点数
--playerid:施法者ID value:值 最后是3个配置参数
function OnLoopEvent_1Sec_1(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=1,增加力量点数------------------")
	--s_addValue(etype,eid,VALUE_TYPE_LILIANG_ADD_EXT,param1)
	s_addValue(etype,eid,VALUE_TYPE_HP,param1)
	s_debug("[OnLoopEvent_1Sec]---------ID=1,增加血量:%d",param1)
	s_debug("[ceshisceshi]---------表格BuffDataBase:%d",BuffDataBase[1].buffid,BuffDataBase[1].level)
end

function OnHoldEvent_1(etype,eid,pid,ptype,param1,param2,param3)
	s_addValue(etype,eid,VALUE_TYPE_HP,param1)
	s_debug("[OnHoldEvent]-------------ID=1,增加血量:%d",param1)
end

function OnAddEvent_1(etype,eid,pid,ptype,param1,param2,param3)
	s_addValue(etype,eid,VALUE_TYPE_HP,param1)
	s_debug("[OnAddEvent]-------------ID=1,增加血量:%d",param1)
end
