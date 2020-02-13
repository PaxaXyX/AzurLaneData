slot0 = singletonClass("PoolMgr")
pg = pg or {}
pg.PoolMgr = slot0
PoolMgr = slot0
slot1 = require("Mgr/Pool/PoolPlural")
slot2 = require("Mgr/Pool/PoolSingleton")
slot3 = require("Mgr/Pool/PoolObjPack")
slot4 = require("Mgr/Pool/PoolUtil")
slot5 = ResourceMgr.Inst

function slot0.Ctor(slot0)
	slot0.root = GameObject.New("__Pool__").transform
	slot0.pools_plural = {}
	slot0.pools_single = {}
	slot0.pools_pack = {}
	slot0.callbacks = {}
	slot0.pluralIndex = 0
	slot0.singleIndex = 0
	slot0.paintingCount = 0
	slot1.shiptype = {
		"battle_hangmu",
		"battle_qingxun",
		"battle_quzhu",
		"battle_weixiu",
		"battle_zhanlie",
		"battle_zhongxun",
		"hangmu",
		"hangxun",
		"hangzhan",
		"leixun",
		"qingxun",
		"quzhu",
		"weixiu",
		"xunyang",
		"zhanlie",
		"zhongxun"
	}
	slot1.shipframe = {
		"1",
		"2",
		"3",
		"04",
		"4",
		"05",
		"5",
		"b1",
		"b2",
		"b3",
		"b04",
		"b4",
		"b05",
		"b5",
		"ba",
		"bl",
		"prop",
		"prop04",
		"prop05",
		"bprop",
		"bprop04",
		"bprop05"
	}
	slot1["shipyardicon/unknown"] = {
		""
	}
	slot1.skillframe = {
		"skill_red",
		"skill_blue",
		"skill_yellow"
	}
	slot1.weaponframes = {
		"bg1",
		"bg2",
		"bg3",
		"bg04",
		"bg4",
		"bg05",
		"bg5",
		"bg8",
		"bg9",
		"frame",
		"frame04",
		"frame05",
		"frame6",
		"frame7",
		"frame8",
		"frame9",
		"frame_npc",
		"frame_prop"
	}
	slot1.energy = {
		"express_1",
		"express_2",
		"express_3",
		"express_4"
	}
	slot1.shipstatus = {}
	slot1.channel = {}
	slot1["painting/mat"] = {}
	slot0.preloads = {}
	slot0.ui_tempCache = {}
	slot0.tempCacheLink = {}
end

function slot0.Init(slot0, slot1)
	print("initializing pool manager...")

	slot2 = 0
	slot3 = table.nums(slot0.preloads)

	function slot4()
		uv0 = uv0 + 1

		if uv0 == uv1 then
			uv2()
		end
	end

	for slot8, slot9 in pairs(slot0.preloads) do
		if #slot9 > 0 then
			slot10 = 0

			for slot14, slot15 in ipairs(slot9) do
				slot0:GetSprite(slot8, slot15, true, function (slot0)
					uv0 = uv0 + 1

					if uv0 == #uv1 then
						uv2()
					end
				end)
			end
		else
			uv0:loadAssetBundleAsync(slot8, function (slot0)
				uv0()
			end)
		end
	end
end

function slot0.GetSpineChar(slot0, slot1, slot2, slot3)
	function slot6()
		slot0 = uv0.pools_plural[uv1]
		slot0.index = uv0.pluralIndex
		uv0.pluralIndex = uv0.pluralIndex + 1
		slot1 = slot0:Dequeue()

		slot1:SetActive(true)
		uv2(slot1)
	end

	if not slot0.pools_plural["char/" .. slot1 .. slot1] then
		slot0:GetSpineSkel(slot1, slot2, function (slot0)
			if not uv0.pools_plural[uv1] then
				slot0 = SpineAnimUI.AnimChar(uv2, slot0)

				slot0:SetActive(false)

				uv0.pools_plural[uv1] = uv3.New(slot0, 1)
			end

			uv4()
		end, true)
	else
		slot6()
	end
end

