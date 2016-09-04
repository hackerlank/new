USE_SKILL_ERROR = 0
USE_SKILL_SUCESS = 1
MAGIC_ATTACK_PERCENT_VALUE = 10000

--显示客户端攻击特效--------------------------------------------------------------------
function ShowAttack(skillid,etype1,eid1,etype2,eid2)
	s_attack(skillid,etype1,eid1,0,0,etype2,eid2,0,0)
end
--显示客户端攻击特效--------------------------------------------------------------------
function ShowAttackWithHurType(skillid,etype1,eid1,etype2,eid2,hurttype,hurtnum)
	s_attack(skillid,etype1,eid1,0,0,etype2,eid2,hurttype,hurtnum)
end
--攻减防攻击计算---------------------------------------------------------------------
function MagicAttack(skillid,atype,etype1,eid1,...)
	local percent = MAGIC_ATTACK_PERCENT_VALUE
	s_MagicAttack(skillid,atype,percent,etype1,eid1,...)
end
--直接伤害，不走PK流程---------------------------------------------------------------
function DirectAttack(skillid,etype1,eid1,...)	--变长参数为攻击类型和攻击数值
	local victim = {}
	for i = 1,arg.n, 3 do
		local etype2,eid2,damage= arg[i],arg[i+1],arg[i+2]
		table.insert(victim,etype2)
		table.insert(victim,eid2)
		table.insert(victim,0)
		table.insert(victim,damage)
	end
	s_attack(skillid,etype1,eid1,0,0,unpack(victim))
end
--特伤攻击----------------------------------------------------------------------------
function MagicHurtAttack(skillid,etype1,eid1,htype,damage, ...)
	local victim = {}
	for i = 1,arg.n, 2 do
		local etype2,eid2 = arg[i],arg[i+1]	--变长参数处理
		local hdef = 0
		if htype == ATTACK_TYPE_LH then
			hdef = s_getValue(etype2,eid2,VALUE_TYPE_LDEF)
		end
		if htype == ATTACK_TYPE_HH then
			hdef = s_getValue(etype2,eid2,VALUE_TYPE_HDEF)
		end
		if htype == ATTACK_TYPE_BH then
			hdef = s_getValue(etype2,eid2,VALUE_TYPE_BDEF)
		end
		if htype == ATTACK_TYPE_WH then
			hdef = s_getValue(etype2,eid2,VALUE_TYPE_WDEF)
		end
		if damage >= hdef then
			damage = damage - hdef
		else
			damage = 0
		end
		table.insert(victim,etype2)
		table.insert(victim,eid2)
		table.insert(victim,0)
		table.insert(victim,0)
	end
	s_attack(skillid,etype1,eid1,htype,damage,unpack(victim))
end

--团魔甲攻击玩家---------------------------------------------------------------------
function ArmyEquipAttack(skillid,etype1,eid1,etype2,eid2,hurtadd)
	local hurt = 0
	local htype = s_getValue(etype1,eid1,VALUE_TYPE_HURT_TYPE)
	if htype ~= 0 then
		local hdef = 0
		if htype == ATTACK_TYPE_LH then
			hurt = s_getValue(etype1,eid1,VALUE_TYPE_LDAM)
			hdef = s_getValue(etype2,eid2,VALUE_TYPE_LDEF)
		end
		if htype == ATTACK_TYPE_HH then
			hurt = s_getValue(etype1,eid1,VALUE_TYPE_HDAM)
			hdef = s_getValue(etype2,eid2,VALUE_TYPE_HDEF)
		end
		if htype == ATTACK_TYPE_BH then
			hurt = s_getValue(etype1,eid1,VALUE_TYPE_BDAM)
			hdef = s_getValue(etype2,eid2,VALUE_TYPE_BDEF)
		end
		if htype == ATTACK_TYPE_WH then
			hurt = s_getValue(etype1,eid1,VALUE_TYPE_WDAM)
			hdef = s_getValue(etype2,eid2,VALUE_TYPE_WDEF)
		end
		if hurt >= hdef then
			hurt = hurt - hdef
		else
			hurt = 0
		end
	end
	s_attack(skillid,etype1,eid1,htype,hurt+hurtadd ,etype2,eid2)
end

