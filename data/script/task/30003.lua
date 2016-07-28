--猎名师手札1
RoleTaskInfo30003 =
{
	ring = 20,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	taskID = 30003,
	--经验倍率
	rates = {1,2.5,4.5,8,8},
	--猎命手札 对应每10级一个
	info = {
		{47001, 10,	"TaskDesc30003_1"},
		{47001, 20,	"TaskDesc30003_2"},
		{47001, 30,	"TaskDesc30003_3"},
		{47001, 40,	"TaskDesc30003_4"},
		{47001,	50,	"TaskDesc30003_5"},
		{47001, 60,	"TaskDesc30003_6"},
		{47001, 70,	"TaskDesc30003_7"},
		{47001, 80,	"TaskDesc30003_8"},
		{47001,	90,	"TaskDesc30003_9"},
		{47001, 100,"TaskDesc30003_10"},
		{47001,	110,"TaskDesc30003_11"},
		{47001, 120,"TaskDesc30003_12"},
		{47001, 130,"TaskDesc30003_13"},
		{47001, 140,"TaskDesc30003_14"},
		{47001, 150,"TaskDesc30003_15"},
	},
}

--玩家变量
--11 怪物等级
--12 怪物数量

--获得打怪数量
function RoleTaskInfo30003:GetMonsterNum(uid)
	local num = s_getTaskValue(uid,self.taskID,TaskValue_State)
	if num ~= nil and num ~= 0 then
		return num
	end
	local NUMBER={30,40,40,50,50,60,60,60,60,60,60,60,60,60,60}--对应每10级一个
	local level = s_getTaskVar(uid,30003,11)
	if level == 0 then level = 10 end
	return NUMBER[level]
end

--任务描述
function RoleTaskInfo30003:GetSubTaskDescText(uid,taskid,subtaskid)
	local level = s_getTaskVar(uid,30003,11)
	local desc = ""
	for i = 1, table.getn(self.info) do
		if level*10 == self.info[i][2] then
			desc = self.info[i][3]
			break
		end
	end
	if desc ~= "" then
		desc = rawget(_G,desc)
	end
	local num = RoleTaskInfo30003:GetMonsterNum(uid) .."只"
	desc = string.gsub(desc,"$NUM",num)
	desc = parseToDesc(desc)
	return desc
end

--任务追踪
function RoleTaskInfo30003:GetTaskTraceText(uid)
	local level = s_getTaskVar(uid,30003,11)
	local num = s_getTaskValue(uid,self.taskID,TaskValue_State)
	if num == 0 or num == nil then
		num = RoleTaskInfo30003:GetMonsterNum(uid)
	end
	local msg = [[<p> <n>  杀死%d只%d级以上的怪物</n> </p>]]
	msg = string.format(msg,num,level*10)
	return msg
end

--任务经验
function RoleTaskInfo30003:GetTaskExp(uid)
	local color = s_getTaskValue(uid,self.taskID,TaskValue_Color)
	if color == nil then color = TaskColor_White end
	local monster_level = s_getTaskVar(uid,30003,11)
	local num = RoleTaskInfo30003:GetMonsterNum(uid)
	--15*(需求杀怪数量/30)*(50+0.1*怪物起始等级^2.2)*颜色加成
	local exp = math.floor(15*(num/30)*(50+0.1*monster_level*10^2.2)*self.rates[color+1])
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local worldlevel = s_getWorldLevel()
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countrystate = s_getCountryState(homeland)
	local rate = GetWorldLevelExp(level,worldlevel,countrystate)
	exp = exp + math.floor(exp*rate*0.01)
	local skilllevel = s_getskilllevel(SCENE_ENTRY_PLAYER, uid, 40511)
	local exptr = math.floor(exp*skilllevel*10/1000)
	return exp+exptr
end

