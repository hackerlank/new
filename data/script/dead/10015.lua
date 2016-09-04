--爆破野蛮人
function OnNpcDeadEvent10015(thisid,mid)
	if math.random(1,100) >= 90 then
		OnUseSkill_6023(1,SCENE_ENTRY_NPC,thisid,SCENE_ENTRY_PLAYER,mid)
	end
end
s_setNpcDeadEvent(10015)