--1把2击退step格-------------------------------------------------------------------------
--1把2击退step格-------------------------------------------------------------------------
function BeatBack(etype1,eid1,etype2,eid2,step,gtype)
	local x1 = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
	local y1 = s_getValue(etype1,eid1,VALUE_TYPE_POSY)
	local x2 = s_getValue(etype2,eid2,VALUE_TYPE_POSX)
	local y2 = s_getValue(etype2,eid2,VALUE_TYPE_POSY)

	local dst = math.floor(math.sqrt((x1-x2)^2 + (y1-y2)^2))
	if dst == 0 then dst = 1 end
	local x = step / dst * (x2 - x1) + x2
	local y = step / dst * (y2 - y1) + y2

	s_goto(etype2,eid2,x,y,gtype)
end
--1向2跳跃step格
function JumpTo(etype1,eid1,etype2,eid2,step,gtype)
	if eid2 == nil or eid2 == 0 then return end

	local x1 = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
	local y1 = s_getValue(etype1,eid1,VALUE_TYPE_POSY)
	local x2 = s_getValue(etype2,eid2,VALUE_TYPE_POSX)
	local y2 = s_getValue(etype2,eid2,VALUE_TYPE_POSY)

	local dst = math.floor(math.sqrt((x1-x2)^2 + (y1-y2)^2))
	if dst == 0 then dst = 1 end
	local x = step / dst * (x2 - x1) + x1
	local y = step / dst * (y2 - y1) + y1

	s_goto(etype1,eid1,x,y,gtype)
end
--随机获得一个仇恨玩家
function GetRandomPlayer(etype1,eid1,etype2,eid2)
	local posx = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
	local posy = s_getValue(etype1,eid1,VALUE_TYPE_POSY)
	local etype,eid,lock = s_getEnemy(eid1)
	if lock == VALUE_FAIL then
		etype = etype2
		eid = eid2
		s_setEnemy(eid1,etype,eid,VALUE_OK)
	else
		eid = 0
		local list = s_getEnemyEntry(eid1)
		local dstlist = {}
		local curnumber = 0
		for i = 1,table.getn(list), 2 do
			local x1 = s_getValue(list[i],list[i+1],VALUE_TYPE_POSX)
			local y1 = s_getValue(list[i],list[i+1],VALUE_TYPE_POSY)
			if math.sqrt((x1-posx)^2 + (y1-posy)^2) > 3 then
				table.insert(dstlist,list[i])
				table.insert(dstlist,list[i+1])
				curnumber = curnumber + 1
			end
		end
		if curnumber > 0 then
			local j = math.random(1,curnumber)
			if dstlist[2*j-1] == etype2 and dstlist[2*j] ~= eid2 then
				etype = etype2
				eid = dstlist[2*j]
				s_setEnemy(eid1,etype,eid,VALUE_FAIL)
			end
		end
	end
	return etype,eid
end
--获得直线间的所可攻击的玩家-------------------------------------------------------
function GetPlayerInLine(etype1,eid1,etype2,eid2)
	local range = {}
	local step = {0.8,0.6,0.4,0.2}
	local x1 = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
	local y1 = s_getValue(etype1,eid1,VALUE_TYPE_POSY)
	local posx = s_getValue(etype2,eid2,VALUE_TYPE_POSX)
	local posy = s_getValue(etype2,eid2,VALUE_TYPE_POSY)
	posx,posy = GetFarEntryPosition(x1,y1,posx,posy,10)
	for i = 1,table.getn(step) do
		local x = x1 * step[i] + (1 - step[i]) * posx
		local y = y1 * step[i] + (1 - step[i]) * posy
		table.insert(range,x)
		table.insert(range,y)
	end
	local victim = {}
	local list = s_getNineEntry(etype1,eid1,15)
	for i = 1,table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER then
			local entry_x = s_getValue(list[i],list[i+1],VALUE_TYPE_POSX)
			local entry_y = s_getValue(list[i],list[i+1],VALUE_TYPE_POSY)
			for j = 1,table.getn(range),2 do
				local dst = math.sqrt((entry_x-range[j])^2 + (entry_y-range[j+1])^2)
				if dst < 3 then
					table.insert(victim,list[i])
					table.insert(victim,list[i+1])
					break
				end
			end
		end
	end
	return victim
