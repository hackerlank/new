local table = table
local math = math
local PlayerManager = PlayerManager
local PetDataBase = PetDataBase
local PetYHData = PetYHData
local PetGYData = PetGYData
local global = GlobalConst
local ErrorID = ErrorPetUserCmd
local AddPetAction = AddPetAction

local TalentName = {
	'zhili',
	'tizhi',
	'liliang',
	'minjie',
	'jingshen',
}

Pet = Class('Pet', 'GameCmd.PetData', function(self, data)
	if type(data) == 'number' then -- data is id
		--第一步 Createproto
		self:CreateProto('GameCmd.PetData')
		--赋值都放在 _proto_data之后
		self.owner = 0
		self.base = PetDataBase[data]
		self.base_id = data
		self:InitPetData()
	else -- data is table
		self:Proto(data)
		self.base = PetDataBase[self.base_id]
	end
end)

function Pet:RandPetTalent(talent, grade, base)
	for _, t in pairs(TalentName) do
		local min_value = base[t][grade]
		local max_value = base[t][grade + 1]
		talent[t] = math.random(min_value, max_value)
	end
end

function Pet:CalcMaxPoint()
	self.max_point = self.lv * global.LevelArg + self.lv / global.GradeArg[self.grade] 
end

function Pet:ResetPoint()
	self:CalcMaxPoint()
	local attr_point = self.attr_point
	for k, _ in pairs(attr_point) do
		attr_point[k] = 0
	end
end


local base_point = CreateFullProtoTable('GameCmd.PetTalent')
local talent_arg = CreateFullProtoTable('GameCmd.PetTalent')
function Pet:CalcAttr(to_client)
	
	local level_base = PetLevelData.query(self.lv, self.base.type)
	local attr = self.attr
	local talent = self.cur_talent
	local grade_attr = global.GradeAttr[self.grade]
	local base = base_point

	--计算基础属性
	for k, v in pairs(self.attr_point) do
		base[k] = v + level_base[k]
	end
	--计算天赋系数
	for k, v in pairs(self.cur_talent) do
		talent_arg[k] = v / 10000 + 1
	end
	attr.maxhp = level_base.maxhp + base.tizhi * talent_arg.tizhi* grade_attr * global.Tizhi2HP
	attr.pdam = base.liliang * talent_arg.liliang * grade_attr * global.Lilang2Pdam
	attr.mdam = base.zhili * talent_arg.zhili * grade_attr * global.Zhili2Mdam
	attr.pdef = base.tizhi * talent_arg.tizhi * grade_attr * global.Tizhi2Pdef
	local mdef = base.jingshen * talent_arg.jingshen * grade_attr * global.Jingshen2Mdef
	attr.lightdef = mdef
	attr.heatdef = mdef
	attr.biochdef = mdef
	attr.wavedef = mdef
	attr.hit = (global.HitInit + base.minjie * talent_arg.minjie * global.Minjie2Hit) * global.HitFix
	attr.hide = (global.HideInit + base.minjie * talent_arg.minjie * global.Minjie2Hide) * global.HideFix
	attr.plucky = (global.PluckyInit + base.minjie * talent_arg.minjie * grade_attr * global.Minjie2Plucky / 100)
	attr.mlucky = (global.MluckyInit + base.zhili * talent_arg.zhili * grade_attr * global.Zhili2Mlucky / 100)
	
	if to_client then
		local attr_msg = CreateLuaProtoTable('GameCmd.stRefreshAttrPetUserCmd_S')
		attr_msg.id = self.id
		attr_msg.attr = attr
		self.owner:SendCmdToMe(attr_msg)
	end
end

function Pet:CalcTalent(old_lv)
	if self.yh_lv == old_lv then
		return
	end

	local old_up = PetYHData[old_lv].up
	local yh_up = PetYHData[self.yh_lv].up
	
	local talent = self.cur_talent
	if talent == nil then return end
	for k, v in pairs(talent) do
		talent[k] = (v * (10000 + yh_up)) / (10000 + old_up)
	end
	talent = self.replace_talent
	for k, v in pairs(talent) do
		talent[k] = (v * (10000 + yh_up)) / (10000 + old_up)
	end
	
