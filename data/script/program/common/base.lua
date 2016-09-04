local string = string

PlayerManager = PlayerManager or {}
PetManager = PetManager or {}
HandleUserMsgFunc = {} --刷新的时候 需要清空
HandleFuncErrorMsg = {}
ErrorPetUserCmd = {}
AddPetAction = EnumToLua('GameCmd.AddPetAction')

function SetErrorMsg(proto, ErrorID)
	local mt, err_msg = CreateLuaProtoTable(proto)
	for _, f in pairs(HandleUserMsgFunc) do
		if HandleFuncErrorMsg[f] == nil then
			HandleFuncErrorMsg[f] = err_msg
		end
	end
	local error_enum = string.gsub(proto, '%.st', '.')
	error_enum = string.gsub(error_enum, '_S', '')
	local errorID = EnumToLua(error_enum)
	for k, v in pairs(errorID) do
		--修改key把前面的模块名去掉
		k = string.sub(k, string.find(k, '_') + 1, #k)
		ErrorID[k] = v
	end
end
