--开门利是红包
function OnUseItemEvent_55258(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55258") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local curVigorPoint = s_getVigorPoint(uid)
	if curVigorPoint < 100  then
		--               1     2     3      4     5
		local rates = {3000 ,4000  , 2000, 700, 300 }
		local rand = math.random(1,10000)
		local value = 0
		local itemrates = 0
		local quality = 0
		for i=1,table.getn(rates) do
			value = value + rates[i]
			itemrates = i
			if rand <= value then
				if itemrates == 1 then
					s_addMoney(uid,MoneyType_Money,18,"开门利是",MoneyActionTypeAdd_Tick)
				elseif itemrates == 2 then
					s_addMoney(uid,MoneyType_Money,88,"开门利是",MoneyActionTypeAdd_Tick)
				elseif itemrates == 3 then
					s_addMoney(uid,MoneyType_Money,188,"开门利是",MoneyActionTypeAdd_Tick)
				elseif itemrates == 4 then
					s_addMoney(uid,MoneyType_Money,288,"开门利是",MoneyActionTypeAdd_Tick)
					s_countryInfo(country,"<p><n>好运！</n><q buttonid=6005 ownerid="..uid..">"..name.."</q><n>打开“开工利是”红包，获得288银币！</n><book bookid='70325'>[关于]</book></p>",ChatPos_Sys)
				elseif itemrates == 5 then
					s_addMoney(uid,MoneyType_Money,588,"开门利是",MoneyActionTypeAdd_Tick)
					s_countryInfo(country,"<p><n>大吉！</n><q buttonid=6005 ownerid="..uid..">"..name.."</q><n>打开“开工利是”红包，获得588银币！</n><book bookid='70325'>[关于]</book></p>",ChatPos_Sys)
				end
				--s_sysInfo(uid,"几率：".. rand .."")
				--s_sysInfo(uid,"当前道具组i：".. i .."，当前几率组数：".. value .."")
				break;
			end
		end
	else
		--               1     2     3      4     5     6  7
		local rates1 = {1000 ,3000  , 3000, 2000, 800 ,100,100}
		local rand1 = math.random(1,10000)
		local value1 = 0
		local itemrates1 = 0
		local quality = 0
		for i=1,table.getn(rates1) do
			value1 = value1 + rates1[i]
			itemrates1 = i
			if rand1 <= value1 then
				if itemrates1 == 1 then
					s_addMoney(uid,MoneyType_Money,18,"开门利是",MoneyActionTypeAdd_Tick)
				elseif itemrates1 == 2 then
					s_addMoney(uid,MoneyType_Money,88,"开门利是",MoneyActionTypeAdd_Tick)
				elseif itemrates1 == 3 then
					s_addMoney(uid,MoneyType_Money,188,"开门利是",MoneyActionTypeAdd_Tick)
				elseif itemrates1 == 4 then
					s_addMoney(uid,MoneyType_Money,288,"开门利是",MoneyActionTypeAdd_Tick)
					s_countryInfo(country,"<p><n>好运！</n><q buttonid=6005 ownerid="..uid..">"..name.."</q><n>打开“开工利是”红包，获得288银币！</n><book bookid='70325'>[关于]</book></p>",ChatPos_Sys)
				elseif itemrates1 == 5 then
					s_addMoney(uid,MoneyType_Money,588,"开门利是",MoneyActionTypeAdd_Tick)
					s_countryInfo(country,"<p><n>大吉！</n><q buttonid=6005 ownerid="..uid..">"..name.."</q><n>打开“开工利是”红包，获得588银币！</n><book bookid='70325'>[关于]</book></p>",ChatPos_Sys)
				elseif itemrates1 == 6 then
					s_addMoney(uid,MoneyType_Money,888,"开门利是",MoneyActionTypeAdd_Tick)
					s_countryInfo(country,"<p><n>太棒了！</n><q buttonid=6005 ownerid="..uid..">"..name.."</q><n>打开“开工利是”红包，获得888银币！</n><book bookid='70325'>[关于]</book></p>",ChatPos_Sys)
				elseif itemrates1 == 7 then
					s_addMoney(uid,MoneyType_Money,1688,"开门利是",MoneyActionTypeAdd_Tick)
					s_countryInfo(country,"<p><n>鸿运当头！</n><q buttonid=6005 ownerid="..uid..">"..name.."</q><n>打开“开工利是”红包，获得1688银币！</n><book bookid='70325'>[关于]</book></p>",ChatPos_Sys)
				end
				--s_sysInfo(uid,"几率：".. rand .."")
				--s_sysInfo(uid,"当前道具组i：".. i .."，当前几率组数：".. value .."")
				break;
			end
		end
	end
	return VALUE_OK
end

