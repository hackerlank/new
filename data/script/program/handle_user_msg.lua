local HandleUserMsgFunc = HandleUserMsgFunc
local HandleFuncErrorMsg = HandleFuncErrorMsg
local PlayerManager = PlayerManager

function HandleUserProtoMsg(id, msg_id, msg)
	LogInfo('HandleUserProtoMsg', id, msg_id, msg)
	table.print(msg, 'mm')
	local handle_func = HandleUserMsgFunc[msg_id]
	if handle_func == nil then
		LogErr('Do not regiser msg', GetMsgName('GameCmd.ClientCommand', id))
		return false 
	end
	local player = PlayerManager[id]
	if player == nil then
		LogErr('Can not find Player', id)
		return false
	end
	local handle_ok, error_no = handle_func(player, msg)
	if not handle_ok then
		--发送错误
		local err_msg = HandleFuncErrorMsg[handle_func]
		if err_msg ~= nil then
			err_msg.msg_id = msg_id
			err_msg.error_no = error_no
			if error_no == nil then
				err_msg.error_no = 1 -- 1是默认的未知错误
			end
			player:SendCmdToMe(err_msg)
		end
	end
	return handle_ok
end
