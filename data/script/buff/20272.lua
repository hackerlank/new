--金库奇袭敌国召唤出的侠盗罗宾周围光环效果
--这里的buf只是为了区别玩家是否处于光环作用下，并无实际的效果增加,真正的光环效果在SceneUser中处理杀人增加荣誉值和功勋时体现
function OnLoopBuffEvent_5Sec_20272(level, etype, eid)
	local Robincountry = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_NPC_COUNTRY)
	local list = s_getNineEntry(etype,eid,30)
	for i = 1, table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER then
			--local country = s_getValue(list[i],list[i+1],VALUE_TYPE_HOMELAND)
			if s_getbufflevel(list[i],list[i+1],20273) ~= 0 then
				s_updateBuffTime(list[i],list[i+1],20273,10)
			else
				s_addbuff(SCENE_ENTRY_PLAYER,list[i+1],20273,1,10)
			end
		end
	end
end

function OnHoldBuff_20272(level,etype,eid)
	OnHoldBuff_20273(level,etype,eid)
end
