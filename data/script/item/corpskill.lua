--团技能相关道具

local holdfun = [[
	function OnUseItemEvent_$1(uid,thisid,targetid)
		local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,$2)
		if lv < $3-1 then
			s_sysInfo(uid,"您还是先学习低等级的技能吧")
			return VALUE_FAIL
		end
		if lv > $3-1 then
			s_sysInfo(uid,"这种初级技能您已经不需要学习了")
			return VALUE_FAIL
		end
		s_addskill(SCENE_ENTRY_PLAYER,uid,$2,$3)
		s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_Corps")
		s_sysInfo(uid,"学习技能成功")
		return VALUE_OK
	end 
]]
--光波抗性----------------------------------------------------------------
for i = 0 ,19 do
	RegistetFunction(FormatString(holdfun,21071+i,44401,i+1))
end
--声波抗性----------------------------------------------------------------
for i = 0 ,19 do
	RegistetFunction(FormatString(holdfun,21101+i,44402,i+1))
end
--热能抗性----------------------------------------------------------------
for i = 0 ,19 do
	RegistetFunction(FormatString(holdfun,21131+i,44403,i+1))
end
--生化抗性----------------------------------------------------------------
for i = 0 ,19 do
	RegistetFunction(FormatString(holdfun,21161+i,44404,i+1))
end
---------------------------------------------------------------------------
---------------------------------------------------------------------------
local sendfun= [[
	function OnUseItemEvent_$1(uid,thisid,targetid)
		local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,$2)
		if lv < $3-1 then
			s_sysInfo(uid,"您还是先学习低等级的技能吧")
			return VALUE_FAIL
		end
		if lv > $3-1 then
			s_sysInfo(uid,"这种初级技能您已经不需要学习了")
			return VALUE_FAIL
		end
		s_addskill(SCENE_ENTRY_PLAYER,uid,$2,$3)
		s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_Corps")
		 s_sysInfo(uid,"学习技能成功")
		return VALUE_OK
	end 
]]
--战士之魂开放----------------------------------------------------------------
function OnUseItemEvent_20501(uid,thisid,targetid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro ~= Profession_Soldier then
		s_sysInfo(uid,"您不是战士,学习这个没用哦")
		return VALUE_FAIL
	end
	local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,44405)
	if lv ~= 0 then
		s_sysInfo(uid,"这种初级技能您已经不需要学习了")
		return VALUE_FAIL
	end
	s_addskill(SCENE_ENTRY_PLAYER,uid,44405,1)
	s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_20501")
	s_sysInfo(uid,"学习技能成功")
	return VALUE_OK
end
for i = 1 ,14 do
	RegistetFunction(FormatString(sendfun,20501+i,44405,i+1))
end
--精神集中开放----------------------------------------------------------------
function OnUseItemEvent_20516(uid,thisid,targetid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro ~= Profession_Gunman then
		s_sysInfo(uid,"您不是枪手,学习这个没用哦")
		return VALUE_FAIL
	end
	local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,44406)
	if lv ~= 0 then
		s_sysInfo(uid,"这种初级技能您已经不需要学习了")
		return VALUE_FAIL
	end
	s_addskill(SCENE_ENTRY_PLAYER,uid,44406,1)
	s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_20516")
	s_sysInfo(uid,"学习技能成功")
	return VALUE_OK
end
for i = 1 ,9 do
	RegistetFunction(FormatString(sendfun,20516+i,44406,i+1))
end
--幻影闪避开放----------------------------------------------------------------
function OnUseItemEvent_20526(uid,thisid,targetid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro ~= Profession_Spy then
		s_sysInfo(uid,"您不是特工,学习这个没用哦")
		return VALUE_FAIL
	end
	local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,44407)
	if lv ~= 0 then
		s_sysInfo(uid,"这种初级技能您已经不需要学习了")
		return VALUE_FAIL
	end
	s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_20526")
	s_addskill(SCENE_ENTRY_PLAYER,uid,44407,1)
	s_sysInfo(uid,"学习技能成功")
	return VALUE_OK
end
for i = 1 ,9 do
	RegistetFunction(FormatString(sendfun,20526+i,44407,i+1))
