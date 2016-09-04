--狂扫八方,eid1 和 eid2都是自己
function OnUseSkill_6001(level,etype1,eid1,etype2,eid2,posx,posy)
	local luaid = 6001
--	s_debug("--------------------脚本-%d posx=%d,posy=%d--------------------",luaid,posx,posy)
	local radius = 3
	local maxnum = 8
	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)
	local radList = s_playerCircleList(etype1,eid1,etype2,eid2,posx,posy,luaid,radius,damage)
	local victim = s_getListNum(radList,maxnum)

	MagicAttack(luaid,VALUE_TYPE_PDAM,etype1,eid1,unpack(victim))
--	s_debug("--------------------脚本-%d 调用结束--------------------",luaid)
end
