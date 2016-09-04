--一骑绝尘
function OnHoldBuff_20286(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,100)
end

--大杀四方
function OnHoldBuff_20287(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,300)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,300)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,300)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,300)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,300)
end

--名扬四海
function OnHoldBuff_20288(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,500)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,500)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,500)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,500)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,500)
end

--独孤求败
function OnHoldBuff_20289(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,800)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,800)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,800)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,800)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,800)
end
