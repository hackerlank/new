--疾风斩
function OnUseSkill_6002(level,etype1,eid1,etype2,eid2)
	local luaid = 6002
	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)
	local dx = s_getValue(etype2,eid2,VALUE_TYPE_POSX)
	local dy = s_getValue(etype2,eid2,VALUE_TYPE_POSY)

	local px = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
	local py = s_getValue(etype1,eid1,VALUE_TYPE_POSY)

--	s_debug("dx=%d,dy=%d,px=%d,py=%d",dx,dy,px,py)

	local vector = {x=px-dx,y=py-dy}
	local vector_len = math.sqrt(vector.x^2+vector.y^2)

--	s_debug("vector.x=%d,vector.y=%d,vector_len=%d",vector.x,vector.y,vector_len)

	dx = dx + vector.x/vector_len
	dy = dy + vector.y/vector_len

--	s_debug("dx=%d,dy=%d",dx,dy)

	if s_goto(etype1,eid1,dx,dy,enumMoveType_GoTo) ~= VALUE_OK then
		return USE_SKILL_ERROR
	end
	local value = damage
	MagicAttack(luaid,VALUE_TYPE_PDAM,etype1,eid1,etype2,eid2,value)

	local buff_id = 50004
	local buff_lev = {1,2}
	local buff_time = {3,20}
	if etype2 == SCENE_ENTRY_NPC then
		if s_getValue(etype2,eid2,VALUE_TYPE_MONSTER_TYPE) == 5 then
			return
		end
	end
	if s_getbufflevel(buff_id) <= buff_lev[level] then
		s_removebuff(etype2,eid2,buff_id)
		s_addbuff(etype2,eid2,buff_id,buff_lev[level],buff_time[level],eid1)
	end
end