function slot0.ReturnSpineChar(slot0, slot1, slot2)
	slot4 = "char/" .. slot1 .. slot1

	if IsNil(slot2) then
		Debugger.LogError("empty go: " .. slot1)
	elseif slot0.pools_plural[slot4] then
		UIUtil.ClearChildren(slot2)
		slot2:SetActive(false)
		slot2.transform:SetParent(slot0.root, false)

		slot2.transform.localPosition = Vector3.New(0, 0, 0)
		slot2.transform.localScale = Vector3.New(0.5, 0.5, 1)
		slot2.transform.localRotation = Quaternion.identity

		slot0.pools_plural[slot4]:Enqueue(slot2)
		slot0:ExcessSpineChar()
	else
		uv0.Destroy(slot2)
	end
end

function slot0.ExcessSpineChar(slot0)
	slot1 = 0
	slot2 = 6

	for slot7, slot8 in pairs(slot0.pools_plural) do
		if string.find(slot7, "char/") == 1 then
			table.insert({}, slot7)
		end
	end

	if slot2 < #slot3 then
		table.sort(slot3, function (slot0, slot1)
			return uv0.pools_plural[slot1].index < uv0.pools_plural[slot0].index
		end)

		for slot7 = slot2 + 1, #slot3, 1 do
			slot8 = slot3[slot7]

			slot0.pools_plural[slot8]:Clear()

			slot0.pools_plural[slot8] = nil

			if slot0.pools_single[slot8] then
				slot10:Clear()

				slot0.pools_single[slot8] = nil
			end
		end
	end
end

function slot0.GetSpineSkel(slot0, slot1, slot2, slot3)
	slot0:FromSingle("char/" .. slot1, slot1 .. "_SkeletonData", slot2, slot3)
end

function slot0.ClearSpineSkel(slot0, slot1)
	if slot0.pools_single["char/" .. slot1 .. slot1 .. "_SkeletonData"] then
		slot0.pools_single[slot3]:Clear()

		slot0.pools_single[slot3] = nil
	end
end

function slot0.IsSpineSkelCached(slot0, slot1)
	return slot0.pools_single["char/" .. slot1 .. slot1 .. "_SkeletonData"] ~= nil
end

slot6 = {
	"ProfileUI",
	"ResPanel"
}
slot7 = {
	"ProfileUI",
	"ResPanel",
	"MainUI",
	"DockyardUI",
	"AwardInfoUI",
	"SkillInfoUI",
	"ItemInfoUI",
	"ShipDetailView",
	"LevelFleetSelectView",
	"ToastUI",
	"MsgBox",
	"TipPanel",
	"Loading"
}
slot8 = {}

function slot0.GetUI(slot0, slot1, slot2, slot3)
	slot0:FromPlural("ui/" .. slot1, slot1, slot2, table.contains(uv0, slot1) and 3 or 1, function (slot0)
		slot0:SetActive(false)

		if table.indexof(uv1, uv2) then
			uv4.pools_plural[uv3 .. uv2].prefab:GetComponent(typeof(UIArchiver)):Clear()
			slot0:GetComponent(typeof(UIArchiver)):Load(function ()
				uv0(uv1)
			end)
		else
			slot1()
		end
	end, table.contains(uv1, slot1) or table.contains(uv2, slot1))
end

function slot0.ReturnUI(slot0, slot1, slot2)
	slot4 = "ui/" .. slot1 .. slot1

	if IsNil(slot2) then
		Debugger.LogError("empty go: " .. slot1)
	elseif slot0.pools_plural[slot4] then
		if table.indexof(uv0, slot1) then
			slot2.transform:SetParent(slot0.root, false)
		end

		if table.indexof(uv1, slot1) or table.indexof(slot0.ui_tempCache, slot1) then
			slot2:SetActive(false)
			slot0.pools_plural[slot4]:Enqueue(slot2)
		elseif table.indexof(uv2, slot1) then
			slot2:SetActive(false)
			slot2:GetComponent(typeof(UIArchiver)):Clear()
			slot0.pools_plural[slot4]:Enqueue(slot2)
		else
			slot0.pools_plural[slot4]:Enqueue(slot2, true)

			if slot0.pools_plural[slot4]:AllReturned() then
				uv3:ClearBundleRef(slot3, true, true)
				slot0.pools_plural[slot4]:Clear()

				slot0.pools_plural[slot4] = nil
			end
		end
	else
		uv4.Destroy(slot2)
	end
