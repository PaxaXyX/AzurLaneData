return {
	id = "S015",
	events = {
		{
			alpha = 0.271,
			style = {
				text = "前往<color=#ff7d36>倉庫</color>介面",
				mode = 2,
				dir = -1,
				posY = -102.56,
				posX = 0
			},
			ui = {
				pathIndex = -1,
				path = "OverlayCamera/Overlay/UIMain/toTop/frame/bottomPanel/btm/buttons_container/equipButton",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -38.49,
					posX = 42.4
				}
			}
		},
		{
			alpha = 0.207,
			style = {
				text = "去看看現有的<color=#ff7d36>設計圖紙</color>吧",
				mode = 2,
				dir = -1,
				posY = 0,
				posX = 0
			},
			ui = {
				pathIndex = -1,
				path = "OverlayCamera/Overlay/UIMain/topItems/bottom_back/types/design",
				triggerType = {
					2
				},
				fingerPos = {
					posY = -36.2,
					posX = 61.6
				}
			}
		},
		{
			alpha = 0,
			waitScene = "EquipmentDesignLayer",
			style = {
				text = "點擊製作按鈕<color=#ff7d36>製作裝備</color>吧！",
				mode = 2,
				dir = -1,
				posY = 0,
				posX = 210.07
			},
			ui = {
				pathIndex = -1,
				path = "UICamera/Canvas/UIMain/StoreHouseUI(Clone)/EquipmentDesignUI(Clone)/equipment_scrollview/equipment_grid/0/info/make_btn",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -50.32,
					posX = 23.88
				}
			}
		},
		{
			alpha = 0.342,
			style = {
				text = "就決定是你啦！點擊確定按鈕",
				mode = 2,
				dir = -1,
				posY = -2.69,
				posX = 202.1
			},
			ui = {
				pathIndex = -1,
				path = "/OverlayCamera/Overlay/UIMain/msg_panel/bg/confirm_btn",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -34.24,
					posX = 36.62
				}
			}
		}
	}
}
