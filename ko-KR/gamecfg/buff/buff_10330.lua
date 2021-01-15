return {
	{
		desc = "空中支援使用剑鱼式进行一轮航空鱼雷攻击，使敌方全体减速30.0%，持续8秒",
		addition = {
			"",
			"30.0%(+3.3%)"
		}
	},
	{
		desc = "空中支援使用剑鱼式进行一轮航空鱼雷攻击，使敌方全体减速33.3%，持续8秒",
		addition = {
			"",
			"33.3%(+3.3%)"
		}
	},
	{
		desc = "空中支援使用剑鱼式进行一轮航空鱼雷攻击，使敌方全体减速36.6%，持续8秒",
		addition = {
			"",
			"36.6%(+3.3%)"
		}
	},
	{
		desc = "空中支援使用剑鱼式进行一轮航空鱼雷攻击(威力+)，使敌方全体减速39.9%，持续8秒",
		addition = {
			"(威力+)",
			"39.9%(+3.3%)"
		}
	},
	{
		desc = "空中支援使用剑鱼式进行一轮航空鱼雷攻击(威力+)，使敌方全体减速43.2%，持续8秒",
		addition = {
			"(威力+)",
			"43.2%(+3.3%)"
		}
	},
	{
		desc = "空中支援使用剑鱼式进行一轮航空鱼雷攻击(威力+)，使敌方全体减速46.5%，持续8秒",
		addition = {
			"(威力+)",
			"46.5%(+3.3%)"
		}
	},
	{
		desc = "空中支援使用剑鱼式进行一轮航空鱼雷攻击(威力++)，使敌方全体减速49.8%，持续8秒",
		addition = {
			"(威力++)",
			"49.8%(+3.3%)"
		}
	},
	{
		desc = "空中支援使用剑鱼式进行一轮航空鱼雷攻击(威力++)，使敌方全体减速53.1%，持续8秒",
		addition = {
			"(威力++)",
			"53.1%(+3.3%)"
		}
	},
	{
		desc = "空中支援使用剑鱼式进行一轮航空鱼雷攻击(威力++)，使敌方全体减速56.4%，持续8秒",
		addition = {
			"(威力++)",
			"56.4%(+3.3%)"
		}
	},
	{
		desc = "空中支援使用剑鱼式进行一轮航空鱼雷攻击(威力++)，使敌方全体减速60.0%，持续8秒",
		addition = {
			"(威力++)",
			"60.0%(+3.3%)"
		}
	},
	desc_get = "空中支援使用剑鱼式进行一轮航空鱼雷攻击(满级威力++)，使敌方全体减速30.0%(满级60.0%)，持续8秒",
	name = "剑鱼出击！",
	init_effect = "",
	id = 10330,
	time = 0,
	picture = "",
	desc = "空中支援使用剑鱼式进行一轮航空鱼雷攻击$1，使敌方全体造成减速$2，持续8秒",
	stack = 1,
	color = "red",
	icon = 10330,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onAllInStrike"
			},
			arg_list = {
				skill_id = 10330,
				target = "TargetSelf"
			}
		}
	}
}
