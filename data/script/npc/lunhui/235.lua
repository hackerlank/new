NpcMenuInfo235 =
{
	talk = "<p><n>    很久很久以前，我就很喜欢听故事。开心、不开心、好玩、不好玩的，只要故事，我都喜欢。如今，老了，也经历了很多故事。但依然还能记得，抱着小熊流着鼻涕，侧耳倾听的那些声音。</n><newline/><n color='GXColorYellow'>  （人生转轮仅达到封印等级可进）</n></p>",
	button = {
		{"进入人生转轮(2)","NpcMenuInfo235:CreateCopyFateDice($1)","NpcMenuInfo235:ShowCopyFateDice($1)"},
		{"兑换奖励(7)","NpcMenuInfo235:ShowExchange($1)","NpcMenuInfo235:ShowCopyFateDice($1)"},
		{"传奇烙印说明(1)","ShowSimpleBookInterface($1,70208)"},
		{"生命的轮回说明(1)","ShowSimpleBookInterface($1,70209)"},
	}
}

--人类进程1不可进入，所以填了个进程1不存在的等级200占位用
local needLevel = { 200, 70, 80, 90, 100, 110, 120, 130, 140, 150 }

function NpcMenuInfo235:ShowExchange(uid)
	local info =
		{
			talk = "<p><n>    兑换奖励需要大量的故事书哦！请选择要兑换的奖励吧！</n></p>",
			button = {
				{"兑换1个传奇烙印（6本故事书）(7)","Exchangeitem_del6($1)"},
				{"兑换7个传奇烙印（42本故事书）(7)","Exchangeitem_del42($1)"},
				{"查看武器幻化道具（30本故事书）(7)","NpcMenuInfo235:ShowExchangeEquip($1)"},
				{"兑换矮人锤炼石（20本故事书）(7,0,1)","NpcMenuInfo235:DealEquipStone($1)"},
			--{"查看奥运活动武器幻化道具（30本故事书）(7)","NpcMenuInfo235:ShowExchangeEquip1($1)"},
			},
		}
	ShowNpcMenuByTable(uid,info)
end

function NpcMenuInfo235:ShowExchangeEquip(uid)
	local info =
		{
			talk = "<p><n>    兑换需30本故事书，幻化效果持续3天。</n></p>",
			button = {
				{"兑换战士之棒球棍(-1803)","NpcMenuInfo235:DealEquip1($1)"},
				{"兑换刺客之菜刀(-2803)","NpcMenuInfo235:DealEquip2($1)"},
				--{"兑换枪手之雨伞(-3803)","NpcMenuInfo235:DealEquip3($1)"},
				--{"兑换魔炮之吉他(-4803)","NpcMenuInfo235:DealEquip4($1)"},
				{"兑换法师之竹蜻蜓(-5803)","NpcMenuInfo235:DealEquip5($1)"},
				{"兑换牧师之棒棒糖(-6803)","NpcMenuInfo235:DealEquip6($1)"},
			},
		}
	ShowNpcMenuByTable(uid,info)
end

function NpcMenuInfo235:ShowExchangeEquip1(uid)
	local info =
		{
			talk = "<p><n>    兑换需30本故事书，幻化效果持续3天。</n></p>",
			button = {
				{"兑换战士之网球拍(-1804)","NpcMenuInfo235:DealEquip11($1)"},
				{"兑换刺客之乒乓球拍(-2804)","NpcMenuInfo235:DealEquip12($1)"},
				--{"兑换枪手之气步枪(-3804)","NpcMenuInfo235:DealEquip13($1)"},
				--{"兑换魔炮之皮划艇(-4804)","NpcMenuInfo235:DealEquip14($1)"},
				{"兑换法师之铁饼(-5804)","NpcMenuInfo235:DealEquip15($1)"},
				{"兑换牧师之曲棍球(-6804)","NpcMenuInfo235:DealEquip16($1)"},
			},
		}
	ShowNpcMenuByTable(uid,info)
end