end
--获得两个物件之间的距离-------------------------------------------------------
function GetEntryPosition(etype1,eid1,etype2,eid2)
	local x1 = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
	local y1 = s_getValue(etype1,eid1,VALUE_TYPE_POSY)
	local x2 = s_getValue(etype2,eid2,VALUE_TYPE_POSX)
	local y2 = s_getValue(etype2,eid2,VALUE_TYPE_POSY)
	if x1 == nil or y1 == nil or x2 == nil or y2 == nil then
		return 0
	end
	return math.floor(math.sqrt((x1-x2)^2 + (y1-y2)^2))
end

--计算A点到B点距离为r的C点坐标--------------------------------------------------------------------------
function GetFarEntryPosition(pa_x,pa_y,pb_x,pb_y,r)
	if pa_x == pb_x and pa_y == pb_y then return 0,0 end
	local dist_ab = math.sqrt((pa_x-pb_x)^2 + (pa_y-pb_y)^2)
	if dist_ab == 0 then dist_ab = 1 end
	local posx = pa_x + (pb_x - pa_x) * r / dist_ab
	local posy = pa_y + (pb_y - pa_y) * r / dist_ab
	return posx,posy
end

--检查免疫buff--------------------------------------------------------------------------
function CheckPowerBuff(etype1,eid1)
	if s_getbufflevel(etype1,eid1,10612) ~= 0 then
		return VALUE_OK   --天然抗体
	end
	if s_getbufflevel(etype1,eid1,10110) ~= 0 then
		return VALUE_OK  --战神附体
	end
	return VALUE_FAIL
end
--通用放毒函数--------------------------------------------------------------------------
function SpeadPoison(etype1,eid1,etype2,eid2,plevel,buffid)
	local MAX_HURT = {
		{20,  50,  90,   190},
		{40,  90,  180,  360},
		{60,  140, 280,  570},
		{80,  200, 410,  820},
		{120, 300, 600,  1210},
		{180, 460, 920,  1840},
		{260, 650, 1300, 2600},
		{340, 860, 1720, 3450},
		{440, 1090,2190, 4380},
		{540, 1350,2690, 5390},
		{700, 1750,3500, 7000},
		{880, 2190,4380, 8760},
		{1070,2670,5330,10660},
		{1270,3180,6350,12700},
		{1490,3720,7440,14880}
	}
	if buffid == nil then buffid = 20003 end
	local PERCENT = {2,5,10,20}
	if s_getbufflevel(etype2,eid2,buffid ) == 0 then
		local level = s_getValue(etype1,eid1,VALUE_TYPE_LEVEL)
		level  = math.floor(1+(level-1) / 10 )
		s_addbuff(etype2,eid2,buffid,PERCENT[plevel],10,MAX_HURT[level][plevel])
	end
end
--Boss的群攻技能走特殊流程-----------------------------------------------------------------
function BossDamage(etype1,eid1,alevel,bosslevel)
	local MAX_HURT = {
		{190,  380,  560,  750  },
		{340,  680,  1020, 1360 },
		{520,  1040, 1550, 2070 },
		{710,  1420, 2130, 2840 },
		{1010, 2010, 3020, 4020 },
		{1480, 2950, 4430, 5900 },
		{2300, 4610, 6910, 9220 },
		{3320, 6640, 9970, 13290},
		{4530, 9070, 13600,18130},
		{5940, 11880,17830,23770},
		{8170, 16340,24500,32670},
		{9890, 19790,29680,39580},
		{11660,23320,34980,46640},
		{13470,26940,40410,53880},
		{15320,30640,45960,61280}
	}
	local htype = s_getValue(etype1,eid1,VALUE_TYPE_HURT_TYPE)
	if htype == nil or htype == 0 then
		return 0,0
	end

	if bosslevel == nil or bosslevel == 0 then
		bosslevel = s_getValue(etype1,eid1,VALUE_TYPE_LEVEL)
	end
	bosslevel = math.floor(1+(bosslevel-1) / 10 )
	return htype,MAX_HURT[bosslevel][alevel]
end

