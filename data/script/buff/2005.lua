--王者之威
KingAuraData =
{
	--低等级，高等级，攻击，防御，生命
	{1,     10,		18,		18,		135},
	{11,    20,		30,		30,		240},
	{21,    30,		48,		48,		360},
	{31,    40,		66,		66,		500},
	{41,    50,		85,		85,		645},
	{51,    60,		104,	104,	780},
	{61,    70,		129,	129,	980},
	{71,    80,		156,	156,	1180},
	{81,    90,		185,	185,	1390},
	{91,    100,	216,	216,	1630},
	{101,   110,	267,	267,	2010},
	{111,   120,	305,	305,	2320},
	{121,   130,	354,	354,	2660},
	{131,   140,	404,	404,	3030},
	{141,   150,	456,	456,	3430},
}
function OnHoldBuff_2005(level,etype,eid,value)
	local ulevel = s_getValue(etype,eid,VALUE_TYPE_LEVEL)
	local homeland = s_getValue(etype,eid,VALUE_TYPE_HOMELAND)
	local countrystate = s_getCountryState(homeland)
	local modulus = 1
	if countrystate == CountryStateNormal then
		modulus = 1.5
	elseif countrystate == CountryStateWeak then
		modulus = 2
	elseif countrystate == CountryStateStrong then
		modulus = 1
	end
	for i = 1, table.getn(KingAuraData) do
		if ulevel >= KingAuraData[i][1] and ulevel <= KingAuraData[i][2] then
			s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,KingAuraData[i][3]*modulus)
			s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,KingAuraData[i][3]*modulus)
			s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,KingAuraData[i][4]*modulus)
			s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,KingAuraData[i][4]*modulus)
			s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,KingAuraData[i][5]*modulus)
			break
		end
	end
end