------------------------------------------------------------------------------------------------
--普通副本进入条件
function NpcMenuInfo235:CreateCopyFateDice(uid)
	--[[local hour = s_getCurTime(TIME_CURHOURS)
	if hour < 12 then
	s_sysInfo(uid,"人生转轮每天12点到24点可进入",ChatPos_Sys + ChatPos_Important)
	return
	end]]--
	local count = s_getVar(uid,116,41)
	if count >= 1 then
		s_sysInfo(uid,"每天只能进入1次人生转轮",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	s_addVar(uid,116,41,count + 1)
	s_intoCopyCustomSingle(uid,1004,11,142,150)
	return VALUE_OK
end

------------------------------------------------------------------------------------------------
--副本可见
function NpcMenuInfo235:ShowCopyFateDice(uid)
	local worldlevel = s_getWorldLevel()
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level ~= needLevel[worldlevel] then
		return VALUE_FAIL
	end
	return VALUE_OK
end

------------------------------------------------------------------------------------------------
--兑换传奇烙印
function NpcMenuInfo235:DealBrand(uid)
	local msg = "您确定兑换1份传奇烙印？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc_GetBrand($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc_GetBrand(uid,result,baseid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level == 70 then lv = 1
	elseif level == 80 then lv = 2
	elseif level == 90 then lv = 3
	elseif level == 100 then lv = 4
	elseif level == 110 then lv = 5
	elseif level == 120 then lv = 6
	elseif level == 130 then lv = 7
	elseif level == 140 then lv = 8
	end
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,6) ~= VALUE_OK then
		s_sysInfo(uid,"需消耗6本故事书，才可兑换1份传奇烙印。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,6,"兑换传奇烙印") == VALUE_OK then
		s_addItem(uid,28001+lv,3,1,1,"1-1","兑换传奇烙印",0)
	end
end

--兑换传奇烙印*7
function NpcMenuInfo235:DealBrand7(uid)
	local msg = "您确定兑换7份传奇烙印？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc_GetBrand7($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc_GetBrand7(uid,result,baseid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level == 70 then lv = 1
	elseif level == 80 then lv = 2
	elseif level == 90 then lv = 3
	elseif level == 100 then lv = 4
	elseif level == 110 then lv = 5
	elseif level == 120 then lv = 6
	elseif level == 130 then lv = 7
	elseif level == 140 then lv = 8
	end
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,42) ~= VALUE_OK then
		s_sysInfo(uid,"需消耗42本故事书，才可兑换7份传奇烙印。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,42,"兑换传奇烙印") == VALUE_OK then
		s_addItem(uid,28001+lv,3,7,1,"1-1","兑换传奇烙印",0)
	end
end

--兑换1个传奇烙印
function Exchangeitem_del6(uid) return NpcMenuInfo235:DealBrand(uid) end
--兑换7个传奇烙印
function Exchangeitem_del42(uid) return NpcMenuInfo235:DealBrand7(uid) end
------------------------------------------------------------------------------------------------
--兑换战士棒球棍
function NpcMenuInfo235:DealEquip1(uid)
	local msg = "您确定兑换1份幻化道具，战士之棒球棍（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip1($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip1(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份战士之棒球棍。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换战士幻化武器") == VALUE_OK then
		s_addItem(uid,1803,3,1,1,"1-1,4-1,6-2,7-3","兑换战士幻化武器",0)
	end
end

--兑换刺客之菜刀
function NpcMenuInfo235:DealEquip2(uid)
	local msg = "您确定兑换1份幻化道具，刺客之菜刀（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip2($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip2(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份刺客之菜刀。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换幻化武器") == VALUE_OK then
		s_addItem(uid,2803,3,1,1,"1-1,4-1,6-2,7-3","兑换刺客幻化武器",0)
	end
end

--兑换枪手之雨伞
function NpcMenuInfo235:DealEquip3(uid)
	local msg = "您确定兑换1份幻化道具，枪手之雨伞（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip3($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip3(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份枪手之雨伞。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换枪手之雨伞") == VALUE_OK then
		s_addItem(uid,3803,3,1,1,"1-1,4-1,6-2,7-3","兑换枪手之雨伞",0)
	end
end

--兑换魔炮之吉他
function NpcMenuInfo235:DealEquip4(uid)
	local msg = "您确定兑换1份幻化道具，魔炮之吉他（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip4($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip4(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份魔炮之吉他。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换魔炮之吉他") == VALUE_OK then
		s_addItem(uid,4803,3,1,1,"1-1,4-1,6-2,7-3","兑换魔炮之吉他",0)
	end
end

