slot4[MULTRES] = Vector3(-105, 0, 38)
slot4[MULTRES] = Vector3(15, 0, 38)

return {
	map_id = 10001,
	id = 10501420,
	stages = {
		{
			stageIndex = 1,
			failCondition = 1,
			timeCount = 180,
			backGroundStageID = 1,
			passCondition = 1,
			totalArea = {
				-70,
				20,
				90,
				70
			},
			playerArea = {
				-70,
				20,
				37,
				68
			},
			enemyArea = {},
			mainUnitPosition = {
				{
					Vector3(-105, 0, 58),
					Vector3(-105, 0, 78),
					Vector3(-105, 0, 38)
				},
				[-1] = {
					Vector3(15, 0, 58),
					Vector3(15, 0, 78),
					Vector3(15, 0, 38)
				}
			},
			fleetCorrdinate = {
				-80,
				0,
				75
			},
			waves = {
				{
					triggerType = 1,
					waveIndex = 100,
					preWaves = {},
					triggerParams = {
						timeout = 0.5
					}
				},
				{
					triggerType = 1,
					waveIndex = 202,
					preWaves = {},
					triggerParams = {
						timeout = 13
					}
				},
				{
					triggerType = 1,
					waveIndex = 203,
					preWaves = {},
					triggerParams = {
						timeout = 28
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 101,
					conditionType = 1,
					preWaves = {
						100
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 105005,
							delay = 0,
							moveCast = true,
							corrdinate = {
								8,
								0,
								75
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 105035,
							delay = 0,
							chance = 0.5,
							corrdinate = {
								20,
								0,
								65
							},
							buffList = {
								60036
							}
						},
						{
							monsterTemplateID = 105012,
							delay = 0,
							moveCast = true,
							corrdinate = {
								19,
								0,
								55
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 105005,
							delay = 0,
							moveCast = true,
							corrdinate = {
								30,
								0,
								30
							},
							buffList = {
								8001,
								8007
							}
						}
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 102,
					conditionType = 1,
					preWaves = {
						101,
						202
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 105006,
							delay = 0,
							moveCast = true,
							corrdinate = {
								19,
								0,
								75
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 105012,
							delay = 0,
							moveCast = true,
							corrdinate = {
								8,
								0,
								55
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 105035,
							delay = 0,
							chance = 0.5,
							corrdinate = {
								20,
								0,
								55
							},
							buffList = {
								60036
							}
						},
						{
							monsterTemplateID = 105006,
							delay = 0,
							moveCast = true,
							corrdinate = {
								19,
								0,
								35
							},
							buffList = {
								8001,
								8007
							}
						}
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 103,
					conditionType = 0,
					preWaves = {
						102,
						101
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 105013,
							delay = 2,
							moveCast = true,
							corrdinate = {
								19,
								0,
								85
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 105003,
							team = 1,
							delay = 0,
							moveCast = true,
							corrdinate = {
								8,
								0,
								65
							}
						},
						{
							monsterTemplateID = 105035,
							delay = 0,
							moveCast = true,
							corrdinate = {
								20,
								0,
								65
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 105004,
							team = 1,
							delay = 0,
							moveCast = true,
							corrdinate = {
								8,
								0,
								45
							}
						},
						{
							monsterTemplateID = 105035,
							delay = 0,
							moveCast = true,
							corrdinate = {
								20,
								0,
								45
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 105013,
							delay = 0,
							moveCast = true,
							corrdinate = {
								19,
								0,
								45
							},
							buffList = {
								8001,
								8007
							}
						}
					}
				},
				{
					triggerType = 8,
					waveIndex = 900,
					preWaves = {
						103
					},
					triggerParams = {}
				}
			}
		}
	},
	fleet_prefab = {}
}
