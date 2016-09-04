--坐下
function OnUseSkill_5019(level,etype1,eid1,etype2,eid2)
	if s_getbufflevel(etype1,eid1,4) ~= 0 then
		s_removebuff(etype1,eid1,4)
	else
		s_removebuff(etype1,eid1,10100)
		s_removebuff(etype1,eid1,10200)
		s_removebuff(etype1,eid1,10300)
		s_removebuff(etype1,eid1,10400)
		s_removebuff(etype1,eid1,10500)
		s_removebuff(etype1,eid1,10600)
		s_addbuff(etype1,eid1,4,level,5*60)
	end
end
