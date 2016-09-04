-- 团BUFF

function  HoldCorpsAddBuffFunction(level, etype, eid)
	--[[
	local addval = {
	{30,30,150}, {65,65,325}, {100,100,420}, {135,135,550}, {170,170,700},
	{205,205,875}, {240,240,1075}, {275,275,1300}, {310,310,1550}, {370,370,1850}
	}
	]]
	local corps = s_getCorpsId(eid)
	local pdamext = 0
	local mdamext = 0
	local pdefext = 0
	local mdefext = 0
	local maxhpext = 0
	local itemnum = s_getCorpsVar(corps,110,3)
	for i=1,itemnum do
		pdamext = pdamext + s_getCorpsVar(corps,109,3+(i-1)*100)
		mdamext = mdamext + s_getCorpsVar(corps,109,4+(i-1)*100)
		pdefext = pdefext + s_getCorpsVar(corps,109,5+(i-1)*100)
		mdefext = mdefext + s_getCorpsVar(corps,109,6+(i-1)*100)
		maxhpext = maxhpext + s_getCorpsVar(corps,109,7+(i-1)*100)
	end
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,pdamext)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,mdamext)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,pdefext)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,mdefext)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,maxhpext)
end

function OnHoldBuff_59(level,etype,eid)
	HoldCorpsAddBuffFunction(1,etype,eid)
end

function OnHoldBuff_60(level,etype,eid)
	HoldCorpsAddBuffFunction(2,etype,eid)
end

function OnHoldBuff_61(level,etype,eid)
	HoldCorpsAddBuffFunction(3,etype,eid)
end

function OnHoldBuff_62(level,etype,eid)
	HoldCorpsAddBuffFunction(4,etype,eid)
end

function OnHoldBuff_63(level,etype,eid)
	HoldCorpsAddBuffFunction(5,etype,eid)
end

function OnHoldBuff_64(level,etype,eid)
	HoldCorpsAddBuffFunction(6,etype,eid)
end

function OnHoldBuff_65(level,etype,eid)
	HoldCorpsAddBuffFunction(7,etype,eid)
end

function OnHoldBuff_66(level,etype,eid)
	HoldCorpsAddBuffFunction(8,etype,eid)
end

function OnHoldBuff_67(level,etype,eid)
	HoldCorpsAddBuffFunction(9,etype,eid)
end

function OnHoldBuff_68(level,etype,eid)
	HoldCorpsAddBuffFunction(10,etype,eid)
end
