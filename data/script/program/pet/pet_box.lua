local table = table
local math = math
local PlayerManager = PlayerManager
local PetDataBase = PetDataBase
local PetManager = PetManager
local HandleUserMsgFunc = HandleUserMsgFunc
local global = GlobalConst
local ErrorID = ErrorPetUserCmd

--tocpp
function CreatePet(uid, base_id, action)
	
	local player = PlayerManager[uid]
	
	if player == nil then 
		LogErr('Can not find Player uid:'..uid)
		return false
	end
	
	if	not player.pet_box:CreatePet(base_id, action) then
		LogErr('CreatePet failed uid:', uid)
		return false
	end
	
	return true
end

PetBox = Class('PetBox', function(self, player, data, x, y)
	
	self.owner = player
	self.pet_list = {}
	self.max_pet = global.MaxPetInit
	self.using_pet = 0
	
	if data == nil then
		return
	end
	if data.max_pet ~= nil and data.max_pet > 0 then
		self.max_pet = data.max_pet
	end
	if data.using_pet then
		self.using_pet = data.using_pet
	end
	if data.pet_list == nil then
		return
	end
	for i, pet_data in ipairs(data.pet_list) do
		--local old_id = pet_data.id
		local pet = Pet(pet_data)
		self:AddPet(pet) --加入失败的话 也不处理

		--if old_id ~= pet.id then
		--	pet:ChangeID(pet.id, old_id)
		--end
	end
end)

function PetBox:CheckOut()
	for _, pet in pairs(self.pet_list) do
		PetManager[pet.id] = nil
	end
end

function PetBox:Save()
	local save_data = CreateLuaProtoTable('GameCmd.PetUserData')
	save_data.max_pet = self.max_pet
	for k, pet in pairs(self.pet_list) do
		save_data.pet_list[k] = pet:Proto()
	end
	return save_data
end

function PetBox:AddPet(pet)
	local temp = PetManager[pet.id]

	if temp == pet then
		LogErr('宠物已经加入全局管理器了')
	elseif temp ~= nil then
		if temp.create_id == pet.create_id then
			LogErr('宠物 create_id 重复')
			return false
		end
		--重新生成 id
		repeat
			pet.id = GenGUID()
		until(PetManager[pet.id] == nil)
	end
	
	table.insert(self.pet_list, pet)
	PetManager[pet.id] = pet
	pet.owner = self.owner	
	return true

end

function PetBox:RemovePet(pet)
	local remove_id, pet_list = self.pet_list
	for i, _pet in pairs(pet_list) do
		if _pet == pet or _pet.id == pet then
			table.remove(pet_list, i)
			remove_id = _pet.id
			PetManager[_pet.id] = nil
			break
		end
	end
	if remove_id ~= nil then
		PetManager[remove_id] = nil
		self:RemoveNotice(remove_id)
		return true
	end
	return false, ErrorID.NotFind
end

function PetBox:CreatePet(base_id, action)
	if self.max_pet <= #self.pet_list then
		return false, ErrorID.BoxFull
	end

	local pet = Pet(base_id)
	pet.id, pet.create_id = GenGUID()
	local ret, err = self:AddPet(pet)
	if not ret then
		return false, err
	end
	
	pet:SendPetToMe(action)
	return true
end

function PetBox:FindPet(id)
	for idx, pet in pairs(self.pet_list) do
		if pet.id == id then
			return pet, idx
		end
	end
end

function PetBox:RemoveNotice(id)
	local remove_msg = CreateLuaProtoTable('GameCmd.stRemovePetUserCmd_CS')
	remove_msg.id = id
	self.owner:SendCmdToMe(remove_msg)
end

--登录时 发送所有数据给玩家
function PetBox:SendToMe()
	local box_msg = CreateLuaProtoTable('GameCmd.stUserDataPetUserCmd_S')
	box_msg.data = CreateLuaProtoTable('GameCmd.PetUserData')
	box_msg.data.max_pet = self.max_pet
	for k, pet in pairs(self.pet_list) do
		box_msg.data.pet_list[k] = pet:Proto()
	end
	self.owner:SendCmdToMe(box_msg)
end


function PetBox.OnAddPet(player, msg)
    return true
end

function PetBox.OnRemovePet(player, msg)
	local self = player.pet_box

	--判断是否出战 
	if msg.id == self.using_pet then
		return false, ErrorID.Using
	end
	
	local pet, idx = self:FindPet(msg.id)
	if idx == nil then return false, ErrorID.NotFind end

	table.remove(self.pet_list, idx)	
	player:SendCmdToMe(msg)
    return true
end

function PetBox.OnLevelUpPet(player, msg)
    return true
end

function PetBox.OnAddLifePet(player, msg)
	local self = player.pet_box

	local add_life = global.LifeItem[msg.item]
	if add_life == nil then return false, ErrorID.UnKnow end

	local pet = self:FindPet(msg.id)
	if pet == nil then return false, ErrorID.NotFind end

	if not player:UseItem(msg.item, 1, "增加宠物寿命") then
		return false, ErrorID.ItemErr
	end
	
	pet:LifeChange(add_life)
    return true
