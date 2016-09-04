--蝎型兽光环
function OnHoldBuff_2001(level,etype,eid,value)
	local addval = {{50, 60, 70, 85, 100},
		{100,115,130,150,170},
		{180,200,220,250,280},
		{300,330,360,400,440},
		{450,490,530,580,630}}
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,addval[level][value])
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,addval[level][value])
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,addval[level][value])
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,addval[level][value])
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,addval[level][value]*5)
end


