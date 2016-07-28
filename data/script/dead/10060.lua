--丛林之眼
function OnNpcDeadEvent10060(thisid,mid)
	if math.random(1,100) <= 5 then
		OnUseSkill_7014(1,SCENE_ENTRY_NPC,thisid,SCENE_ENTRY_PLAYER,mid)
	end
end
s_setNpcDeadEvent(10060)
