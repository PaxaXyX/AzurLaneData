return {
	time = 0,
	name = "TBD(VT-8)",
	init_effect = "",
	id = 6326,
	picture = "",
	desc = "更换舰载机",
	stack = 1,
	color = "yellow",
	icon = 6320,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onAllInStrike"
			},
			arg_list = {
				buff_id = 6346,
				quota = 1
			}
		}
	}
}
