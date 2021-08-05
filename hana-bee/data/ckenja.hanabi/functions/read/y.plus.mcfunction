#座標yを+1、スコアyを-1、スコアxをリセット、スコアiを1にしたり-1にしたりする
tp @s ~ ~1 ~
scoreboard players remove $tmp.y ckenja.hanabi 1
scoreboard players operation $tmp.x ckenja.hanabi = $xl ckenja.hanabi
scoreboard players operation $tmp.i ckenja.hanabi = $tmp ckenja.hanabi
execute if score $tmp ckenja.hanabi matches 1 run scoreboard players set @s ckenja.hanabi -1
execute if score $tmp ckenja.hanabi matches -1 run scoreboard players set @s ckenja.hanabi 1