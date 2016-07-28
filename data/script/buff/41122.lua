--英俊潇洒
function OnHoldBuff_41122(level,etype,eid)
	local stype = s_getValue(etype,eid,VALUE_TYPE_SCENE_TYPE)
	if stype >= CopySceneType_Challenge and stype <= CopySceneType_Challenge5 then
		return
	end
	s_addValue(etype,eid,VALUE_TYPE_FORCE,300)
	s_addValue(etype,eid,VALUE_TYPE_LUCKY,300)
	s_addValue(etype,eid,VALUE_TYPE_IGNOREDEF,300)
end
