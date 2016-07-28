--全局配置
--
GlobalConst = {
	Const_PlayerResistRatio = 0.0025,		--人物抵抗系数
	Const_NpcResistRatio = 0.001,			--npc抵抗系数
	Const_ResistMax = 9500,					--抵抗最大值,万分比

------------------------------宠物------------------------------------
	--等级潜修系数
	LevelArg = 3,
	--成长潜修系数
	GradeArg = {10000, 6, 3, 2, 1.5},
	--成长属性系数
	GradeAttr = {1, 1.02, 1.04, 1.06, 1.08},
	--a)	体质生命转换系数 
	Tizhi2HP = 15,
	--a)	力量物攻转换系数
	Lilang2Pdam = 2.5,
	--a)	智力法攻转换系数
	Zhili2Mdam = 2.5,
	--a)	体质物防转换系数
	Tizhi2Pdef = 18,
	--a)	精神法防转换系数 
	Jingshen2Mdef = 18,
	--a)	敏捷命中转换系数 
	Minjie2Hit = 0.05,
	--b)	命中初始加成值 
	HitInit = 40,
	--c)	命中修正系数 
	HitFix = 20,
	--a)	敏捷回避转换系数 
	Minjie2Hide = 0.03,
	--b)	回避初始加成值 
	HideInit = 2,
	--c)	回避修正系数 
	HideFix = 20,
	--a)	敏捷物爆转换系数 
	Minjie2Plucky = 0.04,
	--b)	物理致命基础附加值 
	PluckyInit = 0.01,
	--a)	智力法爆转换系数 
	Zhili2Mlucky = 0.04,
	--b)	法术致命基础附加值 
	MluckyInit = 0.01,

	--增加寿命道具
	LifeItem = {
		--[物品id] = 增加寿命数
		[14] = 1000, 
		[14] = 1000, 
	},

	--增加经验道具
	ExpItem = {
		--[物品id] = 增加经验数
		[14] = 1000, 
		[14] = 1000, 
	},

	--宠物上限 初值
	MaxPetInit = 5,
	--增加宠物数量上限的道具
	MaxPetItem = 14,
	--引魂成功率=目前灵气/灵气上限/暴击概率除系数，公式在全局配置中修改
	YHTryLevelUp = function(exp, lvup_exp)
		local hit = exp / lvup_exp / 2
		return math.random() < hit
	end,

	GYItem =  {
	--初级 中级 高级 神兽归元丹
		[true] = {14, 14, 14, 14},
	--初级 中级 高级 神兽天赋丹
		[false] = {14, 14, 14, 14},
	},
	

----------------------------------------------------------
}