end

function slot0.HasCacheUI(slot0, slot1)
	return slot0.pools_plural["ui/" .. slot1 .. slot1] ~= nil
end

function slot0.PreloadUI(slot0, slot1, slot2)
	slot0:GetUI(slot1, true, function (slot0)
		uv0:ReturnUI(uv1, slot0)

		if uv2 then
			uv2()
		end
	end)
end

function slot0.AddTempCache(slot0, slot1, slot2)
	if slot0.tempCacheLink[slot1] == nil then
		slot0.tempCacheLink[slot1] = {}
	end

	table.insert(slot0.tempCacheLink[slot1], slot2)
	_.each(slot0.tempCacheLink[slot1], function (slot0)
		if not table.contains(uv0.ui_tempCache, slot0) then
			table.insert(uv0.ui_tempCache, slot0)
		end
	end)
end

function slot0.DelTempCache(slot0, slot1)
	if slot0.tempCacheLink[slot1] ~= nil then
		_.each(slot0.tempCacheLink[slot1], function (slot0)
			if table.contains(uv0.ui_tempCache, slot0) then
				table.removebyvalue(uv0.ui_tempCache, slot0, true)
			end
		end)

		slot0.tempCacheLink[slot1] = nil
	end
end

function slot0.GetPainting(slot0, slot1, slot2, slot3)
	slot4 = "painting/" .. slot1
	slot5 = slot4 .. slot1

	slot0:FromPlural(slot4, slot1, slot2, 1, function (slot0)
		slot0:SetActive(true)

		if Ship.DefaultFaceless(uv0) then
			setActive(tf(slot0):Find("face"), true)
		end

		uv1(slot0)
	end, true)
end

function slot0.ReturnPainting(slot0, slot1, slot2)
	slot4 = "painting/" .. slot1 .. slot1

	if IsNil(slot2) then
		Debugger.LogError("empty go: " .. slot1)
	elseif slot0.pools_plural[slot4] then
		if tf(slot2):Find("face") then
			setActive(slot5, false)
		end

		slot2:SetActive(false)
		slot2.transform:SetParent(slot0.root, false)
		slot0.pools_plural[slot4]:Enqueue(slot2)
		slot0:ExcessPainting()
	else
		uv0.Destroy(slot2, true)
	end
end

function slot0.ExcessPainting(slot0)
	slot1 = 0
	slot2 = 4

	for slot7, slot8 in pairs(slot0.pools_plural) do
		if string.find(slot7, "painting/") == 1 then
			table.insert({}, slot7)
		end
	end

	if slot2 < #slot3 then
		table.sort(slot3, function (slot0, slot1)
			return uv0.pools_plural[slot1].index < uv0.pools_plural[slot0].index
		end)

		for slot7 = slot2 + 1, #slot3, 1 do
			slot8 = slot3[slot7]

			slot0.pools_plural[slot8]:Clear(true)

			slot0.pools_plural[slot8] = nil
		end

		uv0:unloadUnusedAssetBundles()
	end
end

function slot0.GetSprite(slot0, slot1, slot2, slot3, slot4)
	slot0:FromObjPack(slot1, tostring(slot2), slot3, typeof(Sprite), function (slot0)
		uv0(slot0)
	end)
end

function slot0.DecreasSprite(slot0, slot1, slot2)
	if slot0.pools_pack[slot1] and slot0.pools_pack[slot3].type == typeof(Sprite) then
		if slot0.pools_pack[slot3]:Remove(slot2) then
			uv0:ClearBundleRef(slot3, true, false)
		end

		if slot0.pools_pack[slot3]:GetAmount() <= 0 then
			slot0.pools_pack[slot3]:Clear()

			slot0.pools_pack[slot3] = nil
		end
	end
end

function slot0.DestroySprite(slot0, slot1)
	if slot0.pools_pack[slot1] and slot0.pools_pack[slot2].type == typeof(Sprite) then
		slot0.pools_pack[slot2]:Clear()

		slot0.pools_pack[slot2] = nil

		for slot8 = 1, slot0.pools_pack[slot2]:GetAmount(), 1 do
			uv0:ClearBundleRef(slot2, true, false)
		end
	end
