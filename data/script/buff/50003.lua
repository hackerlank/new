--无敌 并负面buff免疫
function OnAddBuffEvent_50003(level,etype,eid)
	s_debug("添加buff:50003")
	s_setValue(etype,eid,VALUE_TYPE_FIGHT_GOD,1)
	s_addValue(etype,eid,VALUE_TYPE_IGNORE_BUFF,BUFF_STATE_IGNO)
end

function OnRemoveBuffEvent_50003(level,etype,eid,time,value)
	s_debug("移除buff:50003")
	s_setValue(etype,eid,VALUE_TYPE_FIGHT_GOD,0)
	s_setValue(etype,eid,VALUE_TYPE_IGNORE_BUFF,0)
end
