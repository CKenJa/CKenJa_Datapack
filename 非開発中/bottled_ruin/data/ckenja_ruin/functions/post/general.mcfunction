#登録された座標をごにょごにょする。再帰
scoreboard players set #i_ckenja_ruin ckj03_data 100
execute as @e[distance=..128,tag=ckenja_ruin_ruiner,limit=1] run function ckenja_ruin:post/loop
say ya