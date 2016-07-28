--影子盾
function OnAddBuffEvent_10216(level,etype, eid)
	local percent = {35,40,45,50,55,60}
	local hp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	value = hp*percent[level]/100
	s_setValue(etype,eid,VALUE_TYPE_ABSORB,value)
end
function OnRemoveBuffEvent_10216(level,etype,eid,time,value)
	s_killnpc(value,1)
	s_setValue(etype,eid,VALUE_TYPE_ABSORB,0)
end
