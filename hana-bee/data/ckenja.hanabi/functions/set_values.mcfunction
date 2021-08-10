#花火の縮尺。10000で元の模様と同じ位
	scoreboard players set $size ckenja.hanabi 10000

#マイナス方向の端っこ
	scoreboard players set $x1 ckenja.hanabi 111
	scoreboard players set $y1 ckenja.hanabi 63
	scoreboard players set $z1 ckenja.hanabi -161

#プラス方向の端っこ
	scoreboard players set $x2 ckenja.hanabi 96
	scoreboard players set $y2 ckenja.hanabi 63
	scoreboard players set $z2 ckenja.hanabi -176

#代入用。Posに入れとく
	data merge storage ckenja.hanabi: {Pos:[0.0d,0.0d,0.0d]}
	execute store result storage ckenja.hanabi: Pos[0] double 1 run scoreboard players get $x1 ckenja.hanabi
	execute store result storage ckenja.hanabi: Pos[1] double 1 run scoreboard players get $y1 ckenja.hanabi
	execute store result storage ckenja.hanabi: Pos[2] double 1 run scoreboard players get $z1 ckenja.hanabi

#一辺の長さ
	scoreboard players operation $xl ckenja.hanabi = $x1 ckenja.hanabi
	scoreboard players operation $yl ckenja.hanabi = $y1 ckenja.hanabi
	scoreboard players operation $zl ckenja.hanabi = $z1 ckenja.hanabi

	scoreboard players operation $xl ckenja.hanabi -= $x2 ckenja.hanabi
	scoreboard players operation $yl ckenja.hanabi -= $y2 ckenja.hanabi
	scoreboard players operation $zl ckenja.hanabi -= $z2 ckenja.hanabi

#一辺の長さの半分
	scoreboard players set $2 ckenja.hanabi 2

	scoreboard players operation $xh ckenja.hanabi = $xl ckenja.hanabi
	scoreboard players operation $yh ckenja.hanabi = $yl ckenja.hanabi
	scoreboard players operation $zh ckenja.hanabi = $zl ckenja.hanabi

	scoreboard players operation $xh ckenja.hanabi /= $2 ckenja.hanabi
	scoreboard players operation $yh ckenja.hanabi /= $2 ckenja.hanabi
	scoreboard players operation $zh ckenja.hanabi /= $2 ckenja.hanabi