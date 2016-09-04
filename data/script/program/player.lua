local table = table
local PlayerManager = PlayerManager

function OnPlayerCheckIn(user, player_data)
	local uid = user:GetID()
	local player = Player(user)

	player:CheckIn(player_data)

	return true
end

function OnPlayerCheckOut(uid)
	LogDebug(uid, 'check out')
	local player = PlayerManager[uid]
	if player == nil then
		error('Can not find Player '..uid)
		return
	end
	player:CheckOut()
end

function OnPlayerSave(uid)
	LogDebug(uid, 'save')
	
	local player = PlayerManager[uid]
	if player == nil then
		error('Can not find Player '..uid)
		return
	end

	local player_data = CreateLuaProtoTable('GameCmd.SerializeUserLuaData')
	if player_data == nil then return end
	player_data.pet = player.pet_box:Save()
	player.user:SaveLuaData(player_data);
	player:CheckIn()
end

Player = Class('Player', function(self, user)
	self.user = user
	self.pet_box = 0
	self.id = user:GetID()
end)

function InitPlayerPet(player, pet_data)
	player.pet_box = PetBox(player, pet_data)
end

function Player:CheckIn(player_data)
	PlayerManager[self.id] = self 
-------------------宠物------------------------
	local pet_data = nil
	if player_data and player_data.pet then
		pet_data = player_data.pet
	end
	
	local call_ok, ret
	call_ok, ret = pcall(PetBox, self, pet_data)
	LogInfo('pcheck', call_ok, ret)	
	if call_ok == false then
		LogErr(ret)
	else
		self.pet_box =  ret
	end
	if self.pet_box == nil then
		LogErr('pet_box == nil user:'..self.id)
	else
		self.pet_box:SendToMe()
	end
-----------------------------------------------

end

function Player:CheckOut()
	PlayerManager[self.id] = nil
	
	local call_ok, err
	call_ok, err = pcall(PetBox.CheckOut, self.pet_box)
	
	if call_ok == false then
		LogErr(err)
	end
end

function Player:UseItem(item, num, des)
	return (c_deleteItemByBaseID(self.id, item, num, des) == VALUE_OK)
end

function Player:HaveItem(item, num)
	return (c_checkItem(self.id, item, num) == VALUE_OK)
end

function Player:SendCmdToSession(msg)
	self.user:sendCmdToSession(msg)
end
function Player:SendCmdToGateway(msg)
	self.user:sendCmdToGateway(msg)
end
function Player:SendCmdToMe(msg)
	LogErr('SendCmd', msg.proto_message_name)
	table.print(msg, 'mm')
	self.user:sendCmdToMe(msg)
end
function Player:sendCmdToNine(msg)
	self.user:sendCmdToMe(msg)
end
function Player:SendCmdToMap(msg)
	self.user:sendCmdToMap(msg)
end
function Player:SendUserCmdToGate(msg)
	self.user:sendUserCmdToGate(msg)
end
function Player:SendUserCmdToSession(msg)
	self.user:sendUserCmdToSession(msg)
end
function Player:SendUserCmdToRecord(msg)
	self.user:sendUserCmdToRecord(msg)
end
local function ddd()
end
function Player:SendUserCmdToSuper(msg)
	self.user:sendUserCmdToSuper(msg)
end








