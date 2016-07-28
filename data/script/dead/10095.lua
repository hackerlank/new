--沙漠僵尸
function OnNpcDeadEvent10095(thisid,mid)
	if math.random(1,100) <= 10 then
		OnUseSkill_7043(1,SCENE_ENTRY_NPC,thisid,SCENE_ENTRY_PLAYER,mid)
	end
end
s_setNpcDeadEvent(10095)