end

function Pet:InitPetData()
	self.male = (math.random(0, 1) == 0)
	--随机性格
	self.character = math.random(7) --7种性格
	--成长状态
	self.grade = 1
	--根据成长状态来随机天赋数值
	self:RandPetTalent(self.cur_talent, self.grade, self.base)

	self.yh_exp = 0
	self.yh_lv = 0
	
	self.lv = 1
	self.exp = 0

	--计算最大属性点
	self:CalcMaxPoint()
	--计算二级属性
	self:CalcAttr()
	self.hp = self.attr.maxhp
	self.life = self.base.life
end

--消息
function Pet:SetAttrPoint(attr_point)
	local use_point = 0
	for _, point in pairs(attr_point) do
		use_point = use_point + point
	end
	
	if use_point > self.max_point then
		return false, ErrorID.MoreThanMax
	end
	self.attr_point = attr_point
	
	local attr_msg = CreateLuaProtoTable('GameCmd.stAttrPointPetUserCmd_CS')
	attr_msg.id = self.id
	attr_msg.attr_point = self.attr_point
	self.owner:SendCmdToMe(attr_msg)
	
	self:CalcAttr(true)
end

function Pet:ChangeID(new_id, old_id)
	self.id = new_id
	local id_msg = CreateLuaProtoTable('GameCmd.stChangeIDPetUserCmd_S')
	id_msg.new_id = new_id
	id_msg.old_id = old_id
	self.owner:SendCmdToMe(id_msg)
end

function Pet:SendPetToMe(action)
	local add_msg = CreateLuaProtoTable('GameCmd.stAddPetUserCmd_S')
	add_msg.action = action or 0
	add_msg.obj = self:Proto()
	self.owner:SendCmdToMe(add_msg)
end

function Pet:LifeChange(change, server_only)
	self.life =  self.life + change
	if not server_only then
		self:LifeNotice()
	end
end

function Pet:LifeNotice()
	local life_msg = CreateLuaProtoTable('GameCmd.stLifePetUserCmd_S')
	life_msg.id = self.id
	life_msg.life = self.life
	self.owner:SendCmdToMe(life_msg)
end

function Pet:LevelUp(server_only)
	local base = self.base
	local up_exp = base[self.lv]
	
	if self.exp < up_exp then
		return
	end

	self.exp = self.exp - up_exp
	self.lv = self.lv + 1

	--计算最大属性点
	self:CalcMaxPoint()
	local lv_msg = CreateLuaProtoTable('GameCmd.stLevelUpPetUserCmd_S')
	lv_msg.id = self.id
	lv_msg.exp = self.exp
	lv_msg.lv = self.lv
	lv_msg.max_point = self.max_point
	self.owner:SendCmdToMe(lv_msg)

	--计算二级属性
	self:CalcAttr(true)
end

function Pet:AddExp(exp, server_only)
	self.exp = self.exp + exp
	--检查是否升级
	if not server_only then
		self:ExpNotice()
	end
	
	self:LevelUp(server_only)
end

function Pet:ExpNotice()
	local exp_msg = CreateLuaProtoTable('GameCmd.stExpPetUserCmd_S')
	exp_msg.id = self.id
	exp_msg.exp = self.exp
	self.owner:SendCmdToMe(exp_msg)
end

