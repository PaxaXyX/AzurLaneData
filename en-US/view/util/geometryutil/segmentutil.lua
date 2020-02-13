slot1 = 1e-06

function slot6(slot0, slot1)
	return slot0.x * slot1.y - slot0.y * slot1.x
end

function slot7(slot0, slot1)
	return slot0.x * slot1.x + slot0.y * slot1.y
end

function slot0.IsZero(slot0)
	return slot0 >= -uv0 and slot0 <= uv0
end

function slot0.DistinguishZero(slot0)
	if uv0.IsZero(slot0) then
		return 0
	else
		return slot0
	end
end

function slot0.Sign(slot0)
	if slot0 < -uv0 then
		return -1
	elseif slot0 <= uv0 then
		return 0
	else
		return 1
	end
end

function slot0.GetRect(slot0, slot1)
	return Vector2.Min(slot0, slot1), Vector2.Max(slot0, slot1)
end

function slot0.VectorCross(slot0, slot1, slot2, slot3)
	return uv0(uv1(slot1 - slot0, slot3 and slot3 - slot2 or slot2 - slot0))
end

function slot0.VectorDot(slot0, slot1, slot2, slot3)
	return uv0(uv1(slot1 - slot0, slot3 and slot3 - slot2 or slot2 - slot0))
end

function slot0.IsRectCross(slot0, slot1, slot2, slot3)
	return math.min(slot0.x, slot1.x) <= math.max(slot2.x, slot3.x) and math.min(slot2.x, slot3.x) <= math.max(slot0.x, slot1.x) and math.min(slot0.y, slot1.y) <= math.max(slot2.y, slot3.y) and math.min(slot2.y, slot3.y) <= math.max(slot0.y, slot1.y)
end

function slot0.GetCrossPoint(slot0, slot1, slot2, slot3)
	slot4, slot5 = IsSegamentTouch(slot0, slot1, slot2, slot3)

	if not slot4 then
		return false
	end

	if uv0((slot1.x - slot0.x) * (slot3.y - slot2.y) - (slot1.y - slot0.y) * (slot3.x - slot2.x)) then
		return false
	end

	slot11 = slot0.x * slot1.y - slot0.y * slot1.x
	slot12 = slot2.x * slot3.y - slot2.y * slot3.x

	return true, Vector2((-slot8 * slot11 - -slot6 * slot12) / slot10, (-slot9 * slot11 - -slot7 * slot12) / slot10)
end

function slot0.IntersectLineandSegament(slot0, slot1, slot2, slot3)
	if uv0(slot1.x - slot0.x) then
		return uv1(slot2.x - slot0.x) * uv1(slot0.x - slot3.x) >= 0
	end

	slot5 = (slot1.y - slot0.y) / slot4
	slot6 = slot1.y - slot5 * slot1.x

	return uv1(slot5 * slot2.x + slot6 - slot2.y) * uv1(slot5 * slot3.x + slot6 - slot3.y) <= 0
end

function slot0.IsSegamentTouch(slot0, slot1, slot2, slot3)
	slot4 = uv0(slot0, slot2, slot1)
	slot7 = uv1(slot4) == 0 and uv1(slot5)

	if slot4 * uv0(slot0, slot1, slot3) < -uv2 then
		return false
	end

	return uv0(slot2, slot3, slot0) * uv0(slot2, slot1, slot3) >= -uv2, slot7
end

function slot0.IsSegamentCross(slot0, slot1, slot2, slot3)
	if uv0(slot0, slot2, slot1) * uv0(slot0, slot1, slot3) <= uv1 then
		return false
	end

	return uv1 < uv0(slot2, slot3, slot0) * uv0(slot2, slot1, slot3), uv2(slot4)
end

function slot0.IsSegamentParallel(slot0, slot1, slot2, slot3)
	return uv2(uv3(slot0, slot1, slot2, slot3)), uv0(slot1, slot0, slot2, slot3) <= uv1
end

return {}