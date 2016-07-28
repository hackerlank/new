--死而复生
function OnHoldBuff_10414(level,etype,eid)
--[[
if s_getValue(etype,eid,VALUE_TYPE_HP) == 0 then
local msg ="是否选择死而复生?"
local func = "DeadToLive($1,$2)"
local buttons = "确定|3|Enter|取消|4|Esc"
s_registerMsgBox(eid,func,buttons,msg)
end
]]
end

function OnLoopBuffEvent_1Sec_10414(level,etype,eid)
--[[
if s_getValue(etype,eid,VALUE_TYPE_HP) == 0 then
local times = s_getVar(eid,1,21)
if times == 0 then
local msg ="是否选择死而复生?"
local func = "DeadToLive($1,$2)"
local buttons = "确定|3|Enter|取消|4|Esc"
s_registerMsgBox(eid,func,buttons,msg)
s_addVar(eid,1,21,1)
end
end
]]
end

function DeadToLive(uid,result)
--[[
if result == Button_Yes then
local maxhp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXHP)
local maxsp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAXSP)
s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP,maxhp)
s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SP,maxsp)
local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
local posx= s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
s_gomap(uid,country,map,posx,posy)
s_removebuff(SCENE_ENTRY_PLAYER,uid,10414)
else
s_removebuff(SCENE_ENTRY_PLAYER,uid,10414)
s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP,0)
end
s_addVar(uid,1,21,0)
]]
end