function Pet:YinHun()
	local old_lv = self.yh_lv
	local yh = PetYHData[self.yh_lv]
	local player = self.owner
	local lvup_exp = yh.exp

	if lvup_exp == 0 then --满级了
		return false, ErrorID.YHLvMax
	end
	
	if not player:UseItem(yh.item, 1, '引魂消耗') then
		return false, ErrorID.ItemErr
	end

	self.yh_exp = self.yh_exp + yh.add_exp
	-- 引魂升级
	if self.yh_exp >= lvup_exp or global.YHTryLevelUp(self.yh_exp, lvup_exp) then
		self.yh_lv = self.yh_lv + 1
		self.yh_exp = 0
	end

	--引魂结果
	local yh_msg = CreateLuaProtoTable('GameCmd.stYinHunPetUserCmd_CS')
	yh_msg.id = self.id
	yh_msg.yh_lv = self.yh_lv
	yh_msg.yh_exp = self.yh_exp
	player:SendCmdToMe(yh_msg)

	--引魂升级后 计算天赋 属性 并通知客户端
	if old_lv ~= self.yh_lv then
		self:CalcTalent(old_lv)
		self:CalcAttr()
		self:SendPetToMe(2)
	end

	return true
end

local function GetGYItem(lv, adv, quality)
		if quality  == 8 then -- 神兽
			return global[adv][4]
		end
		--初级别的宠物
		if lv < 50 then return global[adv][1] end
		--高级别的宠物
		if lv > 90 then return global[adv][3] end
		--中级别的宠物
		return global[adv][2]
end

function Pet:GuiYuan(adv)
	local quality = self.base.quality
	local gy_data = PetGYData.query(quality, self.grade)

	--归元消耗
	local item = GetGYItem(self.base.carry_level, adv, quality)
	if not self.owner:UseItem(item, 1, '归元消息') then
		return false, ErrorID.ItemErr
	end

	--是否升级
	if gy_data ~= nil and HitOdds(gy_data.up_odds, 10000) then
		self.grade = self.grade + 1
		--计算最大属性点
		self:CalcMaxPoint()
	end

	if adv then
		--高级归元获得新的天赋
		self:RandPetTalent(self.replace_talent, self.grade, self.base)
	else
		--根据成长状态来随机天赋数值
		self:RandPetTalent(self.cur_talent, self.grade, self.base)
	end
	
	--计算二级属性
	self:CalcAttr()
	self:SendPetToMe(2)
	return true
end

function Pet:ReplaceTalent()
	local replace_talent = self.replace_talent
	local have_replace = false
	for k, v in pairs(replace_talent) do
		if v ~= 0 then
			have_replace = true
			break
		end
	end
	if not have_replace then return false, ErrorID.NoReplace end

	self.replace_talent = self.cur_talent
	self.cur_talent = replace_talent

	self:CalcAttr()
	self:SendPetToMe(2)

	return true
end

--function Pet:YinHun(time)
--	local old_lv = self.yh_lv
--	local yh = PetYHData[self.yh_lv]
--	local player = self.owner
--	local item = yh.item
--	local add_exp = yh.add_exp
--	local lvup_exp = yh.exp
--	local YHLvUp = global.YHLvUp
--
--	if lvup_exp == 0 then --满级了
--		return false
--	end
--
--	for i = 1, time do
--		if levup_exp == 0 then --满级了
--			break
--		end
--		if not player:UseItem(item, 1, '引魂消息') then
--			return false
--		end
--
--		self.yh_exp = self.yh_exp + add_exp
--		if self.yh_exp >= lvup_exp or YHLvUp(self.yh_exp, lvup_exp) then
--			self.yh_lv = self.yh_lv + 1
--			self.yh_exp = 0
--			yh = PetYHData[self.yh_lv]
--			item = yh.item
--			add_exp = yh.add_exp
--			lvup_exp = yh.exp
--		end
--	end
--	
--	local yh_msg = CreateLuaProtoTable('GameCmd.stYinHunPetUserCmd_CS')
--	yh_msg.id = pet.id
--	yh_msg.yh_lv = pet.yh_lv
--	yh_msg.yh_exp = pet.yh_exp
--	player:SendCmdToMe(exp_msg)
--
--	if old_lv ~= self.yh_lv then
--		self:CalcTalent(old_lv)
--		self:CalcAttr()
--		self:SendPetToMe(2)
--	end
--end
--

