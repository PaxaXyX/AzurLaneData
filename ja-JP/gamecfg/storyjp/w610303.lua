return {
	mode = 2,
	once = true,
	id = "W610303",
	skipTip = false,
	scripts = {
		{
			paintingNoise = true,
			nameColor = "#a9f548",
			side = 2,
			dir = 1,
			actor = 900284,
			say = "スキャンが完了しました。さらなる資材の反応を検出しました。サルベージを続行しますか？",
			painting = {
				alpha = 0.3,
				time = 1
			},
			options = {
				{
					content = "資源をサルベージしよう",
					flag = 1
				},
				{
					content = "もう大丈夫",
					flag = 2
				}
			}
		}
	}
}
