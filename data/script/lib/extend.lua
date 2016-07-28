local table = table
local string = string
local math = math

-- 通用lua扩充函数，与任何游戏逻辑无关

-- from http://snippets.luacode.org/?p=snippets/String_to_Hex_String_68
string.tohex = function(str, spacer)
	return  string.gsub(str,"(.)", function (c) return string.format("%02X%s", string.byte(c), spacer or "") end)
end

string.trim = function(str)
	return string.gsub(str, "^%s*(.-)%s*$", "%1")
end
string.trimbegin = function(str)
	return string.gsub(str, "^%s*(.-)$", "%1")
end
string.trimend = function(str)
	return string.gsub(str, "^(.-)%s*$", "%1")
end

string.padleft = function(str, total_width, padding_char)
	local len = #str
	if len >= total_width then
		return str
	else
		padding_char = padding_char or ' '
		assert(#padding_char == 1)
		return string.rep(padding_char, total_width - len) .. str
	end
end
string.padright = function(str, total_width, padding_char)
	local len = #str
	if len >= total_width then
		return str
	else
		padding_char = padding_char or ' '
		assert(#padding_char == 1)
		return str .. string.rep(padding_char, total_width - len)
	end
end

string.split = function(full_string, separator)
	local find_start_idx = 1
	local split_array = {}
	while true do
		local find_last_idx = string.find(full_string, separator, find_start_idx, true)
		if not find_last_idx then
			table.insert(split_array, string.sub(full_string, find_start_idx, string.len(full_string)))
			break
		end
		table.insert(split_array, string.sub(full_string, find_start_idx, find_last_idx-1))
		find_start_idx = find_last_idx + string.len(separator)
	end
	return split_array
end

table.find = function(tb, value)
	for k, v in pairs(tb) do
		if v == value then return k end
	end
end

table.erase = function(tb, value)
	for k, v in pairs(tb) do
		if v == value then
			tb[k] = nil
			return
		end
	end
end

table.tostring = function(data, _indent)
	local visited = {}
	local function dump(data, prefix)
		local str = tostring(data)
		if table.find(visited, data) ~= nil then return str end
		table.insert(visited, data)
		local prefix_next = prefix .. "  "
		str = str .. "\n" .. prefix .. "{"
		for k, v in pairs(data) do
			if type(k) == "number" then
				str = str .. "\n" .. prefix_next .. "[" .. tostring(k) .. "] = "
			else
				str = str .. "\n" .. prefix_next .. tostring(k) .. " = "
			end
			if type(v) == "table" then
				str = str .. dump(v, prefix_next)
			elseif type(v) == "string" then
				str = str .. '"' .. v .. '"'
			else
				str = str .. tostring(v)
			end
		end
		str = str .. "\n" .. prefix .. "}"
		return str
	end
	return dump(data, _indent or "")
end

table.merge = function(base, delta, dep) --dep复制深度
	
	dep = dep or 999
	dep = dep - 1

	if type(delta) ~= "table" then return end
	for k, v in pairs(delta) do
		if base[k] ~= nil and type(base[k]) == "table" and  dep >= 0 then
			table.merge(base[k], v, dep)
		else
			base[k] = v
		end
	end
end

table.extend = function(base, delta)
	if type(delta) ~= "table" then return end
	for i, v in ipairs(delta) do
		table.insert(base, v)
	end
end

table.len = function(tbl)
	if type(tbl) ~= "table" then return 0 end
	local n = 0
	for _, _ in pairs(tbl) do n = n + 1 end
	return n
end

table.empty = function(tbl)
	if tbl == nil then return true end
	assert(type(tbl) == "table")
	if #tbl > 0 then return false end
	for k, v in pairs(tbl) do return false end
	return true
end

-- http://snippets.luacode.org/?p=snippets/Deep_copy_of_a_Lua_Table_2
table.clone = function(t, dep)

	dep = dep or 999
	dep = dep - 1

	if type(t) ~= 'table' then return t end
	local mt = getmetatable(t)
	local res = {}
	for k, v in pairs(t) do
		if type(v) == 'table' and  dep > 0 then
			v = table.clone(v, dep)
		end
		res[k] = v
	end
	setmetatable(res, mt)
	return res
end

--不复制元表的copy
table.copy = function(t, dep)

	dep = dep or 1 
	dep = dep - 1

	if type(t) ~= 'table' then return t end
	local res = {}
	for k, v in pairs(t) do
		if type(v) == 'table' and  dep > 0 then
			v = table.copy(v, dep)
		end
		res[k] = v
	end
	return res
end

table.readonly = function(t)
	local t_data = t or {} 
	local mt = {
		__index = function(t, k) return t_data[k] end ;
		__newindex = function(t, k, v)
			error("attempt to update a read-only table!")
		end
	}
	setmetatable(t, mt) 

	for _, sub in pairs(t) do
		if type(sub) == 'table' then
			table.readonly(sub)
		end
	end
end

-- http://snippets.luacode.org/?p=snippets/Table_Slice_116
table.slice = function(values, i1, i2)
	local res = {}
	local n = #values
	i1 = i1 or 1
	i2 = i2 or n
	if i2 < 0 then
		i2 = n + i2 + 1
	elseif i2 > n then
		i2 = n
	end
	if i1 < 1 or i1 > n then
		return {}
	end
	local k = 1
	for i = i1, i2 do
		res[k] = values[i]
		k = k + 1
	end
	return res
end

table.reverse = function(tab)
	local size = #tab
	local newTable = {}
	for i, v in ipairs(tab) do
		newTable[size+1-i] = v
	end
	return newTable
end

function table.colloct_string(tb, _op, out, indent)
	local op = string.sub(_op, 1, 1)
	_op = string.sub(_op, 2, -1)
	local old_indent = indent
	indent = indent..'  '
	if op == 'm' then
		table.insert(out, string.format('%s{\n', old_indent))
		for k, v in pairs(tb) do
			if type(v) == 'table' and _op ~= nil and #_op > 0 then
				table.insert(out, string.format('%s%s :\n', indent, tostring(k)))
				table.colloct_string(v, _op, out, indent)
			else
				table.insert(out, string.format('%s%s : %s\n', indent, tostring(k), tostring(v)))
			end
		end
		table.insert(out, string.format('%s}\n', old_indent))
	else
		table.insert(out, string.format('%s{', old_indent))
		for k, v in pairs(tb) do
			if type(v) == 'table' and _op ~= nil and #_op > 0 then
				table.colloct_string(v, _op, out, indent)
			else
				table.insert(out, string.format('%s%s : %s', indent, tostring(k), tostring(v)))
			end
		end
		table.insert(out, string.format('%s}\n', old_indent))
	end
	return out
end

table.print = function(tb, out_func, _op)
	if type(out_func) == 'string' then
		_op = out_func
		out_func = nil
	end
	if tb == nil then
		print('table == nil')
		return
	end
	local out = {}
	local indent = ''
	if _op == nil then
		_op = 's'
	end
	table.colloct_string(tb, _op, out, indent)
	if out_func ~= nil then
		for _, str in ipairs(out) do
			out_func(str)
		end
	else
		--print(table.concat(out))
		for _, str in ipairs(out) do
			print(str)
		end
	end
end
-- math.random({0.7, 0.1, 0.2}, {'A', 'B', 'C'})
-- math.random = function(m, n)
-- 	if type(m) == "table" and #m == #n then
-- 		-- 标准化概率表
-- 		local sum = 0
-- 		for _, v in ipairs(m) do sum = sum + v end
-- 		local sm = {}
-- 		for k, v in ipairs(m) do sm[k] = v / sum end
-- 		-- 得到下标
-- 		local r = go.rand.Random()
-- 		for k, v in ipairs(sm) do
-- 			if r <= v then return n[k]
-- 			else r = r - v end
-- 		end
-- 		assert(false)
-- 	end

-- 	if m == nil then return go.rand.Random() end
-- 	local _random = function(m, n)
-- 		m, n = math.min(m, n), math.max(m, n)
-- 		local mi, mf = math.modf(m)
-- 		local ni, nf = math.modf(n)
-- 		if mf == 0 and nf == 0 then
-- 			return go.rand.RandBetween(m, n)
-- 		else
-- 			return m + go.rand.Random() * (n - m)
-- 		end
-- 	end
-- 	if n == nil then return _random(1, m) end
-- 	return _random(m, n)
-- end

-- http://www.cplusplus.com/reference/algorithm/random_shuffle/
-- http://stackoverflow.com/questions/17119804/lua-array-shuffle-not-working
math.shuffle = function(array)
	local counter = #array
	while counter > 1 do
		local index = math.random(counter)
		array[index], array[counter] = array[counter], array[index]
		counter = counter - 1
	end
	return array
end

math.clamp = function(value, min, max)
	if value < min then
		return min
	end
	if value > max then
		return max
	end
	return value
end

math.div = function(dividend, divisor)
	return math.floor(dividend / divisor)
end
math.round = function(value)
	local i, f = math.modf(value)
	if f > 0.5 then
		return i + 1
	end
	return i
end

math.lerp = function(from, to, t)
	if t == 0 then return from end
	if t >= 1 then return to end
	return from + (to - from) * t
end
