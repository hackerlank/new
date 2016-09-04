
function OnUseItemEvent_49005(uid,thisid,targetid)
	local msg = [[body(卡玛：blankline()   对不起，我错了。我从来就没有站在你的立场想过，请原谅我的任性胡闹，拜托了。blankline()               渴望被原谅的妮可)]]

	msg=parseToTalk(msg)

	ShowNpcMenuBottomStyle(uid,msg)
end
