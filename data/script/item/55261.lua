--功勋箱
function OnUseItemEvent_55261(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55261") ~= VALUE_OK then
		return VALUE_FAIL
	end

	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level <= 60 then
		--    1      2      3     4      5    6    7    8      10
		local rates = {1000, 1500, 1500, 1000, 1500,1000, 1250, 500,  250}
		local rand = math.random(1,9500)
		local value = 0
		local itemrates = 0
		for i=1,table.getn(rates) do
			value = value + rates[i]
			itemrates = i
			if rand <= value then
				if itemrates == 1 then
					s_addItem(uid,27108,3,2,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates == 2 then
					s_addItem(uid,27108,3,4,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates == 3 then
					s_addItem(uid,26149,3,5,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates == 4 then
					s_addItem(uid,26149,3,10,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates == 5 then
					s_addItem(uid,27110,3,10,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates == 6 then
					s_addItem(uid,27110,3,20,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates == 7 then
					s_addItem(uid,26128,3,2,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates == 8 then
					s_addItem(uid,26104,3,1,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates == 9 then
					s_addItem(uid,55262,3,1,0,"1-0","OnUseItemEvent_55261")
				end
				break;
			end
		end
	elseif level <= 80 then
		--    1      2      3     4      5    6    7    8     9     10  11 12  13  14
		local rates1 = {1000, 1250, 250, 1000, 1250, 250, 1000, 1250, 250, 750,500,100,400,250}
		local rand1 = math.random(1,9500)
		local value1 = 0
		local itemrates1 = 0
		for i=1,table.getn(rates1) do
			value1 = value1 + rates1[i]
			itemrates1 = i
			if rand1 <= value1 then
				if itemrates1 == 1 then
					s_addItem(uid,27108,3,2,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 2 then
					s_addItem(uid,27108,3,4,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 3 then
					s_addItem(uid,27108,3,8,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 4 then
					s_addItem(uid,26149,3,5,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 5 then
					s_addItem(uid,26149,3,10,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 6 then
					s_addItem(uid,26149,3,20,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 7 then
					s_addItem(uid,27110,3,10,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 8 then
					s_addItem(uid,27110,3,20,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 9 then
					s_addItem(uid,27110,3,40,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 10 then
					s_addItem(uid,26128,3,2,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 11 then
					s_addItem(uid,26104,3,1,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 12 then
					s_addItem(uid,26149,3,1,0,"1-1,2-4","OnUseItemEvent_55261")
				elseif itemrates1 == 13 then
					s_addItem(uid,63038,3,5,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates1 == 14 then
					s_addItem(uid,55262,3,1,0,"1-0","OnUseItemEvent_55261")
				end
				break;
			end
		end
	elseif level <= 100 then
		--   1    2     3    4    5     6    7    8     9   10   11  12  13  14  15
		local rates2 = {500, 1000, 750, 750, 1000, 750, 750, 1000, 750, 500,650,400,100,100, 250}
		local rand2 = math.random(1,95)
		local value2 = 0
		local itemrates2 = 0
		for i=1,table.getn(rates2) do
			value2 = value2 + rates2[i]
			itemrates2 = i
			if rand2 <= value2 then
				if itemrates2 == 1 then
					s_addItem(uid,27108,3,2,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 2 then
					s_addItem(uid,27108,3,4,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 3 then
					s_addItem(uid,27108,3,8,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 4 then
					s_addItem(uid,26149,3,5,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 5 then
					s_addItem(uid,26149,3,10,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 6 then
					s_addItem(uid,26149,3,20,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 7 then
					s_addItem(uid,27110,3,10,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 8 then
					s_addItem(uid,27110,3,20,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 9 then
					s_addItem(uid,27110,3,40,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 10 then
					s_addItem(uid,26104,3,1,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 11 then
					s_addItem(uid,26128,3,2,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 12 then
					s_addItem(uid,63038,3,5,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates2 == 13 then
					s_addItem(uid,27110,3,1,0,"1-1,2-4","OnUseItemEvent_55261")
				elseif itemrates2 == 14 then
					s_addItem(uid,26149,3,1,0,"1-1,2-4","OnUseItemEvent_55261")
				elseif itemrates2 == 15 then
					s_addItem(uid,55262,3,1,0,"1-0","OnUseItemEvent_55261")
				end
				break;
			end
		end
	elseif level <= 150 then
		--   1    2     3    4    5     6    7    8    9   10   11  12  13   14  15  16   17  18  19  20  21
		local rates3 = {500, 1000, 250, 250, 500, 1000, 250, 250, 500, 1000,250,250,1000,250,250, 500,650,400,100,100,250}
		local rand3 = math.random(1,9500)
		local value3 = 0
		local itemrates3 = 0
		for i=1,table.getn(rates3) do
			value3 = value3 + rates3[i]
			itemrates3 = i
			if rand3 <= value3 then
				if itemrates3 == 1 then
					s_addItem(uid,27108,3,2,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 2 then
					s_addItem(uid,27108,3,4,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 3 then
					s_addItem(uid,27108,3,8,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 4 then
					s_addItem(uid,27108,3,12,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 5 then
					s_addItem(uid,26149,3,5,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 6 then
					s_addItem(uid,26149,3,10,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 7 then
					s_addItem(uid,26149,3,20,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 8 then
					s_addItem(uid,26149,3,30,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 9 then
					s_addItem(uid,27110,3,10,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 10 then
					s_addItem(uid,27110,3,20,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 11 then
					s_addItem(uid,27110,3,40,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 12 then
					s_addItem(uid,27110,3,60,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 13 then
					s_addItem(uid,27199,3,4,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 14 then
					s_addItem(uid,27199,3,8,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 15 then
					s_addItem(uid,27199,3,12,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 16 then
					s_addItem(uid,26104,3,1,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 17 then
					s_addItem(uid,26128,3,2,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 18 then
					s_addItem(uid,63038,3,5,0,"1-1","OnUseItemEvent_55261")
				elseif itemrates3 == 19 then
					s_addItem(uid,27110,3,1,0,"1-1,2-4","OnUseItemEvent_55261")
				elseif itemrates3 == 20 then
					s_addItem(uid,26149,3,1,0,"1-1,2-4","OnUseItemEvent_55261")
				elseif itemrates3 == 21 then
					s_addItem(uid,55262,3,1,0,"1-0","OnUseItemEvent_55261")
				end
				break;
			end
		end
	end
	return VALUE_OK
end