function RoleTaskInfo30003:checkAccept(uid,itemid,thisid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_None then
		--[[
		local level = 10
		for i = 1, table.getn(self.info) do
		if itemid == self.info[i][1] then
		level = self.info[i][2]
		break
		end
		end
		if level ~= s_getTaskVar(uid,30003,11) then
		s_sysInfo(uid,"不可同时接受不同等级的猎命师手札任务")
		return VALUE_FAIL
		end
		]]
		local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
		if level < 10 or level > 159 then
			return VALUE_FAIL
		end
		local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
		if quality ~= s_getTaskValue(uid,self.taskID,TaskValue_Color) then
			s_sysInfo(uid,"不可同时接受不同品质的猎命师手札任务")
			return VALUE_FAIL
		end
		local lastnum = s_getTaskValue(uid,self.taskID,TaskValue_State)
		local NUMBER={30,40,40,50,50,60,60,60,60,60,60,60,60,60,60}--对应每10级一个
		local num = NUMBER[math.floor(level/10)]
		if lastnum >= num*5 then
			s_sysInfo(uid,"您已经使用了5张手札，手札每次仅允许叠加5张使用")
			return VALUE_FAIL
		end
	end
	return VALUE_OK
end

function RoleTaskInfo30003:AddTask(uid,quality,itemid)
	--[[
	local level = 10
	for i = 1, table.getn(self.info) do
	if itemid == self.info[i][1] then
	level = self.info[i][2]
	break
	end
	end
	]]
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 10 or level > 159 then
		return VALUE_FAIL
	end
	local NUMBER={30,40,40,50,50,60,60,60,60,60,60,60,60,60,60}--对应每10级一个
	local num = NUMBER[math.floor(level/10)]
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_None then
		if AddRoleSubTask(uid,30003,1,num,0,quality) ~= VALUE_OK then
			return VALUE_FAIL
		end
	else
		local last = s_getTaskValue(uid,self.taskID,TaskValue_State)
		s_setTaskValue(uid,self.taskID,TaskValue_State,num+last)
		s_refreshTaskTrace(uid,30003,RoleTaskInfo30003:GetTaskTraceText(uid))
	end
	s_addTaskVar(uid,30003,11,math.floor(level/10))
	s_addTaskVar(uid,30003,MvarIndex_Exp,0) --重新刷新经验
	local desc = GetSubTaskDescText(uid,self.taskID,1)
	s_setTaskValue(uid,30003,TaskValue_Desc,desc,1)
	return VALUE_OK
end

function RoleTaskInfo30003:AddRoleTaskOperate(uid,level)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return
	end
	local monster_level = s_getTaskVar(uid,30003,11)
	if level < monster_level*10 then
		return
	end
	AddRoleTaskOperate(uid,self.taskID)
	process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_CanDone then
		local exp = GetTaskExp(uid,self.taskID)
		--给予弹框提示
		local level = s_getTaskVar(uid,30003,11)
		local color = s_getTaskValue(uid,30003,TaskValue_Color)
		local colors = {"白","蓝","黄","绿","紫"}
		local msg = string.format("完成%s色猎命师手札(%u级),获得经验%u点。",colors[color+1],level*10,exp)
		s_sysInfo(uid,msg,0)
		FinishRoleTask(uid,self.taskID)
	end
end

RegisterNpcDeadLevelEvent("RoleTaskInfo30003:AddRoleTaskOperate($1,$2)")

--//====================================================================//--
--任务描述
TaskDesc30003_1 = [[
title(猎命师手札)
body(    杀死$NUM10级以上的变异生物。blankline()hot2(任务描述:)blankline()   如果有人看到这封手札，说明我又一次失败了。我什么都无法阻止，一切都未曾改变。blankline()   我将所知的一切写在这本手札上，以在我失败之后，后来人能得知我所知道的一切，以及这场灾难的起源。这封手札的内容如果让弱者得知，不过是平添无谓的牺牲。blankline()   所以我把手札分成册，并做了一些手脚。如果你能看到这份手札，你将担负起拯救人类的重任，上帝也将为你祝福。blankline()   杀死$NUM10级以上的变异生物，你得到的将比你付出的更多。)
]]
TaskDesc30003_2 = [[
title(猎命师手札)
body(
   杀死$NUMhot(20级以上)的变异生物。blankline()hot2(任务描述:)blankline()
   首先自我介绍，我叫符灿，职业猎命师，出生于东方大陆。blankline()   我拥有一种独特的能力，这种能力使我可以一直追寻大灾难的起源。我发现人类并不是唯一被自身力量所灭绝的文明，在人类诞生之前，地球上至少有5个史前文明被自身灭绝。最寻被毁灭的文明，发现诸神与上帝的真相。player(),我们都是被选定的人，我们拥有相同的宿命。blankline()   杀死$NUM20级以上的变异生物，你得到的将比你付出的更多。)]]

TaskDesc30003_3 = [[
title(猎命师手札)
body(
   杀死$NUMhot(30级以上)的变异生物。blankline()
   史前文明的毁灭并非无迹可寻，早在1968年，人类便曾经在三叶虫的化石中发现了史前人类的足迹。在希腊神话中关于人类黄金时代、白银时代、青铜时代、黑铁时代是真正存在的。blankline(   )那是远古文明在遭遇毁灭后留下的蛛丝马迹。blankline()   传说诸神为毁灭人类文明，制造了一名潘多拉的女子。诸神每人赠予潘多拉一个礼物以便她引诱人类。当潘多拉在人间打开魔盒时，瘟疫、灾难、战争开始在人间散布。传说中同情人类的雅典娜在潘多拉的盒子中偷偷放入了“希望”，人类才得以挣扎生存。blankline()   并不是所有神话都是子乌虚有，这些先人留下的种子也许就是我们自我救赎的线索。杀死$NUM30级以上的变异生物，你得到的将比你付出的更多。)]]

TaskDesc30003_4 = [[
title(猎命师手札)
body(
   杀死$NUMhot(40级以上)的变异生物。blankline()hot2(任务描述:)blankline()
   历史只能被观看，不能被修正。blankline()   这就是所谓的“命”。blankline()   而猎命师便是自人类智慧开启以来一直试图逆天改命的一族。blankline()   我们以狙杀“命运”，让人类自己掌握历史发展的轨迹为毕生的追求。至今为止，没有人成功过。我们将我们所看到的命运记录下来，代代相传，希望有一天可以有人实现我们的终极梦想。blankline()   杀死$NUM40级以上的变异生物，你得到的将比你付出的更多。) ]]

TaskDesc30003_5 = [[
title(猎命师手札)
body(
   杀死$NUM50级以上的变异生物。blankline()hot2(任务描述:)blankline()
   大地从激烈的造山运动中安静下来后不久，地球上便诞生了第一文明，关于这个文明的描述只存在于世界各族先知的零星描述中。他们被追索古文明的学者称为——根达亚文明，即白银时代。blankline()   这个时代的人类拥有着丰富的物产，男人的额头中央的第三只眼拥有着超自然的能力，而女人没有。blankline()   他们的文明灭绝于第一个太阳历末期，人心的腐化堕落是他们毁灭的根源。在他们的灭亡的过程中，源自地下世界文明的引诱在其中起到了推波助澜的作用。blankline()   杀死$NUM50级以上的变异生物，你得到的将比你付出的更多。) ]]

TaskDesc30003_6 = [[
title(猎命师手札)
body(
   杀死$NUMhot(60级以上)的变异生物。blankline()hot2(任务描述:)blankline()
   在根达亚文明消失后不久，地球上出现了第二个古文明。blankline()   这个文明是上个文明的逃亡者的继续。但是人们将以前的事情忘记了，超能力也渐渐消失。男性的第三只眼开始消失。他们对于饮食特别爱好，发展出各色各样的专家。这次文明诞生于南极大陆，毁于地区的磁极转换。杀这个文明被追索古文明的学者称为——米索不达亚文明，即青铜时代。blankline()   死$NUM60级以上的变异生物，你得到的将比你付出的更多。) ]]

TaskDesc30003_7 = [[
title(猎命师手札)
body(
   杀死$NUMhot(70级以上)的变异生物。blankline()hot2(任务描述:)blankline()
   地球上兴起的第三个文明依旧是上个文明逃亡者的延续。blankline()   他们的祖先开始注意到植物在发芽时产生的能量。这个能量非常巨大，经过一个世纪的改良发明了利用植物能的机械。这种机械可以提供大量的能量，该文明毁于大陆的沉没。这个文明被追索古文明的学者称为——穆利亚文明，即传说中的黑铁时代。blankline()   死$NUM70级以上的变异生物，你得到的将比你付出的更多。)]]

TaskDesc30003_8 = [[
title(猎命师手札)
body(
   杀死$NUM80级以上的变异生物。blankline()hot2(任务描述:)blankline()
   亚特兰蒂斯文明，早在穆利亚文明时期就已来到地球。他们继承了第三个文明。之所以称为继承，而不是延续是因为，亚特兰蒂斯来自猎户座的殖民者者，他们拥有光的能力，又被称为光的文明。Blankline()   该文明同样毁于大陆沉没，古代的猎命师前辈柏拉图有过关于该文明的详细记载。blankline()   杀死$NUM80级以上的变异生物，你得到的将比你付出的更多。)]]

TaskDesc30003_9 = [[
title(猎命师手札)
body(
   杀死$NUM90级以上的变异生物。blankline()hot2(任务描述:)blankline()
   我们的文明，由于会使用情感，被称为情感文明。blankline()   灭绝开始于2012年12月冬至，至2046年核灭绝结束。blankline()   由远古传承至今的猎命师一族，以猎杀人类终将灭亡的命运为最高目标。截至目前，我们是失败者。blankline()   只要活着，就还有希望，player()，不要惊讶于我知道你的名字，你就是下一个猎命师！blankline()
   杀死$NUM90级以上的变异生物，你将得到远古传承而来的祝福。)]]

TaskDesc30003_10 = [[
title(猎命师手札)
body(
   杀死$NUM100级以上的变异生物。blankline()hot2(任务描述:)blankline()
   自古至今，也许称谓不同，但是在追寻毁灭的命运并最终得以逃脱的人中，也许并非没有成功者。生存于墨西哥尤卡坦半岛的玛雅一族是最有可能的成功者。blankline()   玛雅文明是南美洲古代印第安人文明。玛雅文明约形成于公元前1500年，公园前400年左右建立早期奴隶制国家，公元3~9世纪为繁盛期，15世纪时不知所踪。blankline()   杀死$NUM100级以上的变异生物，你将得到远古传承而来的祝福。)]]

TaskDesc30003_11 = [[
title(猎命师手札)
body(
   杀死$NUM110级以上的变异生物。blankline()hot2(任务描述:)blankline()
   玛雅文明的天文、数学达到了很高的成就。这一点很重要，因为地球文明的破灭，往往都与太阳的异常活跃有关。blankline()   在天文方面，玛雅人已经掌握了日、月、金星等运行规律，并创造了太阳历与圣年历两种历法。blankline()   而在数学方面，玛雅人使用“0”的概念比欧洲人早800余年，计数使用20进制，他们的文字被认为记录了世界灭亡的秘密，可惜一直未能释读。blankline()
   杀死$NUM110级以上的变异生物，你将得到远古传承而来的祝福。)]]

TaskDesc30003_12 = [[
title(猎命师手札)
body(
   杀死$NUM120级以上的变异生物。blankline()hot2(任务描述:)blankline()
   玛雅人并非如传说中的那样热爱和平，相反，在公元300-700年玛雅文明的全盛时期，毗邻城邦的玛雅贵族一直在进行着争夺权力的战争。战卒们用矛和棒作兵器，袭击其他城市，争夺珠宝、奢侈品、王权、美女…blankline()   战争永无止境，生灵涂炭，贸易中断，城毁乡灭，最后只有10%的人幸存了下来，他们与我们，并无差别。blankline()   杀死$NUM120级以上的变异生物，你将得到远古传承而来的祝福。)]]

TaskDesc30003_13 = [[
title(猎命师手札)
body(
   杀死$NUM130级以上的变异生物。blankline()hot2(任务描述:)blankline()
   在玛雅的历法中，有一种叫做“卓金历”的历法，这种历法以一年为260天计算，但奇怪的是，在太阳系内却没有一个适用该历法的星球。依照这种历法，这颗行星的大致位置应该在金星和地球之间。然而在那里，是一片茫茫的小行星带。blankline()   正如世界各民族远古传说中的那样，有客自天外天降临。在母星爆炸成小行星带后，幸存者们来到了地球。blankline()
   杀死$NUM130级以上的变异生物，你将得到远古传承而来的祝福。)]]

TaskDesc30003_14 = [[
title(猎命师手札)
body(
   杀死$NUM140级以上的变异生物。blankline()hot2(任务描述:)blankline()
   在玛雅的历法中，有一种叫做“卓金历”的历法，这种历法以一年为260天计算，但奇怪的是，在太阳系内却没有一个适用该历法的星球。依照这种历法，这颗行星的大致位置应该在金星和地球之间。然而在那里，是一片茫茫的小行星带。blankline()   正如世界各民族远古传说中的那样，有客自天外天降临。在母星爆炸成小行星带后，幸存者们来到了地球。blankline()
   杀死$NUM140级以上的变异生物，你将得到远古传承而来的祝福。)]]

TaskDesc30003_15 = [[
title(猎命师手札)
body(
   杀死$NUM150级以上的变异生物。blankline()hot2(任务描述:)blankline()
   在玛雅的历法中，有一种叫做“卓金历”的历法，这种历法以一年为260天计算，但奇怪的是，在太阳系内却没有一个适用该历法的星球。依照这种历法，这颗行星的大致位置应该在金星和地球之间。然而在那里，是一片茫茫的小行星带。blankline()   正如世界各民族远古传说中的那样，有客自天外天降临。在母星爆炸成小行星带后，幸存者们来到了地球。blankline()
   杀死$NUM150级以上的变异生物，你将得到远古传承而来的祝福。)]]   
