return {
	time = 0,
	name = "剑鱼(818中队)",
	init_effect = "",
	id = 6822,
	picture = "",
	desc = "空中支援时，使敌方所有受击单位减速60%，持续8秒",
	stack = 1,
	color = "yellow",
	icon = 6810,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffShiftWeapon",
			trigger = {
				"onAttach"
			},
			arg_list = {
				detach_id = 28072,
				attach_id = 28172
			}
		}
	}
}
