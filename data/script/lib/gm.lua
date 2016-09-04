local GM_CMD = {
	['AddPet'] = true,
	['AddPetExp'] = true,
}

cur_gm = nil
function DoGMCommand(user, param)
	cur_gm = user
	local args = string.split(param, '(')
	if #args == 0 then return false end
	local func = args[1]
	if GM_CMD[func] == nil then
		return false
	end
	local gm_cmd = 'return '..param
	local f = loadstring(gm_cmd)
	return f()
end

function AddPet(pet_id)
-----------------------
	local user = cur_gm
	cur_gm = nil
-----------------------
	if CreatePet(user:GetID(), pet_id) then
		return VALUE_OK
	end

end

function AddPetExp(idx, exp)
-----------------------
	local user = cur_gm
	cur_gm = nil
-----------------------
	if exp == nil then return end

	local player = PlayerManager[user:GetID()]
	if player == nil then return end

	local pet = player.pet_box.pet_list[idx]
	if pet == nil then return end

	pet:AddExp(exp)
	return VALUE_OK
end
