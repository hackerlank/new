--告别信
function OnUseItemEvent_49001(uid,thisid,targetid)
	local msg = [[<p><n>艾薇儿,</n></p><p><n>	我是迈克，那个在船头持枪站岗的哨兵。</n></p><p><n>	在这17年间，我无时无刻不被那些痛苦的记忆所纠缠。在黑暗而冰冷的宇宙中，只有你的笑让我感到温暖。</n></p><p><n>	上帝给了我17年的时间，静静的看着你。本不该再有所奢求，但是，我想，至少要让你知道我的名字...就算只记住一秒钟也好。</n></p><p><n>    逃走的人终将再次战斗，是时候重返地球了。</n></p><p><n>   请珍重。</n></p>]]
	ShowNpcMenuBottomStyle(uid,msg)
end
