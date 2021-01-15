return {
	{
		desc = "主炮每进行6次攻击，触发全弹发射-约克级II"
	},
	time = 0,
	name = "全弹发射",
	init_effect = "",
	id = 21242,
	picture = "",
	desc = "主炮每进行6次攻击，触发全弹发射-约克级II",
	stack = 1,
	color = "red",
	icon = 20200,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCount",
			trigger = {
				"onFire"
			},
			arg_list = {
				countTarget = 6,
				countType = 21240,
				index = {
					1
				}
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onBattleBuffCount"
			},
			arg_list = {
				skill_id = 21242,
				target = "TargetSelf",
				countType = 21240
			}
		}
	}
}
