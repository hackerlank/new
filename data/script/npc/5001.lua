--新手村方向
NpcMenuInfo5001 =
{
	talk = "传送阵<p><n color='GXColorTab'>  测试地图：</n><n>当前所处场景，适合</n><n color='GXColorGreen'>0-30级玩家</n><newline/><n color='GXColorTab'> 新手村：</n><n>  适合</n><n color='GXColorGreen'>0-30级玩家</n></p>",
	button = {
		{"测试村(1)","GoMapWithFee($1,1,0,1,41,75)","NpcMenuInfo5001:Show($1)"},
	}
}
RegisterMoneyTransmissionNpc(5001)

function NpcMenuInfo5001:Show(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 1 then
		return VALUE_FAIL
	end
	return VALUE_OK
end
