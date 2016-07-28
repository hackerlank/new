--3vs3无双擂台赛奖励buff
--举世无双
function OnHoldBuff_20388(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,500)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,500)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,500)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,500)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,500)
end

--登峰造极
function OnHoldBuff_20389(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,400)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,400)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,400)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,400)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,400)
end

--技压群雄
function OnHoldBuff_20390(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,300)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,300)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,300)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,300)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,300)
end

--出类拔萃
function OnHoldBuff_20391(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,200)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,200)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,200)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,200)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,200)
end

--擂主
function OnHoldBuff_20392(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,100)
end