--巴比伦塔的Boss技能走特殊流程-----------------------------------------------------------------
function BossBabylonDamage(etype1,eid1,alevel,bosslevel)
	local MAX_HURT = {
		{1720,2750,4120,5840},--1-91级,1-3层
		{1790,2860,4300,6090},--2-92级,4-6层
		{1860,2980,4470,6340},--3-93级,7-9层
		{1940,3100,4650,6590},--4-94级,10-12层
		{2010,3220,4830,6840},--5-95级,13-15层
		{2080,3330,5000,7090},--6-96级,16-18层
		{2160,3450,5180,7340},--7-97级,19-21层
		{2230,3570,5350,7590},--8-98级,22-24层
		{2300,3690,5530,7840},--9-99级,25-27层
		{2380,3800,5710,8090},--10-100级,28-30层
		{2450,3920,5880,8340},--11-103级,31-33层
		{2570,4120,6180,8750},--12-106级,34-36层
		{2700,4310,6470,9170},--13-109级,37-40层
		{2820,4510,6770,9580},--14-113级,41-43层
		{2940,4710,7060,10000},--15-116级,44-46层
		{3060,4900,7350,10420},--16-119级,47-50层
		{3190,5100,7650,10830},--17-123级,51-53层
		{3310,5290,7940,11250},--18-126级,54-56层
		{3430,5490,8240,11670},--19-129级,57-60层
	}
	local htype = s_getValue(etype1,eid1,VALUE_TYPE_HURT_TYPE)
	if htype == nil or htype == 0 then
		return 0,0
	end
	if bosslevel == nil or bosslevel == 0 then
		bosslevel = s_getValue(etype1,eid1,VALUE_TYPE_LEVEL)
	end
	if	bosslevel <= 100 then
		if	bosslevel <= 90 then bosslevel = 91 end
		bosslevel = math.floor(bosslevel - 90 )
	else
		bosslevel = 10 + 3*math.floor((bosslevel-100) / 10 )+math.mod(bosslevel,10)/3
	end
	return htype,MAX_HURT[bosslevel][alevel]
end
--使用技能-----------------------------------------------------------------
function OnUseSkill(skill,level,atype,attackid,defendtype,defendid)
	--血液汲取技能会被嘲讽打断
	if skill == 10108 then s_removebuff(defendtype,defendid,20025) end

	local fun = rawget(_G,"OnUseSkill_" .. skill)
	if fun ~= nil then
		MAGIC_ATTACK_PERCENT_VALUE = 10000
		local ret = fun(level,atype,attackid,defendtype,defendid)
		if ret ~= USE_SKILL_ERROR then
			return VALUE_OK --技能返回nil和USE_SKILL_SUCESS都为成功
		end
		return VALUE_FAIL
	end
end

function OnUseSkillWithPos(skill,level,atype,attackid,defendtype,defendid,posx,posy)
	local fun = rawget(_G,"OnUseSkill_" .. skill)
	if fun ~= nil then
		MAGIC_ATTACK_PERCENT_VALUE = 10000
		local ret = fun(level,atype,attackid,defendtype,defendid,posx,posy)
		if ret ~= USE_SKILL_ERROR then
			return VALUE_OK --技能返回nil和USE_SKILL_SUCESS都为成功
		end
		return VALUE_FAIL
	end
end

----------------------------------------------------------
--新修改使用技能相关
----------------------------------------------------------
--攻击目标
function SelectAttackAim(skillid,level,etype1,eid1,prob, ...)
	local victim = {}
	for i = 1,arg.n, 2 do
		table.insert(victim,arg[i])
		table.insert(victim,arg[i+1])
	end
	local key = skillid*10000+level
	local damagetype = SkillDataBase[key].damagetype
	if damagetype == 1 then
		s_attackaim(skillid,level,etype1,eid1,prob,unpack(victim))
		s_debug("[攻击目标],ID=%d,level=%d,etype1=%d,eid1=%d",skillid,level,etype1,eid1)
	elseif damagetype == 2 then
		--治疗
		for i=1,table.getn(victim),2 do
			local cure = s_getValue(etype1,eid1,VALUE_TYPE_ZHILI)
			local attackprob = SkillDataBase[key].damageprob/10000
			local attackmin = SkillDataBase[key].damagemin
			local attackmax = SkillDataBase[key].damagemax
			local curehp = cure*(1+attackprob)+math.random(attackmin,attackmax)
			s_addValue(victim[i],victim[i+1],VALUE_TYPE_HP,curehp)
			s_debug("治疗目标列表：[1]＝%d,[2]=%d,治疗量＝%d",victim[i],victim[i+1],curehp)
		end
	end