end

function slot0.DestroyAllSprite(slot0)
	slot1 = {}

	for slot6, slot7 in pairs(slot0.pools_pack) do
		if slot7.type == typeof(Sprite) and not slot0.preloads[slot6] then
			slot1[slot6] = slot7
		end
	end

	for slot6, slot7 in pairs(slot1) do
		slot0.pools_pack[slot6]:Clear()

		slot0.pools_pack[slot6] = nil

		for slot12 = 1, slot0.pools_pack[slot6]:GetAmount(), 1 do
			uv0:ClearBundleRef(slot6, true, false)
		end
	end

	uv0:unloadUnusedAssetBundles()
end

function slot0.DisplayPoolPacks(slot0)
	slot1 = ""

	for slot5, slot6 in pairs(slot0.pools_pack) do
		for slot10, slot11 in pairs(slot6.items) do
			if #slot1 > 0 then
				slot1 = slot1 .. "\n"
			end

			slot13[1] = slot5
			slot13[3] = slot10
			slot13[5] = slot6.type.FullName
			slot1 = slot1 .. " " .. table.concat(_.map({
				nil,
				"assetName:",
				nil,
				"type:"
			}, function (slot0)
				return tostring(slot0)
			end), " ")
		end
	end

	warning(slot1)
end

function slot0.SpriteMemUsage(slot0)
	slot1 = 0
	slot2 = 9.5367431640625e-07

	for slot7, slot8 in pairs(slot0.pools_pack) do
		if slot8.type == typeof(Sprite) then
			for slot13, slot14 in pairs(slot8.items) do
				if not ({})[slot14.texture.name] then
					slot17 = 4

					if slot15.format == TextureFormat.RGB24 then
						slot17 = 3
					elseif slot18 == TextureFormat.ARGB4444 or slot18 == TextureFormat.RGBA4444 then
						slot17 = 2
					elseif slot18 == TextureFormat.DXT5 or slot18 == TextureFormat.ETC2_RGBA8 then
						slot17 = 1
					elseif slot18 == TextureFormat.PVRTC_RGB4 or slot18 == TextureFormat.PVRTC_RGBA4 or slot18 == TextureFormat.ETC_RGB4 or slot18 == TextureFormat.ETC2_RGB or slot18 == TextureFormat.DXT1 then
						slot17 = 0.5
					end

					slot1 = slot1 + slot15.width * slot15.height * slot17 * slot2
					slot9[slot16] = true
				end
			end
		end
	end

	return slot1
end

slot9 = 64
slot10 = {
	"chapter/",
	"emoji/",
	"world/"
}

function slot0.GetPrefab(slot0, slot1, slot2, slot3, slot4, slot5)
	slot6 = slot1 .. slot2

	slot0.FromPlural(slot0, slot1, slot2, slot3, slot5 or uv0, function (slot0)
		if string.find(uv0, "emoji/") == 1 and slot0:GetComponent(typeof(CriManaEffectUI)) then
			slot1:Pause(false)
		end

		slot0:SetActive(true)
		uv1(slot0)
	end, true)
end

function slot0.ReturnPrefab(slot0, slot1, slot2, slot3, slot4)
	slot5 = slot1 .. slot2

	if IsNil(slot3) then
		Debugger.LogError("empty go: " .. slot2)
	elseif slot0.pools_plural[slot5] then
		if string.find(slot1, "emoji/") == 1 and slot3:GetComponent(typeof(CriManaEffectUI)) then
			slot6:Pause(true)
		end

		slot3:SetActive(false)
		slot3.transform:SetParent(slot0.root, false)
		slot0.pools_plural[slot5]:Enqueue(slot3)

		if slot4 and slot0.pools_plural[slot5].balance <= 0 then
			slot0:DestroyPrefab(slot1, slot2)
		end
	else
		uv0.Destroy(slot3)
	end
end

function slot0.DestroyPrefab(slot0, slot1, slot2)
	if slot0.pools_plural[slot1 .. slot2] then
		slot0.pools_plural[slot3]:Clear()

		slot0.pools_plural[slot3] = nil

		uv0:ClearBundleRef(slot1, true, false)
	end
