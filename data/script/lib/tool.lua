function ComfortTableItem(tb)
	for k,v in pairs(tb) do while true do
		if type(k) ~= 'string' then
			break
		end
		local all_char = pack(string.byte(k, 1, #k))
		local l = 0
		local is_number = false
		for i,c in ipairs(all_char) do
			if c >= 48 and c <= 57 then
				is_number = true
				break
			end
			l = l + 1;
		end
		if is_number then
			local name = string.sub(k, 1, l)
			if tb[name] == nil then
				tb[name] = {}
				for i = 0,1000 do
					local key = name..i
					if tb[key] == nil and i > 9 then break end
					table.insert(tb[name], tb[key])
				end
			elseif type(tb[name]) ~= 'table' then
				print('error key', name, type(tb[name]))
			end

		end
		break
	end end
end

function ComfortTable(tb)
	for k,v in pairs(tb) do
		if type(k) == 'number' then
			ComfortTableItem(v)
		end
	end
end

