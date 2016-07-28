
--团种植 种子使用
local usefun = [[
	function OnUseItemEvent_$1(uid,thisid,targetid)
		return CopySceneInfo_1:ToSeedPlant(uid,$1,thisid,targetid)
	end 
]]

--银币花
for i=44021, 44030 do
	local fun = FormatString(usefun,i)
	RegistetFunction(fun)
	--命运女神的垂青
	local process = s_getTaskValue(uid,30594,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30594)
	end
	local process = s_getTaskValue(uid,30604,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30604)
	end
end

--蘑菇
for i=44031, 44040 do
	local fun = FormatString(usefun,i)
	RegistetFunction(fun)
end

--四叶草
for i=44041, 44045 do
	local fun = FormatString(usefun,i)
	RegistetFunction(fun)
end

--喇叭花
for i=44051, 44055 do
	local fun = FormatString(usefun,i)
	RegistetFunction(fun)
end

--玫瑰花
for i=44061, 44065 do
	local fun = FormatString(usefun,i)
	RegistetFunction(fun)
end

--刺手
for i=44071, 44075 do
	local fun = FormatString(usefun,i)
	RegistetFunction(fun)
end

--绑银花
for i=44081, 44090 do
	local fun = FormatString(usefun,i)
	RegistetFunction(fun)
end

--芍药花
for i=44091, 44095 do
	local fun = FormatString(usefun,i)
	RegistetFunction(fun)
end

--晶石花
for i=44101, 44105 do
	local fun = FormatString(usefun,i)
	RegistetFunction(fun)
end

--景天花
for i=44121, 44125 do
	local fun = FormatString(usefun,i)
	RegistetFunction(fun)
end

--龙葵花
for i=44111, 44115 do
	local fun = FormatString(usefun,i)
	RegistetFunction(fun)
end