end
--热能装甲开放----------------------------------------------------------------
function OnUseItemEvent_20536(uid,thisid,targetid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro ~= Profession_Blast then
		s_sysInfo(uid,"您不是爆破,学习这个没用哦")
		return VALUE_FAIL
	end
	local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,44408)
	if lv ~= 0 then
		s_sysInfo(uid,"这种初级技能您已经不需要学习了")
		return VALUE_FAIL
	end
	s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_20536")
	s_addskill(SCENE_ENTRY_PLAYER,uid,44408,1)
	s_sysInfo(uid,"学习技能成功")
	return VALUE_OK
end
for i = 1 ,4 do
	RegistetFunction(FormatString(sendfun,20536+i,44408,i+1))
end
--天然抗体开放技----------------------------------------------------------------
function OnUseItemEvent_20541(uid,thisid,targetid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro ~= Profession_Doctor then
		s_sysInfo(uid,"您不是医生,学习这个没用哦")
		return VALUE_FAIL
	end
	local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,44409)
	if lv ~= 0 then
		s_sysInfo(uid,"这种初级技能您已经不需要学习了")
		return VALUE_FAIL
	end
	s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_20541")
	s_addskill(SCENE_ENTRY_PLAYER,uid,44409,1)
	s_sysInfo(uid,"学习技能成功")
	return VALUE_OK
end
for i = 1 ,4 do
	RegistetFunction(FormatString(sendfun,20541+i,44409,i+1))
end
--能量转换开放----------------------------------------------------------------
function OnUseItemEvent_20546(uid,thisid,targetid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro ~= Profession_Freeman then
		s_sysInfo(uid,"您不是行者,学习这个没用哦")
		return VALUE_FAIL
	end
	local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,44410)
	if lv ~= 0 then
		s_sysInfo(uid,"这种初级技能您已经不需要学习了")
		return VALUE_FAIL
	end
	s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_20546")
	s_addskill(SCENE_ENTRY_PLAYER,uid,44410,1)
	s_sysInfo(uid,"学习技能成功")
	return VALUE_OK
end
for i = 1 ,4 do
	RegistetFunction( FormatString(sendfun,20546+i,44410,i+1))
end
---------------------------------------------------------------------------
---------------------------------------------------------------------------
local recvfun= [[
	function OnUseItemEvent_$1(uid,thisid,targetid)
		local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,$2)
		if lv < $3-1 then
			s_sysInfo(uid,"您还是先学习低等级的技能吧")
			return VALUE_FAIL
		end
		if lv > $3-1 then
			s_sysInfo(uid,"这种初级技能您已经不需要学习了")
			return VALUE_FAIL
		end
		if lv == 0 then
			local num = 0
			for i = 44425,44430 do
				if s_getskilllevel(SCENE_ENTRY_PLAYER,uid,i) ~= 0 then
					num = num + 1
				end
			end
			if num >= 2 then
				s_sysInfo(uid,"分享技能最多只能学习两个")
				return VALUE_FAIL
			end
		end
		s_addskill(SCENE_ENTRY_PLAYER,uid,$2,$3)
		s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_Corps")
		 s_sysInfo(uid,"学习技能成功")
		return VALUE_OK
	end 
]]
--战士之魂分享----------------------------------------------------------------
for i = 0 ,14 do
	RegistetFunction(FormatString(recvfun,20551+i,44425,i+1))
end
--精神集中分享----------------------------------------------------------------
for i = 0 ,9 do
	RegistetFunction(FormatString(recvfun,20566+i,44426,i+1))
end
--幻影闪避分享----------------------------------------------------------------
for i = 0 ,9 do
	RegistetFunction(FormatString(recvfun,20576+i,44427,i+1))
end
--热能装甲分享----------------------------------------------------------------
for i = 0 ,4 do
	RegistetFunction(FormatString(recvfun,20586+i,44428,i+1))
end
--天然抗体分享----------------------------------------------------------------
for i = 0 ,4 do
	RegistetFunction(FormatString(recvfun,20591+i,44429,i+1))
end
--能量转换分享----------------------------------------------------------------
for i = 0 ,4 do
	RegistetFunction(FormatString(recvfun,20596+i,44430,i+1))
end
