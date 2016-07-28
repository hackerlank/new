--矿车攻击血量
Buff31048Data =
{
	{12000, 200}, {12100, 250}, {16800, 300},
	{16900, 400}, {22400, 400}, {22500, 450},
	{35200, 500}, {34000, 600}, {46800, 700}
}

function OnHoldBuff_31048(level,etype,eid)
	if level > #Buff31048Data then
		level = #Buff31048Data
	end
	local curhp = s_getValue(etype, eid, VALUE_TYPE_HP)
	local maxhp = s_getValue(etype, eid, VALUE_TYPE_MAXHP)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT, Buff31048Data[level][2])
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT, Buff31048Data[level][2])
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT, Buff31048Data[level][1]- 1)
	if curhp == 0 or curhp == maxhp then
		s_setValue(etype,eid,VALUE_TYPE_HP, Buff31048Data[level][1])
	end
end
