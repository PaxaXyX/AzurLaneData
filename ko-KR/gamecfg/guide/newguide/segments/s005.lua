return {
	id = "S005",
	events = {
		{
			alpha = 0.276,
			style = {
				text = "아앗! 작전 실패... 확인 버튼을 눌러 돌아가자...",
				mode = 1,
				dir = 1,
				posY = 147.8,
				posX = 328.7
			},
			ui = {
				pathIndex = -1,
				path = "/OverlayCamera/Overlay/UIMain/Msgbox(Clone)/window/button_container/custom_button_1(Clone)",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -28.32,
					posX = 43.74
				}
			},
			code = {
				4
			}
		},
		{
			alpha = 0.276,
			style = {
				text = "이번 임무는 유니온 항모 함대의 작전 연습을 지원하는 거야.",
				mode = 1,
				dir = 1,
				posY = -50,
				posX = 250
			},
			ui = {
				pathIndex = -1,
				path = "OverlayCamera/Overlay/UIMain/toTop/frame/rightPanel/eventPanel/combatBtn",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -28.32,
					posX = 43.74
				}
			},
			code = {
				1,
				2
			}
		},
		{
			alpha = 0.276,
			style = {
				text = "메인 해역 선택",
				mode = 1,
				dir = -1,
				posY = -50,
				posX = 250
			},
			ui = {
				pathIndex = -1,
				path = "/UICamera/Canvas/UIMain/LevelMainScene(Clone)/entrance/enters/enter_main",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -28.32,
					posX = 43.74
				}
			},
			code = {
				1,
				2
			}
		},
		{
			alpha = 0.34,
			style = {
				text = "<color=#ff7d36>근해 연습</color>을 선택해줘.",
				mode = 2,
				dir = -1,
				posY = 0,
				posX = 0
			},
			ui = {
				pathIndex = -1,
				delay = 1.8,
				path = "UICamera/Canvas/UIMain/LevelMainScene(Clone)/float/levels/items/Chapter_101/main",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -30.85,
					posX = 176.13
				}
			}
		},
		{
			alpha = 0.513,
			style = {
				text = "스테이지의 상세정보가 표시되어있어.",
				mode = 2,
				dir = 1,
				posY = -410,
				posX = -446
			},
			ui = {
				pathIndex = -1,
				path = "/OverlayCamera/Overlay/UIMain/LevelStageInfoView(Clone)/panel/start_button",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -22.41,
					posX = 87.2
				}
			}
		},
		{
			alpha = 0.435,
			style = {
				text = "<color=#ff7d36>출격</color>을 눌러 작전해역으로 출격이야!",
				mode = 2,
				dir = 1,
				posY = -164,
				posX = 270
			},
			ui = {
				pathIndex = -1,
				path = "/OverlayCamera/Overlay/UIMain/LevelFleetSelectView(Clone)/panel/start_button",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -21.92,
					posX = 21.65
				}
			}
		}
	}
}
