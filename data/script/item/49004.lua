
function OnUseItemEvent_49004(uid,thisid,targetid)
	local msg = [[body(威格尔典狱长：blankline()   我是赏金猎人雷伊，水鸟赏金猎人团团长。曾经服役于佣兵界排名第二的南斗佣兵团。blankline()   争夺光明要塞的战斗已经结束，人类抵抗军大获全胜。南斗佣兵团也已经解散，团长沙奥萨流亡沙漠...blankline()   所以我建议典狱长大人，慈悲为怀，见好就收，不要赶尽杀绝，这样我将很乐意与典狱长大人分享我团一半的收入。blankline()   否则，大人晚上睡觉的时候还是警醒一些比较好，沙漠可是很危险的。blankline()        关心您生命安全的雷伊)]]






	msg=parseToTalk(msg)



	ShowNpcMenuBottomStyle(uid,msg)
end
