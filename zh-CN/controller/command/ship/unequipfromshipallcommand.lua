slot0 = class("UnEquipFromShipAllCommand", pm.SimpleCommand)

function slot0.execute(slot0, slot1)
	if getProxy(BayProxy):getShipById(slot1:getBody().shipId) == nil then
		pg.TipsMgr.GetInstance():ShowTips(i18n("ship_error_noShip", slot3))

		return
	end

	slot6 = #slot5.equipments

	for slot11, slot12 in pairs(slot5.equipments) do
		if slot12 then
			slot7 = 0 + 1
		end
	end

	if getProxy(PlayerProxy):getData():getMaxEquipmentBag() < getProxy(EquipmentProxy):getCapacity() + slot7 then
		NoPosMsgBox(i18n("switch_to_shop_tip_noPos"), openDestroyEquip, gotoChargeScene)

		return
	end

	slot0:fun(slot5, 1, slot6)
end

function slot0.fun(slot0, slot1, slot2, slot3)
	if slot3 < slot2 then
		pg.TipsMgr.GetInstance():ShowTips(i18n("ship_unequip_all_success"))
		slot0:sendNotification(GAME.UNEQUIP_FROM_SHIP_DONE, slot1)

		return
	end

	slot4 = getProxy(BayProxy)

	if not slot1:getEquip(slot2) then
		slot0:fun(slot1, slot2 + 1, slot3)

		return
	end

	pg.ConnectionMgr.GetInstance():Send(12006, {
		type = 0,
		equip_id = 0,
		ship_id = slot1.id,
		pos = slot2
	}, 12007, function (slot0)
		if slot0.result == 0 then
			slot1 = getProxy(EquipmentProxy)

			if uv0:hasSkin() then
				uv1:updateEquipmentSkin(uv2, 0)
				slot1:addEquipmentSkin(uv0.skinId, 1)

				uv0.skinId = 0

				pg.TipsMgr.GetInstance():ShowTips(i18n("equipment_skin_unload"))
			end

			uv1:updateEquip(uv2, nil)
			uv3:updateShip(uv1)
			slot1:addEquipment(uv0)
			uv4:fun(uv1, uv2 + 1, uv5)
		else
			pg.TipsMgr.GetInstance():ShowTips(errorTip("ship_unequipFromShip", slot0.result))
		end
	end)
end

return slot0
