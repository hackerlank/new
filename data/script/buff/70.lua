--领主BUFF
function OnHoldBuff_70(level,etype,eid)
	local ulevel = s_getValue(etype,eid,VALUE_TYPE_LEVEL)
	ulevel = math.floor((ulevel-1)/10)+1
	if ulevel > 15 then
		ulevel = 15
	end
	local addval = {
		{10,10,72}, {17,17,128}, {26,26,192}, {35,35,268}, {46,46,344},
		{55,55,416}, {69,69,520}, {83,83,628}, {98,98,740}, {115,115,868},
		{142,142,1072}, {162,162,1236}, {189,189,1420}, {215,215,1616}, {243,243,1828},
	}
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,addval[ulevel][1])
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,addval[ulevel][1])
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,addval[ulevel][2])
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,addval[ulevel][2])
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,addval[ulevel][3])
end

