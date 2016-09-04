--传送NPC
-- 传送NPC talk 起始都要包含“传送NPC”
--新手村方向
NpcMenuInfo5002 =
{
	talk = "传送NPC<p><n color='GXColorTab'>  测试地图：</n><n>当前所处场景，适合</n><n color='GXColorGreen'>0-30级玩家</n><newline/><n color='GXColorTab'> 新手村：</n><n>  适合</n><n color='GXColorGreen'>0-30级玩家</n></p>",

	button = {
		{"新手村(2)","GoMapWithFee($1,1,0,2,106,46)","NpcMenuInfo5002:Show($1)"},
		{"测试地图(1)","GoMapWithFee($1,1,0,1,68,48)","NpcMenuInfo5002:Show($1)"},
	}
}
RegisterMoneyTransmissionNpc(5002)

function NpcMenuInfo5002:Show(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 1 then
		return VALUE_FAIL
	end
	return VALUE_OK
end