--兑换法师之竹蜻蜓
function NpcMenuInfo235:DealEquip5(uid)
	local msg = "您确定兑换1份幻化道具，魔炮之吉他（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip5($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip5(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份魔炮之吉他。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换魔炮之吉他") == VALUE_OK then
		s_addItem(uid,5803,3,1,1,"1-1,4-1,6-2,7-3","兑换魔炮之吉他",0)
	end
end

--兑换牧师之棒棒糖
function NpcMenuInfo235:DealEquip6(uid)
	local msg = "您确定兑换1份幻化道具，牧师之棒棒糖（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip6($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip6(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份牧师之棒棒糖。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换牧师之棒棒糖") == VALUE_OK then
		s_addItem(uid,6803,3,1,1,"1-1,4-1,7-3,6-2","兑换牧师之棒棒糖",0)
	end
end

--兑换战士网球拍
function NpcMenuInfo235:DealEquip11(uid)
	local msg = "您确定兑换1份幻化道具，战士之网球拍（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip11($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip11(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份战士之网球拍。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换战士幻网球拍") == VALUE_OK then
		s_addItem(uid,1804,3,1,1,"1-1,4-1,6-2,7-3","兑换战士网球拍",0)
	end
end

--兑换刺客之乒乓球拍
function NpcMenuInfo235:DealEquip12(uid)
	local msg = "您确定兑换1份幻化道具，刺客之乒乓球拍（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip12($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip12(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份刺客之乒乓球拍。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换刺客乒乓球拍") == VALUE_OK then
		s_addItem(uid,2804,3,1,1,"1-1,4-1,6-2,7-3","兑换刺客乒乓球拍",0)
	end
end

--兑换枪手之气步枪
function NpcMenuInfo235:DealEquip13(uid)
	local msg = "您确定兑换1份幻化道具，枪手之气步枪（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip13($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip13(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份枪手之气步枪。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换枪手之气步枪") == VALUE_OK then
		s_addItem(uid,3804,3,1,1,"1-1,4-1,6-2,7-3","兑换枪手之气步枪",0)
	end
end

--兑换魔炮之皮划艇
function NpcMenuInfo235:DealEquip14(uid)
	local msg = "您确定兑换1份幻化道具，魔炮之皮划艇（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip14($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip14(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份皮划艇。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换魔炮之皮划艇") == VALUE_OK then
		s_addItem(uid,4804,3,1,1,"1-1,4-1,6-2,7-3","兑换魔炮之皮划艇",0)
	end
end

--兑换法师之铁饼
function NpcMenuInfo235:DealEquip15(uid)
	local msg = "您确定兑换1份幻化道具，魔炮之铁饼（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip15($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip15(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份魔炮之铁饼。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换魔炮之吉他") == VALUE_OK then
		s_addItem(uid,5804,3,1,1,"1-1,4-1,6-2,7-3","兑换魔炮之铁饼",0)
	end
end

--兑换牧师之曲棍
function NpcMenuInfo235:DealEquip16(uid)
	local msg = "您确定兑换1份幻化道具，牧师之曲棍（72小时）吗（需消耗30本故事书）？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquip16($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquip16(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,30) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书30本，才可兑换1份牧师之曲棍。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,30,"兑换牧师之曲棍") == VALUE_OK then
		s_addItem(uid,6804,3,1,1,"1-1,4-1,7-3,6-2","兑换牧师之曲棍",0)
	end
end

--兑换矮人锤炼石
function NpcMenuInfo235:DealEquipStone(uid)
	local count = s_getVar(uid,116,61)
	if count >= 3 then
		s_sysInfo(uid,"每天最多可兑换3个矮人的锤炼石",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local msg = "矮人锤炼石可提升装备养成度20点（需消耗20本故事书），是否需要兑换？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "Npc235_DealEquipStone($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function Npc235_DealEquipStone(uid,result,baseid)
	local count = s_getVar(uid,116,61)
	if result ~= Button_Yes then
		return
	end
	if s_checkItem(uid,28001,20) ~= VALUE_OK then
		s_sysInfo(uid,"需拥有故事书20本，才可兑换1份矮人锤炼石。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,20,"兑换矮人锤炼石") == VALUE_OK then
		s_addItem(uid,29069,3,1,1,"1-1","兑换1份矮人锤炼石",0)
		s_addVar(uid,116,61,count + 1)
		s_sysInfo(uid,"获得1枚矮人锤炼石，今日剩余"..2-count.."次",ChatPos_Sys + ChatPos_Important)
	end
end
