return {
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	desc_get = "队伍中每有1艘驱逐舰，受到炮击伤害降低，装填速度提高",
	name = "联结·阿萨姆",
	init_effect = "",
	id = 101040,
	time = 0,
	picture = "",
	desc = "队伍中每有1艘驱逐舰，受到炮击伤害降低，装填速度提高",
	stack = 1,
	color = "blue",
	icon = 101040,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				minTargetNumber = 1,
				buff_id = 101041,
				check_target = "TargetShipTypeFriendly",
				isBuffStackByCheckTarget = true,
				ship_type_list = {
					1
				}
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				check_target = "TargetShipTypeFriendly",
				skill_id = 101040,
				minTargetNumber = 1,
				ship_type_list = {
					1
				}
			}
		}
	}
}
