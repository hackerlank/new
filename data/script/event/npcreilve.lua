--怪物复活通知

function OnNpcReilveNotify_20001(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS剧毒沙加特散布着毒性粘液，将在10分钟后在迷雾废墟复活",ChatPos_Sys)
end
function OnNpcReilveNotify_20002(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS血腥电锯大吼一声：我回来了！，将在10分钟后在迷雾废墟复活",ChatPos_Sys)
end
function OnNpcReilveNotify_20003(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS火焰蜘蛛奥克浑身冒着熊熊烈焰，将在10分钟后在燃烧平原复活",ChatPos_Sys)
end
function OnNpcReilveNotify_20004(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS地狱守护重新汇聚了火焰的力量，将在10分钟后在燃烧平原复活",ChatPos_Sys)
end
function OnNpcReilveNotify_20005(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS骨灰萨尔偷取了神秘的宝物，将在10分钟后在光明城复活",ChatPos_Sys)
end
function OnNpcReilveNotify_20006(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS嗜血梅尔汲取了新鲜的血液，将在10分钟后在光明城复活",ChatPos_Sys)
end
function OnNpcReilveNotify_20008(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS死神巴特散发着死亡的气息，将在10分钟后在隐匿者丛林复活",ChatPos_Sys)
end
function OnNpcReilveNotify_20009(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS尸王赫拉蒂姆召唤了邪恶仆从，将在10分钟后在遗忘沙漠复活",ChatPos_Sys)
end

function OnNpcReilveNotify_20015(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS史莱姆泥浆破灭了虚空的禁锢，将在10分钟后在军乐城复活",ChatPos_Sys)
end

function OnNpcReilveNotify_20011(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS血魔卡迪瑞恩被鲜艳的血液所吸引，将在10分钟后在军乐城复活",ChatPos_Sys)
end

function OnNpcReilveNotify_20016(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS火焰领主烈焰，将在10分钟后在军乐城复活",ChatPos_Sys)
end

function OnNpcReilveNotify_20017(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS大地领主岩石，将在10分钟后在军乐城复活",ChatPos_Sys)
end

function OnNpcReilveNotify_20020(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS恐惧魔王斯巴鲁冲破地狱的禁锢，将在10分钟后在军乐城复活",ChatPos_Sys)
end

function OnNpcReilveNotify_20100(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS山岭巨人收到神的召唤，将在10分钟后在军乐城复活",ChatPos_Sys)
end

function OnNpcReilveNotify_20500(country,npcid)
	local cname = s_getCountryName(country)
	s_countryInfo(country,cname .. "的BOSS黑魔摩罗多姆打开了时空之门，将在10分钟后在中立区复活",ChatPos_Sys)
end

----------------------------------------------------以下是重生事件-------------------------------------------------
function OnNpcReilve_22989(cid,npcid)
	CopySceneInfo_75:GroupInfo(cid,1,"<p><n>【系】守方复活水晶重新力量出现了，守方复活点将转移至宫殿内，再次击破击破它吧！</n></p>")
	CopySceneInfo_75:GroupInfo(cid,2,"<p><n>【系】您国家的复活水晶重新充满力量出现了，守方复活点将转至宫殿内！</n></p>")
end

function OnNpcReilve_22990(cid,npcid)
	CopySceneInfo_75:GroupInfo(cid,1,"<p><n>【系】复活令旗再次充满力量出现了，官员请速度赶往刷新点拔旗帜！</n></p>")
	CopySceneInfo_75:GroupInfo(cid,2,"<p><n>【系】复活令旗再次出现在场上，做好防卫准备，阻截敌方拔旗！</n></p>")
end
