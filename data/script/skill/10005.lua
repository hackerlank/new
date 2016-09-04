
--人鱼大招,eid1 和 eid2都是自己
--s_registerNpcHpSkill(10005,90)
s_registerNpcTimeSkill(10005,20)
function OnUseSkill_10005(level,etype1,eid1,etype2,eid2,posx,posy)
	local luaid = 10005
--	s_debug("------------------脚本-%d 调用开始--------------------",luaid)
	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)
	local radius = 4
	local maxnum = 8
	--9屏取敌15个，根据距离循环判断是否在技能范围内，然后结算伤害和人数，最后根据人数是否达到技能上限来判断填出循环
	local radList = s_monsterCircleList(etype1,eid1,etype2,eid2,posx,posy,radius,damage)
	local victim = s_getListNum(radList,maxnum)
	
	MagicAttack(luaid,VALUE_TYPE_PDAM,etype1,eid1,unpack(victim))
--	s_debug("------------------脚本-%d 调用结束--------------------",luaid)
end