end
--检测值有效
function checkValueValid(value)
	if value ~= nil and value ~= 0 then
		return true
	end
	return false
end
--获得hp/maxhp 百分比
function getHpPer(etype,eid)
	local hp = s_getValue(etype,eid,VALUE_TYPE_HP)
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	return 100*hp/maxhp
end
--获得随机数min max
function getIsRandomTrue(value)
	local randval = math.random(10000)
	if randval <= value then
		return true
	end
	return false
end
--调用选中单目标类技能 effecttype条件类型 effectid效果ID 最后不定参 buffid level
function OnUseSkillByAim(skillid,level,etype1,eid1,etype2,eid2,effecttype,effectid,buffprob, ...)
--	s_debug("读技能表：%s",SkillDataBase[skillid*10000+level].name)
--	s_debug("[单目标类技能--1],ID=%d,level=%d,effecttype=%d,effectid=%d",skillid,level,effecttype,effectid)
	if checkValueValid(skillid) == false then return VALUE_FAIL end
	if checkValueValid(level) == false then return VALUE_FAIL end
	if checkValueValid(eid1) == false then return VALUE_FAIL end
	if checkValueValid(eid2) == false then return VALUE_FAIL end
	--目标选择
	local key = skillid*10000+level
	local aimtype = SkillDataBase[key].aimchoose
	local aimid = 0
	if aimtype == 0 then
		aimtype = etype1
		aimid = eid1
	elseif aimtype == 1 then
		aimtype = etype2
		aimid = eid2
	elseif aimtype == 2 then
		--获取宠物类型和ID
	end
	--位移
	local movetype = SkillDataBase[key].movetype
	if movetype == 1 or movetype == 2 then
		local ex1 = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
		local ey1 = s_getValue(etype1,eid1,VALUE_TYPE_POSY)
		local ex2 = s_getValue(etype2,eid2,VALUE_TYPE_POSX)
		local ey2 = s_getValue(etype2,eid2,VALUE_TYPE_POSY)
		local vec = {x=ex1-ex2,y=ey1-ey2}
		local vec_len = math.sqrt(vec.x^2+vec.y^2)
		ex2 = ex2 + vec.x/vec_len
		ey2 = ey2 + vec.y/vec_len
		s_debug("位移类型=%d,位移坐标：x=%d,y=%d",movetype,ex2,ey2)
		if s_goto(etype1,eid1,ex2,ey2,enumMoveType_GoTo) ~= VALUE_OK then
			return USE_SKILL_ERROR
		end
	end
	--效果条件检测 0无条件 1血量低于30% 2血量低于50%
	local damageprob = 1
	local flag = 0
	local effecttype = SkillDataBase[key].effectcond
	if effecttype == 0 then
		flag = 1
	elseif effecttype == 1 and getHpPer(etype1,eid1) <= 30 then
		flag = 1
	elseif effecttype == 2 and getHpPer(etype1,eid1) <= 50 then
		flag = 1
	end
	if flag == 1 then
		local effectid = SkillDataBase[key].effectid
		if checkValueValid(effectid) then
			s_debug("调用效果：etype2=%d,eid2=%d,effectid=%d,etype1=%d,eid1=%d",etype2,eid2,effectid,etype1,eid1)
			--加上效果 aimtype类型确定加给谁
			if effectid == 6201 then
				damageprob = 3
			else
				s_addeffect(aimtype,aimid,effectid,etype1,eid1)
			end
		end
	end
	--buff检测,支持多个buff
	local buffprob = SkillDataBase[key].addbuffprob
	if checkValueValid(buffprob) and getIsRandomTrue(buffprob) then
		s_debug("[单目标类技能--2]")
		for i = 1,arg.n, 2 do
			local buffid,bufflev = arg[i],arg[i+1]
			s_debug("[单目标类技能--5 buffid=%d,bufflev=%d]",buffid,bufflev)
			if checkValueValid(buffid) and checkValueValid(bufflev) then
				--加buff 最后一个参数先传攻击目标id 后期可能需要区分
				s_debug("检查buff的等级=%d<%d",s_getbufflevel(aimtype,aimid,buffid),bufflev)
				if s_getbufflevel(aimtype,aimid,buffid) <= bufflev then
					s_removebuff(aimtype,aimid,buffid,1)
					s_addbuff(aimtype,aimid,buffid,bufflev,0,eid1,etype1)
					s_debug("[单目标类技能--3]=%d",s_getbufflevel(aimtype,aimid,buffid))
				end
			end
		end
	end
	--计算伤害
	SelectAttackAim(skillid,level,etype1,eid1,damageprob,etype2,eid2)
	s_debug("[单目标类技能--4]")
	return VALUE_OK
