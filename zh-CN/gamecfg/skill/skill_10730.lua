return {
	uiEffect = "",
	name = "鬼神",
	cd = 0,
	picture = "0",
	desc = "鬼神",
	painting = 1,
	id = 10730,
	castCV = "skill",
	aniEffect = {
		effect = "jineng",
		offset = {
			0,
			-2,
			0
		}
	},
	effect_list = {
		{
			targetAniEffect = "",
			casterAniEffect = "",
			type = "BattleSkillAddBuff",
			target_choise = "TargetSelf",
			arg_list = {
				buff_id = 10731
			}
		}
	}
}
