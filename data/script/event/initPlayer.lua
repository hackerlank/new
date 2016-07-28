--第一次进入场景初始
function OnPlayerFirstIntoScene(uid)
	OnInitPlayerSkill(uid)
	FreshManTip(uid,800)
	AddRoleTaskForGM(uid,3001)
	SetReturnPoint(uid)
	--------------------
	--user = GetUserByID(uid)
	--user:InitPlayer();
end
--添加通用技能
function CheckAddCommonSkill(uid)
	if s_getskilllevel(SCENE_ENTRY_PLAYER,uid,40112) == 0 then
		s_addskill(SCENE_ENTRY_PLAYER,uid,40112,1)
	end
	if s_getskilllevel(SCENE_ENTRY_PLAYER,uid,50002) == 0 then
		s_addskill(SCENE_ENTRY_PLAYER,uid,50002,1)
	end
	if s_getskilllevel(SCENE_ENTRY_PLAYER,uid,50006) == 0 then
		s_addskill(SCENE_ENTRY_PLAYER,uid,50006,1)
	end
	if s_getskilllevel(SCENE_ENTRY_PLAYER,uid,50007) == 0 then
		s_addskill(SCENE_ENTRY_PLAYER,uid,50007,1)
	end
	if s_getskilllevel(SCENE_ENTRY_PLAYER,uid,50008) == 0 then
		s_addskill(SCENE_ENTRY_PLAYER,uid,50008,1)
	end
	if s_getskilllevel(SCENE_ENTRY_PLAYER,uid,5521) == 0 then
		s_addskill(SCENE_ENTRY_PLAYER,uid,5521,1)
	end
	if s_getskilllevel(SCENE_ENTRY_PLAYER,uid,7234) == 0 then
		s_addskill(SCENE_ENTRY_PLAYER,uid,7234,1)
	end
	--if s_getskilllevel(SCENE_ENTRY_PLAYER,uid,7235) == 0 then
	--	s_addskill(SCENE_ENTRY_PLAYER,uid,7235,1)
	--end
end
--创建角色时初始化技能
function OnInitPlayerSkill(uid)
	--s_addskill(SCENE_ENTRY_PLAYER,uid,60000,1)
	--s_addskill(SCENE_ENTRY_PLAYER,uid,60001,1)
	--s_addskill(SCENE_ENTRY_PLAYER,uid,60002,1)
	--s_addskill(SCENE_ENTRY_PLAYER,uid,60003,1)
	--local skill = { 5000,5001,5019,50009,50010,50011}
	--for i = 1,table.getn(skill) do
	--	s_addskill(SCENE_ENTRY_PLAYER,uid,skill[i],1)
	--end
	local profession = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if profession == Profession_Soldier then
		s_addskill(SCENE_ENTRY_PLAYER,uid,5006,1)

		s_addskill(SCENE_ENTRY_PLAYER,uid,6001,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,6002,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,6003,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,6004,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,6005,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,6006,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,6007,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,6008,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,6009,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,6010,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,6011,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,6012,1)

		s_addskill(SCENE_ENTRY_PLAYER,uid,7001,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,7002,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,7003,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,7004,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,7005,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,7006,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,7007,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,7008,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,7009,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,7010,1)

		s_addskill(SCENE_ENTRY_PLAYER,uid,8001,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,8002,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,8003,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,8004,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,8005,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,8006,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,8007,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,8008,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,8009,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,8010,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,8011,1)

		s_addskill(SCENE_ENTRY_PLAYER,uid,9001,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,9002,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,9003,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,9004,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,9005,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,9006,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,9007,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,9008,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,9009,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,9010,1)

		--s_addskill(SCENE_ENTRY_PLAYER,uid,10114,1)
		--s_addskill(SCENE_ENTRY_PLAYER,uid,10115,1)
		--s_addskill(SCENE_ENTRY_PLAYER,uid,10109,1)
	end
	if profession == Profession_Spy then
		s_addskill(SCENE_ENTRY_PLAYER,uid,5007,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10200,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10201,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10204,1)
	end
	if profession == Profession_Gunman then
		s_addskill(SCENE_ENTRY_PLAYER,uid,5008,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10303,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10304,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10306,1)
	end
	if profession == Profession_Blast then
		s_addskill(SCENE_ENTRY_PLAYER,uid,5009,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10400,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10401,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10402,1)
	end
	if profession == Profession_Freeman then
		s_addskill(SCENE_ENTRY_PLAYER,uid,5010,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10502,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10503,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10504,1)
	end
	if profession == Profession_Doctor then
		s_addskill(SCENE_ENTRY_PLAYER,uid,5011,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10603,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10604,1)
		s_addskill(SCENE_ENTRY_PLAYER,uid,10605,1)
	end
end

