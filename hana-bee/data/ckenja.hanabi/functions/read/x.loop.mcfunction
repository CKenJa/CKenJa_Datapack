#読み取り
setblock ~ ~ ~ acacia_log
#スコアxを-1
scoreboard players remove $tmp.x ckenja.hanabi 1
#スコアiが0なら
#   座標xを+1
execute if score $tmp.i ckenja.hanabi matches 1 run tp ~1 ~ ~
#スコアiが1なら
#   座標xを-1
execute if score $tmp.i ckenja.hanabi matches -1 run tp ~-1 ~ ~
#xスコアが-1なら
#   座標yを+1、スコアyを-1、スコアxをリセット、スコアiを1にしたり-1にしたりする
execute if score $tmp.x ckenja.hanabi matches -1 run function ckenja.hanabi:read/y.plus
#yスコアが0でないなら
#	最初に戻る
execute unless score $tmp.y ckenja.hanabi matches 0 run function ckenja.hanabi:read/x.loop