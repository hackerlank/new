
--嘲讽

function OnLoopEvent_1Sec_81(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=81,嘲讽=%d=%d=%d,%d------------------",param1,param2,param3,s_getbuffnum(etype,eid,50001))
	--寻找目标，普通攻击
	--local playerid = s_getbuffvalue(etype,eid,50001);
	if etype == SCENE_ENTRY_NPC then
--		s_setEnemyEnmity(eid,SCENE_ENTRY_PLAYER,playerid,10000)
		return
	end
--	s_debug("调用嘲讽50001,level=%d,etype=%d,eid=%d,playerid=%d",level,etype,eid,playerid);

	local aim_x = s_getValue(ptype,pid,VALUE_TYPE_POSX)
	local aim_y = s_getValue(ptype,pid,VALUE_TYPE_POSY)
	local aim_scene = s_getValue(ptype,pid,VALUE_TYPE_SCENE_ID)

	local self_x = s_getValue(etype,eid,VALUE_TYPE_POSX)
	local self_y = s_getValue(etype,eid,VALUE_TYPE_POSY)
	local self_scene = s_getValue(etype,eid,VALUE_TYPE_SCENE_ID)

	local maxdis = 10
	local skilldis = 2
	if playerid ~= 0 and aim_x ~= 0 and aim_y ~= 0 and aim_scene == self_scene then
		local dst = math.sqrt((aim_x-self_x)^2 + (aim_y-self_y)^2)
--		s_debug("------aim_x==%d,aim_y==%d,self_x==%d,self_y==%d,dis=%d",aim_x,aim_y,self_x,self_y,dst);
		if dst <= maxdis then
			if dst <= skilldis then
				--普通技能战斗
				s_useSkill(etype,eid,ptype,pid,5006)
			else
				--追击
--				s_debug("------------追击ing");
				s_moveto(eid,0,1,aim_x,aim_y)
			end
		end
	end
end
