--神像防御盾
function OnAddBuffEvent_20361(level,etype, eid,value)
	local absorb = { 3000,4000,5000,6500,7500,9000,10000,11500,13000,14500,16000}

	--[[value = absorb[level] * (100 + value * 1) / 100
	local percent = {10,12,14,16,18,20,22,24,26,28,30}]]--
	local hp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	--value = value + hp*percent[level]/100
	--value = 600000
	local value = hp*10/100
	s_setValue(etype,eid,VALUE_TYPE_ABSORB,value)
end

function OnRemoveBuffEvent_20361(level,etype,eid)
	s_setValue(etype,eid,VALUE_TYPE_ABSORB,0)
end
