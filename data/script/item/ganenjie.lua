--[[
RoleTaskInfo3521 =
{
subtasknum = 1,

subtask1 =
{
--读条前的检查
oncheck =
{
{s_checkRolePosition, {2, 163, 314, 5, "<n color=GXColorBlueSky>请在</n><goto x=163 y=314 mapid=2 click=1/><n color=GXColorBlueSky>附近使用</n>"}},
},
onstartbar =
{
{s_actionSysInfo, {"开始读条", 34}},
},
onendbar =
{
{s_actionSysInfo, {"结束读条", 34}},
},
onsuccess =
{
{s_actionSysInfo, {"读条成功", 34}},
{s_actionAddBuff,{5044, 0, 15, 0}},
},
onfail =
{
{s_actionSysInfo, {"读条失败", 34}},
},
--使用道具
useitem = {31185,0,1,"1-1",0,3000,100,100},
task = {s_taskUseItem, {60019, 60019}},
onfinish =
{
{s_actionAddBuff,{5046, 0, 180}},
},
onaccept =
{
{s_actionOpenGuide,{3521}},

},
},
}]]--
--火鸡灯
function OnUseItemEvent_55241(uid,thisid,targetid)
local map,x,y = 3,384,338;
local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
if country ~= homeland then
	s_sysInfo(uid,"<p><n>似乎不是正确的国家呢！需前往本国的篝火堆</n><goto pos="..x..","..y.." mapid="..map.."/><n>附近使用火鸡笼哦！</n></p>",ChatPos_Sys + ChatPos_Important)
	return
end
if mapid ~= map then
	s_sysInfo(uid,"<p><n>似乎篝火堆不在这里哦！需前往</n><goto pos="..x..","..y.." mapid="..map.."/><n>附近使用火鸡笼哦！</n></p>",ChatPos_Sys + ChatPos_Important)
	return
end
if math.abs(posx - x) > 4 or math.abs(posy - y) > 2 then
	s_sysInfo(uid,"<p><n>好像还有不少距离啊！需前往篝火堆</n><goto pos="..x..","..y.." mapid="..map.."/><n>附近使用火鸡笼哦！</n></p>",ChatPos_Sys + ChatPos_Important)
	return VALUE_FAIL
end
if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
	return VALUE_FAIL
end
s_playClientLua(uid,22)
AddRoleTaskOperate(uid,50043)
CloseMainPackInterface(uid)
return VALUE_OK
end
