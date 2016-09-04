--合成材料
--targetid 目标道具thisid total 合成总次数 success 成功次数
function OnComposeMaterialEvent(uid,targetid,total,success)
	local baseid = s_getItemValue(uid,targetid,Item_Base_ID)
	--药材
	if baseid == 27113 then
		if success > 0 then
			AddRoleTaskOperate(uid,10283)
		end
	elseif baseid == 27112 then
		if success > 0 then
			AddRoleTaskOperate(uid,10293)
		end
	end
	AddRoleTaskOperate(uid,4141)
	AddRoleTaskOperate(uid,4181)
end
--装备合成
function OnComposeEquipEvent(uid,targetid,old_quality,new_quality,new_prefix,old_Compose,new_Compose)
	if old_Compose < new_Compose then
		AddRoleTaskOperate(uid,3341)
		AddRoleTaskOperate(uid,3711)
	end
	if old_quality < EquipQuality_Blue and new_quality >= EquipQuality_Blue then
		AddRoleTaskOperate(uid,10200)
		--AddRoleTaskOperate(uid,50009)
	end
	if old_quality < EquipQuality_Yellow and new_quality >= EquipQuality_Yellow then
		AddRoleTaskOperate(uid,10201)
		--AddRoleTaskOperate(uid,3711)
		--AddRoleTaskOperate(uid,50009)
	end
	if old_quality < EquipQuality_Green and new_quality >= EquipQuality_Green then
		AddRoleTaskOperate(uid,10202)
		--AddRoleTaskOperate(uid,50009)
	end
	if old_quality < EquipQuality_Purple and new_quality >= EquipQuality_Green and new_prefix == EquipPrefix_Perfect then
		AddRoleTaskOperate(uid,10203)
		--AddRoleTaskOperate(uid,50009)
	end
end

--生命储存仪
function OnRebuildLifeStoneEvent(uid,success)
	if success > 0 then
		AddRoleTaskOperate(uid,4313)
	end
end
--装备精炼
function OnRebuildEquipBaseAttrEvent(uid,targetid,success)
	if success > 0 then
		AddRoleTaskOperate(uid,1586)
	end
end
--装备重绑
function OnRebuildEquipBindAttrEvent(uid,targetid,success)
	if success > 0 then
		AddRoleTaskOperate(uid,1654)
	end
end
--装备打孔
function OnRebuildEquipHoleEvent(uid,targetid)
	AddRoleTaskOperate(uid,1764)
end
--装备镶嵌
function OnEquipInlayEvent(uid,targetid)
	AddRoleTaskOperate(uid,1765)
end
--装备五行修改
function OnModifyFivePropertyEvent(uid,success)
	if success > 0 then
		AddRoleTaskOperate(uid,1587)
	end
end
--装备养成
function OnEquipGrowUpEvent(uid,success)
	if success > 0 then
		AddRoleTaskOperate(uid,1766)
	end
end
--装备升级
function OnEquipLevelUpEvent(uid,success)
	if success > 0 then
		AddRoleTaskOperate(uid,1767)
	end
end
--修改灵魂
function OnEquipSoulModifyEvent(uid,success)
	if success > 0 then
		AddRoleTaskOperate(uid,1768)
	end
end
--修改孔激活属性
function OnEquipHoleModifyEvent(uid,success)
	if success > 0 then
		AddRoleTaskOperate(uid,1770)
	end
end
