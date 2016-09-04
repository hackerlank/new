--寒光斩
function OnUseSkill_10000(level,etype1,eid1,etype2,eid2)
	if etype1 == etype2 and eid1 == eid2 then
		return USE_SKILL_ERROR
	end
	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)
	local value = damage
	MagicAttack(10000,VALUE_TYPE_PDAM,etype1,eid1,etype2,eid2,value)
	s_debug("etype1==%d,eype2==%d",etype1,etype2)
end
