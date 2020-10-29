#プレイヤーの視線先にaec

#aecが遠ければtp

#一定時間ごとに敵対雪玉
scoreboard players operation #tmp ckj01_data = @s ckenja_ghost2
scoreboard players operation #tmp ckj01_data %= #100 ckj01_data
execute if score #tmp ckj01_ghost matchas 0 run function ckenja_ghost:ability/snowball
