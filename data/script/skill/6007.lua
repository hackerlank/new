--叫阵
function OnUseSkill_6007(level,etype1,eid1,etype2,eid2,posx,posy)
	luaid = 6007
--	s_debug("调用脚本6007,etype1=%d,eid1=%d,etype2=%d,eid2=%d,posx=%d,posy=%d",etype1,eid1,etype2,eid2,posx,posy)
	local buffid = 50001
	local buff_lev = {1,2,2,2,2}
	local buff_time = {10,60,60,60,60}

	local radius = 3
	local maxnum = 8

	local radList = s_playerCircleList(etype1,eid1,etype2,eid2,posx,posy,luaid,radius,0)
	local victim = s_getListNum(radList,maxnum)
	for i=1,table.getn(victim),3 do
		if s_getbufflevel(victim[i],victim[i+1],buffid) <= buff_lev[level] then
			s_removebuff(victim[i],victim[i+1],buffid)
			s_addbuff(victim[i],victim[i+1],buffid,buff_lev[level],buff_time[level],eid1)
		end

		if victim[i] == SCENE_ENTRY_NPC then
			s_setEnemyEnmity(victim[i+1],etype1,eid1,10000)
		end
	end
end
