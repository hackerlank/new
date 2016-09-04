--帝都荣耀
DiduGlory =
{
	--人类进程等级，攻击，防御，生命
	--    {0,     0,     0,     0},
	{1,     0,     0,     0},
	{2,     0,     0,     0},
	{3,     0,     0,     0},
	{4,     190,   190,   800},
	{5,     225,   225,   975},
	{6,     260,   260,   1150},
	{7,     295,   295,   1325},
	{8,     330,   330,   1500},
	{9,     365,   365,   1675},
	{10,    425,   425,   1975},
}
function OnHoldBuff_155(level,etype,eid,value)
	local wlevel = s_getWorldLevel()
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,DiduGlory[wlevel][2])
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,DiduGlory[wlevel][2])
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,DiduGlory[wlevel][3])
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,DiduGlory[wlevel][3])
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,DiduGlory[wlevel][4])
end
