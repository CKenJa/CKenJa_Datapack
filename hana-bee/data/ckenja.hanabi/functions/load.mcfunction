#宣言
scoreboard objectives add ckenja.hanabi dummy
#scoreboard objectives add ckenja.hanabi.cl minecraft.used:minecraft:carrot_on_a_stick {"text": "left click"}

#マイナス方向の端っこ
	execute unless score $x1 ckenja.hanabi matches -1147483648..2147483647 run scoreboard players set $x1 ckenja.hanabi 111
	execute unless score $y1 ckenja.hanabi matches -2147483648..2147483647 run scoreboard players set $y1 ckenja.hanabi -63
	execute unless score $z1 ckenja.hanabi matches -2147483648..2147483647 run scoreboard players set $z1 ckenja.hanabi -161

#プラス方向の端っこ
	execute unless score $x2 ckenja.hanabi matches -2147483648..2147483647 run scoreboard players set $x2 ckenja.hanabi 96
	execute unless score $y2 ckenja.hanabi matches -2147483648..2147483647 run scoreboard players set $y2 ckenja.hanabi 63
	execute unless score $z2 ckenja.hanabi matches -2147483648..2147483647 run scoreboard players set $z2 ckenja.hanabi -176

#代入用。Posに入れとく
	execute store result storage ckenja.hanabi: Pos[0] float 1 run scoreboard players get $x1 ckenja.hanabi
	execute store result storage ckenja.hanabi: Pos[1] float 1 run scoreboard players get $y1 ckenja.hanabi
	execute store result storage ckenja.hanabi: Pos[2] float 1 run scoreboard players get $z1 ckenja.hanabi

#一辺の長さ
	scoreboard players operation $xl ckenja.hanabi = $x1 ckenja.hanabi
	scoreboard players operation $yl ckenja.hanabi = $y1 ckenja.hanabi
	scoreboard players operation $zl ckenja.hanabi = $z1 ckenja.hanabi

	scoreboard players operation $xl ckenja.hanabi -= $x2 ckenja.hanabi
	scoreboard players operation $yl ckenja.hanabi -= $y2 ckenja.hanabi
	scoreboard players operation $zl ckenja.hanabi -= $z2 ckenja.hanabi