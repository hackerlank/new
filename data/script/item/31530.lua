--青叶粽子
function OnUseItemEvent_31530(uid,thisid)
	local fun = "OnUseItemEvent_Callback_31530($1,"..thisid..")"
	s_showbar(uid,3000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_31530(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,100)
	if rand <= 5 then
		s_addItem(uid,30032,0,1,0,"1-1","奥运圣火")--烟花
	elseif rand <= 10 then
		s_addItem(uid,30033,0,1,0,"1-1","奥运圣火")--烟花
	elseif rand <= 15 then
		s_addItem(uid,23061,0,1,0,"1-1","奥运圣火")--寄养证
	elseif rand <= 20 then
		s_addItem(uid,29031,0,1,0,"1-1","奥运圣火")--红玫瑰
	elseif rand <= 25 then
		s_addItem(uid,10,0,1,0,"1-1","奥运圣火")--100赠点
	elseif rand <= 26 then
		s_addItem(uid,27201,0,2,0,"1-1","奥运圣火")--镶嵌宝石
	elseif rand <= 27 then
		s_addItem(uid,27211,0,2,0,"1-1","奥运圣火")--镶嵌宝石
	elseif rand <= 28 then
		s_addItem(uid,27221,0,2,0,"1-1","奥运圣火")--镶嵌宝石
	elseif rand <= 29 then
		s_addItem(uid,27231,0,2,0,"1-1","奥运圣火")--镶嵌宝石
	elseif rand <= 30 then
		s_addItem(uid,27241,0,2,0,"1-1","奥运圣火")--镶嵌宝石
	elseif rand <= 35 then
		s_addItem(uid,31399,0,2,0,"1-1","奥运圣火")--高级魔法扑克盒
	elseif rand <= 40 then
		s_addItem(uid,31480,0,2,0,"1-1","奥运圣火")--占星卡
	elseif rand <= 45 then
		s_addItem(uid,29052,0,1,0,"1-1","奥运圣火")--金水壶
	elseif rand <= 50 then
		s_addItem(uid,29001,0,1,0,"1-1","奥运圣火")--远行囊（12格）
	elseif rand <= 55 then
		s_addItem(uid,26130,0,6,0,"1-1","奥运圣火")--命运骰子
	elseif rand <= 60 then
		local itemid = 26102
		local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
		if level > 60 then itemid = 26102 end
		s_addItem(uid,itemid,0,1,0,"1-1","奥运圣火")--幸运宝石
	elseif rand <= 65 then
		s_addItem(uid,43011,0,10,0,"1-1","奥运圣火")--宠物经验药（小）
	elseif rand <= 66 then
		s_addItem(uid,2804,3,1,1,"1-1,4-1,6-2,7-3","奥运圣火")--奥运武器幻化
	elseif rand <= 71 then
		local profession = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
		if profession < 1 or profession > 6 then
			profession = 1
		end
		professionitem = profession	* 1000 + 804
		s_addItem(uid,professionitem,3,1,1,"1-1,4-1,6-2,7-3","奥运圣火")--奥运武器幻化
	else
		s_addItem(uid,31531,0,1,0,"1-1","奥运圣火")--奥运小徽章
	end
	return VALUE_OK
end