end

--调用选中目标点类技能 angletype范围类型 effecttype条件类型 effectid效果ID 最后不定参 buffid level
function OnUseSkillByPos(skillid,level,etype1,eid1,etype2,eid2,posx,posy,angletype,parm1,parm2,maxnum,aimtype,effecttype,effectid,buffprob, ...)
	if checkValueValid(skillid) == false then return VALUE_FAIL end
	if checkValueValid(level) == false then return VALUE_FAIL end
	if checkValueValid(eid1) == false then return VALUE_FAIL end

	local key = skillid*10000+level
	local camptype = SkillDataBase[key].camptype
	--位移
	local movetype = SkillDataBase[key].movetype
	if movetype == 1 or movetype == 2 then
		s_debug("位移类型=%d,位移坐标：x=%d,y=%d",movetype,posx,posy)
		if s_goto(etype1,eid1,posx,posy,enumMoveType_GoTo) ~= VALUE_OK then
			return USE_SKILL_ERROR
		end
	end

	--优先选择的目标
	s_debug("posx=%d,posy=%d,angletype=%d,parm1=%d,parm2=%d,maxnum=%d,aimtype=%d,effecttype=%d,effectid=%d",posx,posy,angletype,parm1,parm2,maxnum,aimtype,effecttype,effectid)
	--范围条件检测 0点 1矩形 2扇形 3圆
	local radList = {}
	if etype1 == SCENE_ENTRY_PLAYER then
		if angletype == 0 then
			radList = s_playerCircleList(skillid,etype1,eid1,etype2,eid2,posx,posy,0,camptype)
		elseif angletype == 1 then
			radList = s_playerLineList(skillid,etype1,eid1,etype2,eid2,posx,posy,parm1,parm2,camptype)
		elseif angletype == 2 then
			radList = s_playerSectorList(skillid,etype1,eid1,etype2,eid2,posx,posy,parm1,parm2,camptype)
		elseif angletype == 3 then
			radList = s_playerCircleList(skillid,etype1,eid1,etype2,eid2,posx,posy,parm1,camptype)
		end
	elseif etype1 == SCENE_ENTRY_NPC then
		if angletype == 0 then
			radList = s_monsterCircleList(etype1,eid1,etype2,eid2,posx,posy,0,camptype)
		elseif angletype == 1 then
			radList = s_monsterLineList(etype1,eid1,etype2,eid2,posx,posy,parm1,parm2,camptype)
		elseif angletype == 2 then
			radList = s_monsterSectorList(etype1,eid1,etype2,eid2,posx,posy,parm1,parm2,camptype)
		elseif angletype == 3 then
			radList = s_monsterCircleList(etype1,eid1,etype2,eid2,posx,posy,parm1,camptype)
		end
	end
	local victim = s_getTargetListNum(radList,maxnum)
	for i=1,#victim,2 do
		s_debug("[1]=%d,[2]=%d",victim[i],victim[i+1])
	end
	--加效果和buff
	local effecttype = SkillDataBase[key].effectcond
	local damagetype = SkillDataBase[key].damagetype
	local damageprob = 1
	for i=1,table.getn(victim),2  do
	--	s_debug("加buff:type=%d,id=%d",victim[i],victim[i+1])
		--效果条件检测 0无条件 1血量低于30% 2血量低于50%
		local flag = 0
		s_debug("效果类型＝%d",effecttype)
		if effecttype == 0 then
			flag = 1
		elseif effecttype == 1 and getHpPer(victim[i],victim[i+1]) <= 30 then
			flag = 1
		elseif effecttype == 2 and getHpPer(victim[i],victim[i+1]) <= 50 then
			flag = 1
		end
		if flag == 1 then
			if checkValueValid(effectid) then
				--加上效果
				if effectid == 6201 then
					damageprob = 3
				else
					s_addeffect(victim[i],victim[i+1],effectid,etype1,eid1)
					s_debug("添加效果：%d",effectid)
				end
			end
		end
		--buff检测,支持多个buff
		if checkValueValid(buffprob) and getIsRandomTrue(buffprob) then
			for j = 1,arg.n, 2 do
				local buffid,bufflev = arg[j],arg[j+1]
				if checkValueValid(buffid) and checkValueValid(bufflev) then
					--加buff 最后一个参数先传攻击目标id 后期可能需要区
					if s_getbufflevel(victim[i],victim[i+1],buffid) <= bufflev then
						s_removebuff(victim[i],victim[i+1],buffid,1)
						s_addbuff(victim[i],victim[i+1],arg[j],arg[j+1],0,eid1,etype1)
						s_debug("[单目标类技能--3]=%d",s_getbufflevel(victim[i],victim[i+1],buffid))
					end
				end
			end
		end
	end
	SelectAttackAim(skillid,level,etype1,eid1,damageprob, unpack(victim))
	return VALUE_OK
