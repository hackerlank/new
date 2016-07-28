
function OnUseSkill_10004(level,etype1,eid1,etype2,eid2)
	if etype1 == etype2 and eid1 == eid2 then
		return USE_SKILL_ERROR
	end
	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)
	local value = damage
	MagicAttack(10004,VALUE_TYPE_PDAM,etype1,eid1,etype2,eid2,value)
end
