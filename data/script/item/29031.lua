--玫瑰花 增加亲密度
function OnUseItemEvent_29031(uid,thisid,targetid)
	--TODO 待实现
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29031") == VALUE_OK then
		s_sysInfo(uid,"使用玫瑰花，具体功能待实现",ChatPos_Sys + ChatPos_Important)
	end
end

