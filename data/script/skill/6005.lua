--绝灭斩
function OnUseSkill_6005(level,etype1,eid1,etype2,eid2,posx,posy)

--[[	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)

	local harm_prop = 3*damage
	local aim_hp = s_getValue(etype2,eid2,VALUE_TYPE_HP);
	local aim_maxhp = s_getValue(etype2,eid2,VALUE_TYPE_MAXHP);
	if aim_maxhp*0.3 <= aim_hp then
		MagicAttack(6005,VALUE_TYPE_PDAM,etype1,eid1,etype2,eid2,value,harm_prop)
	else
		MagicAttack(6005,VALUE_TYPE_PDAM,etype1,eid1,etype2,eid2,value)
	end
--]]
	local luaid = 6005
--	s_debug("--------------------脚本-%d 调用开始--------------------",luaid)
	local radius = 3
	local maxnum = 8
	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)
	local radList = s_playerCircleList(etype1,eid1,etype2,eid2,posx,posy,luaid,radius,damage)
	local victim = s_getListNum(radList,maxnum)

	MagicAttack(luaid,VALUE_TYPE_PDAM,etype1,eid1,unpack(victim))
--	s_debug("--------------------脚本-%d 调用结束--------------------",luaid)
end
