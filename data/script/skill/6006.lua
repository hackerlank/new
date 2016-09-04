--惊天一击
function OnUseSkill_6006(level,etype1,eid1,etype2,eid2,posx,posy)
	local luaid = 6006
--	s_debug("---------------------脚本-%d 调用开始-------------------",luaid)
	local radius = 5
	local angle = 30
	local maxnum = 8
	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)
--	s_debug("damaga=%d",damage)
	local radList = s_playerSectorList(etype1,eid1,etype2,eid2,posx,posy,luaid,radius,angle,damage)
	local victim = s_getTargetListNum(radList,maxnum)

	MagicAttack(luaid,VALUE_TYPE_PDAM,etype1,eid1,unpack(victim))
--	s_debug("---------------------脚本-%d 调用结束-------------------",luaid)
end