end

function slot0.DestroyAllPrefab(slot0)
	for slot5, slot6 in pairs(slot0.pools_plural) do
		if _.any(uv0, function (slot0)
			return string.find(uv0, slot0) == 1
		end) then
			slot6:Clear()
			uv1:ClearBundleRef(slot5, true, false)
			table.insert({}, slot5)
		end
	end

	_.each(slot1, function (slot0)
		uv0.pools_plural[slot0] = nil
	end)
end

function slot0.DisplayPluralPools(slot0)
	slot1 = ""

	for slot5, slot6 in pairs(slot0.pools_plural) do
		if #slot1 > 0 then
			slot1 = slot1 .. "\n"
		end

		slot8[1] = slot5
		slot8[3] = slot6.balance
		slot8[5] = #slot6.items
		slot1 = slot1 .. " " .. table.concat(_.map({
			nil,
			"balance",
			nil,
			"currentItmes"
		}, function (slot0)
			return tostring(slot0)
		end), " ")
	end

	warning(slot1)
end

function slot0.FromPlural(slot0, slot1, slot2, slot3, slot4, slot5, slot6)
	function slot8()
		slot0 = uv0.pools_plural[uv1]
		slot0.index = uv0.pluralIndex
		uv0.pluralIndex = uv0.pluralIndex + 1

		uv2(slot0:Dequeue())
	end

	if not slot0.pools_plural[slot1 .. slot2] then
		slot0:LoadAsset(slot1, slot2, slot3, typeof(Object), function (slot0)
			if slot0 == nil then
				Debugger.LogError("can not find asset: " .. uv0 .. " : " .. uv1)

				return
			end

			if not uv2.pools_plural[uv3] then
				uv2.pools_plural[uv3] = uv4.New(slot0, uv5)
			end

			uv6()
		end, slot6)
	else
		slot8()
	end
end

function slot0.FromSingle(slot0, slot1, slot2, slot3, slot4)
	function slot6()
		slot0 = uv0.pools_single[uv1]
		slot0.index = uv0.singleIndex
		uv0.singleIndex = uv0.singleIndex + 1

		uv2(slot0.prefab)
	end

	if not slot0.pools_single[slot1 .. slot2] then
		slot0:LoadAsset(slot1, slot2, slot3, typeof(Object), function (slot0)
			if not uv0.pools_single[uv1] then
				uv0.pools_single[uv1] = uv2.New(slot0)
			end

			uv3()
		end, true)
	else
		slot6()
	end
end

function slot0.FromObjPack(slot0, slot1, slot2, slot3, slot4, slot5)
	if not slot0.pools_pack[slot1] or not slot0.pools_pack[slot6]:Get(slot2) then
		slot0:LoadAsset(slot1, slot2, slot3, slot4, function (slot0)
			if not uv0.pools_pack[uv1] then
				uv0.pools_pack[uv1] = uv2.New(uv3)
			end

			if not uv0.pools_pack[uv1]:Get(uv4) then
				uv0.pools_pack[uv1]:Set(uv4, slot0)
			end

			uv5(slot0)
		end, false)
	else
		slot5(slot0.pools_pack[slot6]:Get(slot2))
	end
end

function slot0.LoadAsset(slot0, slot1, slot2, slot3, slot4, slot5, slot6)
	if slot0.callbacks[slot1 .. slot2] then
		table.insert(slot0.callbacks[slot7], slot5)
	elseif slot3 then
		slot9[1] = slot5
		slot0.callbacks[slot7] = {}

		uv0:getAssetAsync(slot1, slot2, slot4, UnityEngine.Events.UnityAction_UnityEngine_Object(function (slot0)
			if uv0.callbacks[uv1] then
				uv0.callbacks[uv1] = nil

				for slot5 = 1, #uv0.callbacks[uv1], 1 do
					slot1[slot5](slot0)
				end
			end
		end), slot6, false)
	else
		slot5(uv0:getAssetSync(slot1, slot2, slot4, slot6, false))
	end
end

function slot0.PrintPools(slot0)
	for slot5, slot6 in pairs(slot0.pools_plural) do
		slot1 = "" .. "\n" .. slot5
	end

	print(slot1)
end

return slot0