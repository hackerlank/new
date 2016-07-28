--捕兽夹
function OnUseItemEvent_31007(uid,thisid)
	local map = 195
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)



	if mapid ~= map then
		s_sysInfo(uid,"<p><n>似乎螃蟹不在这个地图哦！需前往普莉斯神殿使用捕兽夹哦！</n></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	if posx < 14 or posx > 85 then
		s_sysInfo(uid,"<p><n>好像还有不少距离啊！需前往无尽深渊处使用捕兽夹哦！</n></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if posy < 56 or posy > 105 then
		s_sysInfo(uid,"<p><n>好像还有不少距离啊！需前往无尽深渊处使用捕兽夹哦！</n></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	s_showbar(uid,5000,"OnUseItem_31007("..uid..","..thisid..")",UninterruptActionType_TASK,1)
	return VALUE_OK
end

function OnUseItem_31007(uid,itemid)
	if s_deleteItemByThisID(uid,itemid,1,"OnUseItem_31007") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = 60160
	local npc = s_summon(SCENE_ENTRY_PLAYER,uid,npcid,0,1)
	if npc ~= nil and npc ~= 0 then
		s_setValue(SCENE_ENTRY_NPC,npc,VALUE_TYPE_MASTER,uid)
		s_setValue(SCENE_ENTRY_NPC,npc,VALUE_TYPE_LIFE,3*60*1000)
	end
end