end

--------------------------------------------------------
--------------------------------------------------------


--玩家攻击团魔甲
function OnPlayerAttackArmyequip(skillid,level,etype1,eid1,etype2,eid2)
	--	if s_checkPK(skillid,etype1,eid1,etype2,eid2) == VALUE_OK then
	--		return VALUE_FAIL
	--	end
	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)
	local tmp = s_getValue(etype1,eid1,VALUE_TYPE_MDAM)
	if damage < tmp then
		local hit = s_getValue(etype1,eid1,VALUE_TYPE_MHIT)
		damage = tmp + math.random(0,hit)
	else
		local hit = s_getValue(etype1,eid1,VALUE_TYPE_PHIT)
		damage = damage + math.random(0,hit)
	end
	local worldlevel = s_getWorldLevel()
	local rate = 93+worldlevel
	if rate >= 100 then
		rate = 1
	else
		rate = 100 - rate
	end
	damage = damage * rate * 0.01
	if damage < 1 then
		s_sysInfo(eid1,"攻击力太低打不动啊")
	end
	s_attack(skillid,etype1,eid1,0,0,etype2,eid2,0,damage)
	return VALUE_OK
end
--玩家攻击镖车
function OnPlayerAttackGuard(skill,level,etype1,eid1,etype2,eid2)
	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)
	local tmp = s_getValue(etype1,eid1,VALUE_TYPE_MDAM)
	if damage < tmp then
		local hit = s_getValue(etype1,eid1,VALUE_TYPE_MHIT)
		damage = tmp + math.random(0,hit)
	else
		local hit = s_getValue(etype1,eid1,VALUE_TYPE_PHIT)
		damage = damage + math.random(0,hit)
	end
	if damage < 1 then
		damage = 1
	end
	--不同等级的攻击者减伤效果不一样
	local level1 = s_getValue(etype1,eid1,VALUE_TYPE_LEVEL)
	local level2 = s_getValue(etype2,eid2,VALUE_TYPE_LEVEL)
	local sub = 0
	if level1 > (level2 + 20) then
		sub = 3000
	end
	if level1 > (level2 + 40) then
		sub = 4000
	end
	if level1 > (level2 + 60) then
		sub = 7000
	end
	damage =  math.floor(damage * (10000 - sub)/10000)
	s_attack(skill,etype1,eid1,0,0,etype2,eid2,0,damage)
	return VALUE_OK
end
--玩家攻击魔甲BOSS
function OnPlayerAttackEquipBoss(skillid,level,etype1,eid1,etype2,eid2)
	--  if s_checkPK(skillid,etype1,eid1,etype2,eid2) == VALUE_OK then
	--      return VALUE_FAIL
	--  end
	local damage = s_getValue(etype1,eid1,VALUE_TYPE_PDAM)
	local tmp = s_getValue(etype1,eid1,VALUE_TYPE_MDAM)
	if damage < tmp then
		local hit = s_getValue(etype1,eid1,VALUE_TYPE_MHIT)
		damage = tmp + math.random(0,hit)
	else
		local hit = s_getValue(etype1,eid1,VALUE_TYPE_PHIT)
		damage = damage + math.random(0,hit)
	end
	damage = damage * 0.05
	if damage < 1 then
		s_sysInfo(eid1,"攻击力太低打不动啊")
	end
	s_attack(skillid,etype1,eid1,0,0,etype2,eid2,0,damage)
	return VALUE_OK
end
