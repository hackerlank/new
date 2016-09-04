--VIP2
function OnUseItemEvent_23063(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,128)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,129)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,130)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,131)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,129,1,31 * 86400)
	s_setViplevel(uid,2)
	s_incSmallPackNum(uid)
	--s_countryInfo(country,"<p><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n color=GXColorBlueSky>领取了VIP"..index.."</n><event hotkeyid=2 eid=100 cid=888 text=福利/></p>",ChatPos_Sys + ChatPos_Honor)
	return VALUE_OK
end

