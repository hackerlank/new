--侠盗信号弹召唤出的罗宾死亡
function OnNpcDeadEvent60995(mid,thisid)
	local curCountry = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_CURRENT_COUNTRY)
	if curCountry == nil or curCountry == 0 then
		s_worldInfo("无法获取当前npc当前所在国家",ChatPos_Important + ChatPos_Sys)
		return
	end
	local enemyCountry = s_getCountryVar(curCountry,1,116)
	if enemyCountry ~= 0 and enemyCountry ~= nil then
		local curCountryLostMoney = s_getCountryVar(curCountry,1,118)
		s_worldInfo("侠盗罗宾被击伤俘获，他运送的" .. curCountryLostMoney .. "银币被收回了<" .. s_getCountryName(curCountry) ..">金库",ChatPos_Important + ChatPos_Sys)

		local exp = 0
		local ninePlayerList = s_getNineEntry(SCENE_ENTRY_PLAYER,mid,30)
		for i = 1, table.getn(ninePlayerList), 2 do
			if s_getValue(SCENE_ENTRY_PLAYER,ninePlayerList[i+1],VALUE_TYPE_HOMELAND) == curCountry then
				exp = 200 * (50 + 0.1 * (s_getValue(SCENE_ENTRY_PLAYER,ninePlayerList[i+1],VALUE_TYPE_LEVEL) ^ 2.2))
			elseif s_getValue(SCENE_ENTRY_PLAYER,ninePlayerList[i+1],VALUE_TYPE_HOMELAND) == enemyCountry then
				exp = 100 * (50 + 0.1 * (s_getValue(SCENE_ENTRY_PLAYER,ninePlayerList[i+1],VALUE_TYPE_LEVEL) ^ 2.2))
			end
			s_refreshExp(ninePlayerList[i+1],exp,ExpType_OptionalTask,0)
		end

		local curCountryPlayerList = s_getCountryEntry(curCountry)
		local msg = "本次奇袭，虽然侠盗罗宾被逮捕了，但<" .. s_getCountryName(curCountry) .. ">还是损失了" .. s_getCountryVar(curCountry,1,118) .. "银币（次日凌晨1点结算）。"
		local buttons = "确定|3|Enter|取消|4|Esc|稍后|5|Esc"
		local fun = "OnConfirmMsg($1,$2)"

		for i = 1, table.getn(curCountryPlayerList) do
			s_registerMsgBox(curCountryPlayerList[i],func,buttons,msg,0,0,eAreaType_Right,eHideButtonType_GoldAttack,1)
		end

		local enemyCountryPlayerList = s_getCountryEntry(enemyCountry)
		for i = 1, table.getn(enemyCountryPlayerList) do
			s_registerMsgBox(enemyCountryPlayerList[i],func,buttons,msg,0,0,eAreaType_Right,eHideButtonType_GoldAttack,1)
		end

		--回收金库npc
		local sid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_CURRENT_COUNTRY)
		local treasury = s_getNpcByBaseID(sid,60997)
		if #treasury ~= 0 then
			for i = 1, #treasury do
				s_clearNpc(treasury[i])
			end
		end

		local enemy = s_getCountryVar(enemyCountry,1,119)
		s_closeRobinInterface(enemy)
		s_clearNpc(s_getVar(enemy,101,55))

		s_addCountryVar(curCountry,1,118,s_getCountryVar(curCountry,1,118) - s_getCountryVar(enemyCountry,1,117))
		s_addCountryVar(curCountry,1,120,0)
		s_addCountryVar(curCountry,1,121,0)
		s_addCountryVar(enemyCountry,1,117,0)
	end
end

RegisterMyNpcDeadEvent(60995,"OnNpcDeadEvent60995($1,$2)")
