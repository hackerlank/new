
--无敌斩单(群)体
function OnUseSkill_6003(level,etype1,eid1,etype2,eid2,posx,posy)
	if s_getbuffnum(etype1,eid1,50003) == 0 then
		s_addbuff(etype1,eid1,50003,1,3)
	end
	local luaid = 6003
--	s_debug("--------------------脚本-%d 调用开始----------------",luaid)
	local victim ={}
	local radList = {}
	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)
	local maxdis = 3
	--9屏取敌15个，根据距离循环判断是否在技能范围内，然后结算伤害和人数，最后根据人数是否达到技能上限来判断填出循环
	if posx ~= 0 and posy ~= 0 then
		if s_checkPK(luaid,etype1,eid1,etype2,eid2) == VALUE_OK then
			table.insert(victim,etype2)
			table.insert(victim,eid2)
			table.insert(victim, damage)
			if s_goto(etype1,eid1,posx,posy,enumMoveType_GoTo) ~= VALUE_OK then
				return USE_SKILL_ERROR
			end
			MagicAttack(luaid,VALUE_TYPE_PDAM,etype1,eid1,unpack(victim))
			return
		end
	end
	local list = s_getNineEntry(etype1,eid1,15)
	--先筛选距离
	for i = 1,table.getn(list), 2 do
		if list[i] ~= etype1 or list[i+1] ~= eid1 then
			if s_checkPK(luaid,etype1,eid1,list[i],list[i+1]) == VALUE_OK then
				local lx = s_getValue(list[i],list[i+1],VALUE_TYPE_POSX)
				local ly = s_getValue(list[i],list[i+1],VALUE_TYPE_POSY)

				local px = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
				local py = s_getValue(etype1,eid1,VALUE_TYPE_POSY)

				local dis = math.sqrt((px-lx)^2 + (py-ly)^2)

				if dis <= maxdis then
					table.insert(radList,list[i])
					table.insert(radList,list[i+1])
					table.insert(radList,lx)
					table.insert(radList,ly)
				end
			end
		end
	end
	--再随机
	if table.getn(radList) == 0 then
		return USE_SKILL_ERROR
	end
	local length = table.getn(radList)/4
	local dst = math.random(length)
	table.insert(victim,radList[4*dst-3])
	table.insert(victim,radList[4*dst-2])
	table.insert(victim, damage)
	if s_goto(etype1,eid1,radList[4*dst-1],radList[4*dst],enumMoveType_GoTo) ~= VALUE_OK then
		return USE_SKILL_ERROR
	end

	MagicAttack(luaid,VALUE_TYPE_PDAM,etype1,eid1,unpack(victim))
--	s_debug("--------------------脚本-%d 调用结束----------------",luaid)
end
