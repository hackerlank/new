--玩家获得物品事件
function OnGetItemEvent(uid,baseid,itemid)
	if GetItemEventTable == nil or GetItemEventTable[baseid] == nil then
		return
	end
	for i =1 , table.getn(GetItemEventTable[baseid]) do
		local fun = GetItemEventTable[baseid][i]
		if type(fun) == "function" then
			fun(uid,itemid)
		elseif type(fun) == "string" then
			local call = StringToFunction(fun)
			if call ~= nil then
				call(uid,baseid,itemid)
			end
		end
	end
end

function RegisterGetItemEvent(itembaseid,callback)
	if GetItemEventTable == nil then
		GetItemEventTable = {}
	end
	if GetItemEventTable[itembaseid] == nil then
		GetItemEventTable[itembaseid] = {}
	end
	table.insert(GetItemEventTable[itembaseid],callback)
	return VALUE_OK
end
