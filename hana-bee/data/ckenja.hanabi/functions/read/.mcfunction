#スコアとかの準備
	scoreboard players set $tmp.i ckenja.hanabi 1
	scoreboard players operation $tmp.x ckenja.hanabi = $xl ckenja.hanabi
	scoreboard players operation $tmp.y ckenja.hanabi = $yl ckenja.hanabi
	scoreboard players operation $tmp.z ckenja.hanabi = $zl ckenja.hanabi

#Pos代入
#読み取りループ
	summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ckenja.hanabi"]}
	execute as @e[tag=ckenja.hanabi] run function ckenja.hanabi:read/entity

kill @e[tag=ckenja_hanabi]