end

function PetBox.OnAddExpPet(player, msg)
   	local self = player.pet_box

	local add_exp = global.ExpItem[msg.item]
	if add_exp == nil then return false, ErrorID.UnKnow end

	local pet = self:FindPet(msg.id)
	if pet == nil then return false, ErrorID.NotFind end

	if not player:UseItem(msg.item, 1, "增加宠物经验") then
		return false, ErrorID.ItemErr
	end

	pet:AddExp(add_exp)
	return true
end

function PetBox.OnLifePet(player, msg)
    return true
end

function PetBox.OnExpPet(player, msg)
    return true
end

function PetBox.OnChangeNamePet(player, msg)
	local self = player.pet_box
	local pet = self:FindPet(msg.id)
	if pet == nil then return false, ErrorID.NotFind end
	
	if msg.name:len() > 16 then
		return false
	end
	--TODO 敏感字检查
	pet.name = msg.name
	
	self.user:SendCmdToMe(msg)

	return true
end

function PetBox.OnAddMaxNumPet(player, msg)

   	local self = player.pet_box

	if not player:UseItem(global.MaxPetItem, 1, "增加宠物梳理上限") then
		return false, ErrorID.ItemErr
	end
	
	self.max_pet = self.max_pet + 1
	
	msg.max_pet = self.max_pet
	self.user:SendCmdToMe(msg)
	return true
end

function PetBox.OnYinHunPet(player, msg)
	
	local self = player.pet_box

	local pet = self:FindPet(msg.id)
	if pet == nil then return false, ErrorID.NotFind end

	return pet:YinHun()

end

function PetBox.OnGuiYuanPet(player, msg)
   	local self = player.pet_box

	local pet = self:FindPet(msg.id)
	if pet == nil then return false, ErrorID.NotFind end

	return pet:GuiYuan(msg.adv)
end

function PetBox.OnTalentPet(player, msg)
    return true
end

function PetBox.OnReplaceTalentPet(player, msg)
   	local self = player.pet_box

	local pet = self:FindPet(msg.id)
	if pet == nil then return false, ErrorID.NotFind end
	
	return pet:ReplaceTalent()
end

function PetBox.OnLearnSkillPet(player, msg)
    return true
end

function PetBox.OnAddSkillPet(player, msg)
    return true
end

function PetBox.OnRemoveSkillPet(player, msg)
    return true
end

function PetBox.OnLockSkillPet(player, msg)
    return true
end

function PetBox.OnUpSkillPet(player, msg)
    return true
end

function PetBox.OnAttrPointPet(player, msg)
	
	local self = player.pet_box

	local pet = self:FindPet(msg.id)
	if pet == nil then return false, ErrorID.NotFind end
	
	return pet:SetAttrPoint(msg.attr_point)
end

function PetBox.OnUserDataPet(player, msg)
    return true
end

function PetBox.RegisterHandle()
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stAddPetUserCmd_S')] = PetBox.OnAddPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stRemovePetUserCmd_CS')] = PetBox.OnRemovePet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stLevelUpPetUserCmd_S')] = PetBox.OnLevelUpPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stAddLifePetUserCmd_C')] = PetBox.OnAddLifePet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stAddExpPetUserCmd_C')] = PetBox.OnAddExpPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stLifePetUserCmd_S')] = PetBox.OnLifePet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stExpPetUserCmd_S')] = PetBox.OnExpPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stChangeNamePetUserCmd_CS')] = PetBox.OnChangeNamePet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stAddMaxNumPetUserCmd_CS')] = PetBox.OnAddMaxNumPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stYinHunPetUserCmd_CS')] = PetBox.OnYinHunPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stGuiYuanPetUserCmd_C')] = PetBox.OnGuiYuanPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stTalentPetUserCmd_S')] = PetBox.OnTalentPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stReplaceTalentPetUserCmd_CS')] = PetBox.OnReplaceTalentPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stLearnSkillPetUserCmd_CS')] = PetBox.OnLearnSkillPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stAddSkillPetUserCmd_S')] = PetBox.OnAddSkillPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stRemoveSkillPetUserCmd_S')] = PetBox.OnRemoveSkillPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stLockSkillPetUserCmd_C')] = PetBox.OnLockSkillPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stUpSkillPetUserCmd_C')] = PetBox.OnUpSkillPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stAttrPointPetUserCmd_CS')] = PetBox.OnAttrPointPet
		HandleUserMsgFunc[GetMsgID('GameCmd.ClientCommand_PetUserCmd', 'GameCmd.PetUserCmd.stUserDataPetUserCmd_S')] = PetBox.OnUserDataPet
	
		--这个函数要放在所以注册消息之后
		SetErrorMsg('GameCmd.stErrorPetUserCmd_S', ErrorPetUserCmd)

end


